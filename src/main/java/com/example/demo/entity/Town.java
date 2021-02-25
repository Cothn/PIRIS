package com.example.demo.entity;

import org.springframework.context.annotation.Primary;

import javax.persistence.*;

@Entity
@Table(name = "town")
public class Town {

    @Id
    @GeneratedValue
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "title", length = 45, nullable = false)
    private String title;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getId() {
        return id;
    }
}
