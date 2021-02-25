package com.example.demo.controller;

import com.example.demo.entity.Client;
import com.example.demo.service.implementation.ClientServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("clients")
public class ClientController {

    private ClientServiceImpl clientService;

    @Autowired
    public void setClientService(ClientServiceImpl clientService) {
        this.clientService = clientService;
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String showBankAccounts(Model model) {
        List<Client> clients = clientService.allClients();

        model.addAttribute("clientsInfos", clients);

        return "clientsPage";
    }
}
