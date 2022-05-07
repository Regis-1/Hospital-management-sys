package dev.app.hms;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dev.app.hms.Models.Patient;
import dev.app.hms.Models.TestEntity;
import dev.app.hms.Repo.PatientRepo;
import dev.app.hms.Repo.TestRepository;

import dev.app.hms.Models.TestEntity2;
import dev.app.hms.Repo.TestRepository2;

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

	@Autowired
	PatientRepo patientRepo;
	@GetMapping("/patient")
	public ResponseEntity<List<Patient>> getAllPatients() {
		try {
			List<Patient> patients = new ArrayList<Patient>();
			patientRepo.findAll().forEach(patients::add);;
			return new ResponseEntity<>(patients, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

		@PostMapping("/patient")
		public ResponseEntity<Patient> create(@RequestBody Patient patient) {
			try {
				Patient savedItem = patientRepo.save(patient);
				return new ResponseEntity<>(savedItem, HttpStatus.CREATED);
			} catch (Exception e) {
				return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
			}
		}
	
	

	
	
	
	@Autowired
	TestRepository2 tutorialRepository2;
	@GetMapping("/user")
	public ResponseEntity<List<TestEntity2>> getAllTutorials2() {
		try {
			List<TestEntity2> users = new ArrayList<TestEntity2>();
			tutorialRepository2.findAll().forEach(users::add);;
			return new ResponseEntity<>(users, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	

	@RequestMapping("/")
	public String home() {
		return "Hello Spring boot! Am I testing the code or is it testing me?";
	}

	public static void main(String[] args) {
		SpringApplication.run(HmsApplication.class, args);
	}

}
