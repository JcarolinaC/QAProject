package karate.request.DeletePet;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
@KarateOptions(tags = {"@fourth"})
public class DeletePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/DeletePetFeature/4DeletePet.feature").relativeTo(getClass());
    }
}
