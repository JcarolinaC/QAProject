package karate.request;

import com.intuit.karate.junit5.Karate;

public class UpDateInvalidate {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/upDateInvalidate.feature").relativeTo(getClass());
    }
}

