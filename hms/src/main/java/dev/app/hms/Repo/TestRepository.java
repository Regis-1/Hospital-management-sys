package dev.app.hms.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import dev.app.hms.Models.TestEntity;

public interface TestRepository extends JpaRepository<TestEntity, Long> {
  
}