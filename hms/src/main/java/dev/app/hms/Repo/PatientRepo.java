package dev.app.hms.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import dev.app.hms.Models.Patient;

public interface PatientRepo extends JpaRepository<Patient, Long> {
  
}