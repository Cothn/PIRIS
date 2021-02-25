package com.example.demo.service;

import com.example.demo.entity.Client;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ClientService {

    public List<Client> allClients();


    public void add(Client client);


    public void delete(Client client);


    public void edit(Client client);


    public Client getById(int id);
}