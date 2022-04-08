package com.ruben.springMvc.service;

import java.util.List;

import com.ruben.springMvc.model.Job;
import com.ruben.springMvc.repository.JobRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JobService {
    
    @Autowired
    private JobRepository jRepository;

    public List<Job> findAll(){
        return (List<Job>)jRepository.findAll();
    }
}
