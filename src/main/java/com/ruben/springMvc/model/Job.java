package com.ruben.springMvc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="jobs")
public class Job {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String company;
    private String img;
    private String description;
    private Date date;
    private String status;
    private int distinguished;
    private String details;
    private double salary;
    @OneToOne
    @JoinColumn(name = "category")
    private Category category;

    
    public Job() {
    }

    public Job(String name, String company, String description, Date date, String status, int distinguished,
            String details, double salary, Category category,String img) {
        this.name = name;
        this.img = img;
        this.company = company;
        this.description = description;
        this.date = date;
        this.status = status;
        this.distinguished = distinguished;
        this.details = details;
        this.salary = salary;
        this.category = category;
    }


    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getCompany() {
        return company;
    }
    public void setCompany(String company) {
        this.company = company;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public int getDistinguished() {
        return distinguished;
    }
    public void setDistinguished(int distinguished) {
        this.distinguished = distinguished;
    }
    public String getDetails() {
        return details;
    }
    public void setDetails(String details) {
        this.details = details;
    }
    public double getSalary() {
        return salary;
    }
    public void setSalary(double salary) {
        this.salary = salary;
    }
    public Category getCategory() {
        return category;
    }
    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Job [category=" + category + ", company=" + company + ", date=" + date + ", description=" + description
                + ", details=" + details + ", distinguished=" + distinguished + ", id=" + id + ", name=" + name
                + ", salary=" + salary + ", status=" + status + "]";
    }
  
}
