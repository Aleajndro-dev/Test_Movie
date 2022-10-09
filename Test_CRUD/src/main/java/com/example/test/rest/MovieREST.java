package com.example.test.rest;

import java.net.URI;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.test.model.Movie;
import com.example.test.service.MovieService;

@RestController
@RequestMapping("/api/movie")
public class MovieREST {
	
	@Autowired
	private MovieService movieService;
	
	
	@PostMapping("/save")
	private ResponseEntity<Movie> saveMovie (@RequestBody Movie movie){
		Movie movieSaved = movieService.createMovie(movie);
		
		try {
			return ResponseEntity.created(new URI("/api/persona"+movieSaved.getId())).body(movieSaved);
			
		}catch (Exception e) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
	}
	
	
	@GetMapping("/list")
	private ResponseEntity<List<Movie>> listMovies (){
		return ResponseEntity.ok(movieService.getAllMovies());
	}
	
	@GetMapping (value = "get/{id}")
	private ResponseEntity<Optional<Movie>> getOneMovie (@PathVariable ("id") Long id){
		return ResponseEntity.ok(movieService.getMovieById(id));
	}
	
	
	@DeleteMapping("/delete")
	private ResponseEntity<Void> deleteMovie (@RequestBody Movie movie){
		Boolean succes= movieService.deleteMovie(movie);
		if(succes)
			return ResponseEntity.ok().build();
		else
			return ResponseEntity.badRequest().build();
	}
	

}
