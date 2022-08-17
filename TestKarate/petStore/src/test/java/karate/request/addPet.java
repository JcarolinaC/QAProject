package karate.request;

import com.intuit.karate.junit5.Karate;


public class addPet {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/addPet.feature").relativeTo(getClass());

    }
}
