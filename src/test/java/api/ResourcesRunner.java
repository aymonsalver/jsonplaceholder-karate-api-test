package api;

import com.intuit.karate.junit5.Karate;


public class ResourcesRunner {

    @Karate.Test
    Karate testResources() {
        return Karate.run("classpath:api/resources.feature");
    }
}
