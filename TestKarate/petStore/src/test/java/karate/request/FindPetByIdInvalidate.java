package karate.request;

import com.intuit.karate.junit5.Karate;

public class FindPetByIdInvalidate {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/findPetByIdInvlidate.feature").relativeTo(getClass());
    }
}