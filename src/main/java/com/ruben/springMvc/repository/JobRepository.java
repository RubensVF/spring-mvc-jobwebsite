package com.ruben.springMvc.repository;

import com.ruben.springMvc.model.Job;

import org.springframework.data.repository.CrudRepository;

public interface JobRepository extends CrudRepository<Job,Long> {
    
}
