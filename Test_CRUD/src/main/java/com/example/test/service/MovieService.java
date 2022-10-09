package com.example.test.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.model.Movie;
import com.example.test.repository.MovieRepository;

@Service
public class MovieService {
	
	@Autowired
	private MovieRepository movieRepository;
	
	public Movie createMovie (Movie movie) {
		return movieRepository.save(movie);
	}

	public List<Movie> getAllMovies () {
		return movieRepository.findAll();
	}
	
	public Optional<Movie> getMovieById (Long id) {
		return movieRepository.findById(id);
	}
	
	public Boolean deleteMovie (Movie movie) {
		try {
			movieRepository.delete(movie);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
