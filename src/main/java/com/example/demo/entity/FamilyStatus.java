package com.example.demo.entity;

import javax.persistence.*;

@Entity
@Table(name = "familyStatus")
public class FamilyStatus {

    @Id
    @GeneratedValue
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "title", length = 45, nullable = false)
    private String title;

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
