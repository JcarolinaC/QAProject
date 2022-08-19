package karate.request;

import com.intuit.karate.junit5.Karate;

public class AddPetInvalidate {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/addPetInvalidate.feature").relativeTo(getClass());
    }
}
