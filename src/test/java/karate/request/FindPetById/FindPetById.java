package karate.request.FindPetById;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
@KarateOptions(tags = {"@second"})

public class FindPetById {

    @Karate.Test
    Karate testSample() {return Karate.run("classpath:karate/request/FindPetByIdFeature/FindPetByI.feature").relativeTo(getClass());
    }
}

