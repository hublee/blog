import com.hlib.entity.Photo;
import com.hlib.service.PhotoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by hlib on 2016/3/14 0014.
 */
@ContextConfiguration(locations = {"classpath*:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestAdd {

    @Autowired
    private PhotoService photoService;

    @Test
    public void addPhoto(){

        Photo photo = new Photo();

        photo.setIcon("/attaches/icon/01");
        photo.setPicName("头像17");
        Photo rtPt = photoService.add(photo);
        System.out.println("返回id: " + rtPt.getId());
    }

}
