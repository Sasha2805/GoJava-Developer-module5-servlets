package com.company.model.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "companies")
public class Company {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "info")
    private String info;

    @ManyToMany(fetch = FetchType.EAGER,
            targetEntity = Project.class,
            cascade = {CascadeType.MERGE})
    @JoinTable(name = "company_projects",
            joinColumns = @JoinColumn(name = "company_id"),
            inverseJoinColumns = @JoinColumn(name = "project_id"))
    private Set<Project> projects = new HashSet<>(0);

    public Company(){}

    public Company(String name, String info) {
        this.name = name;
        this.info = info;
    }
}
