package karate.request;

import com.intuit.karate.junit5.Karate;

public class DeletePetInvalidate {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/DeletePetInvalidate.feature").relativeTo(getClass());

    }
}
