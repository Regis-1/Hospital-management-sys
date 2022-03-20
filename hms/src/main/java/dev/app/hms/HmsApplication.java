package dev.app.hms;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dev.app.hms.Models.TestEntity;
import dev.app.hms.Repo.TestRepository;

@RestController
@SpringBootApplication
public class HmsApplication {

	@Autowired
	TestRepository tutorialRepository;
	@GetMapping("/testdb")
	public ResponseEntity<List<TestEntity>> getAllTutorials() {
		try {
			List<TestEntity> tutorials = new ArrayList<TestEntity>();
			tutorialRepository.findAll().forEach(tutorials::add);;
			return new ResponseEntity<>(tutorials, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@RequestMapping("/")
	public String home() {
		return "Hello Spring boot!";
	}

	public static void main(String[] args) {
		SpringApplication.run(HmsApplication.class, args);
	}

}
