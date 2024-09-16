package karate.request.FindPetById;


import com.intuit.karate.junit5.Karate;


public class FindPetById {

    @Karate.Test
    Karate testSample() {return Karate.run("classpath:karate/request/FindPetByIdFeature/FindPetByI.feature").relativeTo(getClass());
    }
}

