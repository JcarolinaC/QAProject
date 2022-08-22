package karate.request;
import com.intuit.karate.junit5.Karate;
public class UpDate {
    @Karate.Test
    Karate testSample() {

        return Karate.run("classpath:karate/request/3UpDate.feature").relativeTo(getClass());
    }
}