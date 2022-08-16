package karate.request;

import com.intuit.karate.junit5.Karate;


public class addPet {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:request/addPet.feature").relativeTo(getClass());

    }
}
