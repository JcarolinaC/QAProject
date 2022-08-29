package karate.request.CreateUser;

import com.intuit.karate.junit5.Karate;

public class CreateUser {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/CreateUserFeature/createUser.feature").relativeTo(getClass());

    }
}
