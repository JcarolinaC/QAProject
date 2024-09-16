package karate.request.UpDate;

import com.intuit.karate.junit5.Karate;

public class UpDate {
    @Karate.Test
    Karate testSample() {

        return Karate.run("classpath:karate/request/UpDatefeature/UpDate.feature").relativeTo(getClass());
    }
}