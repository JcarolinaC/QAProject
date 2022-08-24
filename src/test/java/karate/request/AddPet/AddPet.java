package karate.request.AddPet;

import com.intuit.karate.junit5.Karate;

public class AddPet {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/AddPetFeature/AddPet.feature").relativeTo(getClass());

    }
}