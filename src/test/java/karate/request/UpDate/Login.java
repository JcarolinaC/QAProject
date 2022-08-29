package karate.request.UpDate;

import com.intuit.karate.junit5.Karate;

public class Login {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/LoginFeature/login.feature").relativeTo(getClass());

    }
}
