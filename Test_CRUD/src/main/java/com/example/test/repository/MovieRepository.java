package com.example.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.test.model.Movie;

public interface MovieRepository extends JpaRepository<Movie, Long> {

}	