package project.innovators.recommendation;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication//(exclude={DataSourceAutoConfiguration.class})
public class RecommendationApplication {


	public static void main(String[] args) {
		SpringApplication.run(RecommendationApplication.class, args);
	}

}
