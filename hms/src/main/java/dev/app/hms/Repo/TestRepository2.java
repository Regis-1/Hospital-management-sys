package dev.app.hms.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import dev.app.hms.Models.TestEntity2;

public interface TestRepository2 extends JpaRepository<TestEntity2, Long> {
  
}