package crudUser;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Order;

public class RunnerforExercise {

    @Karate.Test
    @Order(1)
    Karate testExercise1() {
        return Karate.run("classpath:crudUser/1_user-post.feature").tags("@Exercise1");
    }
    @Karate.Test
    @Order(2)
    Karate testExercise2() {
        return Karate.run("classpath:crudUser/2_user-post-login.feature").tags("@Exercise2");
    }
}
