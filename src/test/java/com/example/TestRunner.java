import com.intuit.karate.junit5.Karate;

class TestRunner {
    @Karate.Test
    Karate testAllFeatures() {
        return Karate.run().relativeTo(getClass());
    }
}