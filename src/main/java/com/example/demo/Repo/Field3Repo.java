package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Entitty.Field3;

@Repository
public interface Field3Repo extends JpaRepository<Field3, Long> {

}
