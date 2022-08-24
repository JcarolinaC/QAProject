package karate.request.DeletePet;

import com.intuit.karate.junit5.Karate;

public class DeletePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/DeletePetFeature/4DeletePet.feature").relativeTo(getClass());
    }
}
