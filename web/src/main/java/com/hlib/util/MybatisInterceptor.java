package com.hlib.util;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.builder.SqlSourceBuilder;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.reflection.DefaultReflectorFactory;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.ReflectorFactory;
import org.apache.ibatis.reflection.factory.DefaultObjectFactory;
import org.apache.ibatis.reflection.factory.ObjectFactory;
import org.apache.ibatis.reflection.wrapper.DefaultObjectWrapperFactory;
import org.apache.ibatis.reflection.wrapper.ObjectWrapperFactory;
import org.apache.ibatis.scripting.xmltags.DynamicContext;
import org.apache.ibatis.scripting.xmltags.SqlNode;
import org.apache.ibatis.session.Configuration;

import java.util.Map;
import java.util.Properties;

/**
 * sql修改插件，新增数据是去掉id字段，解决sqlServer 显式插入id问题
 */
@Intercepts({
  @Signature(type = Executor.class, method = "update", args = { MappedStatement.class, Object.class })})
public class MybatisInterceptor implements Interceptor {

 private Properties properties;

 private static final ObjectFactory DEFAULT_OBJECT_FACTORY2 = new DefaultObjectFactory();
 private static final ObjectWrapperFactory DEFAULT_OBJECT_WRAPPER_FACTORY2 = new DefaultObjectWrapperFactory();

 private static final ReflectorFactory DEFAULT_RELECTOR_FACTORY = new DefaultReflectorFactory();

 public Object intercept(Invocation invocation) throws Throwable {
  Object parameter = null;
  if (invocation.getArgs().length > 1) {
   parameter = invocation.getArgs()[1];
  }

  MappedStatement mappedStatement = (MappedStatement) invocation.getArgs()[0];
  String resource = mappedStatement.getResource();
  if(StringUtils.isNotBlank(resource)){
    if(resource.contains(".xml")) return invocation.proceed();
  }
  System.out.println("映射文件： "+mappedStatement.getResource());
  BoundSql boundSql = mappedStatement.getBoundSql(parameter);
  Configuration configuration = mappedStatement.getConfiguration();
  //修改参数值
  MetaObject metaMappedStatement = MetaObject.forObject(mappedStatement, DEFAULT_OBJECT_FACTORY2,DEFAULT_OBJECT_WRAPPER_FACTORY2,DEFAULT_RELECTOR_FACTORY);
  SqlNode sqlNode = (SqlNode) metaMappedStatement.getValue("sqlSource.rootSqlNode");
  boundSql=getBoundSql(configuration, boundSql.getParameterObject(),sqlNode);
  MappedStatement newMs = copyFromMappedStatement(mappedStatement.getId(), mappedStatement,new BoundSqlSqlSource(boundSql));
  invocation.getArgs()[0] = newMs;
  return invocation.proceed();
 }

 public static class BoundSqlSqlSource implements SqlSource {
  BoundSql boundSql;

  public BoundSqlSqlSource(BoundSql boundSql) {
   this.boundSql = boundSql;
  }

  public BoundSql getBoundSql(Object parameterObject) {
   return boundSql;
  }
 }

 private MappedStatement copyFromMappedStatement(String newId, MappedStatement ms, SqlSource newSqlSource) {
  MappedStatement.Builder builder = new MappedStatement.Builder(ms.getConfiguration(), newId, newSqlSource, ms.getSqlCommandType());
  builder.resource(ms.getResource());
  builder.fetchSize(ms.getFetchSize());
  builder.statementType(ms.getStatementType());
  builder.keyGenerator(ms.getKeyGenerator());
//		logger.info("" + ms.getKeyProperties().length);
  builder.keyProperty(ms.getKeyProperties() != null &&  ms.getKeyProperties().length > 1 ?ms.getKeyProperties()[0]:"");
  builder.timeout(ms.getTimeout());
  builder.parameterMap(ms.getParameterMap());
  builder.resultMaps(ms.getResultMaps());
  builder.resultSetType(ms.getResultSetType());
  builder.cache(ms.getCache());
  builder.flushCacheRequired(ms.isFlushCacheRequired());
  builder.useCache(ms.isUseCache());
  return builder.build();
 }

 public static BoundSql getBoundSql(Configuration configuration,Object parameterObject,SqlNode sqlNode) {
  DynamicContext context = new DynamicContext(configuration, parameterObject);
  //DynamicContext context = new DynamicContext(mappedStatement.getConfiguration(), boundSql.getParameterObject());
  //mappedStatement.getSqlSource().
  sqlNode.apply(context);
  String countextSql=context.getSql();
//      System.out.println("context.getSql():"+countextSql);
  SqlSourceBuilder sqlSourceParser = new SqlSourceBuilder(configuration);
  Class<?> parameterType = parameterObject == null ? Object.class : parameterObject.getClass();
  String sql=modifyLikeSql(countextSql, parameterObject);
  SqlSource sqlSource = sqlSourceParser.parse(sql, parameterType, context.getBindings());
  BoundSql boundSql = sqlSource.getBoundSql(parameterObject);
  for (Map.Entry<String, Object> entry : context.getBindings().entrySet()) {
   boundSql.setAdditionalParameter(entry.getKey(), entry.getValue());
  }
  return boundSql;
 }

 //
 public static String modifyLikeSql(String sql,Object parameterObject){
   return sql.replaceAll(",id","").replaceAll(",#\\{id\\}","");
 }

 public Object plugin(Object target) {
  return Plugin.wrap(target, this);
 }

 public void setProperties(Properties properties0) {
  this.properties = properties0;
 }
}