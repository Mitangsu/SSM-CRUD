package MyTest;

import com.kuang.pojo.Books;
import com.kuang.service.BookService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author Su
 * @create 2022-04-20 2:13
 */
public class TestDemo01 {
    @Test
    public void test1(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService impl = (BookService) context.getBean("BookServiceImpl");
        for (Books books : impl.queryAllBook()) {
            System.out.println(books);
        }
    }
}
