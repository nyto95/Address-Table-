package com.address.controller;

import com.address.entity.Contact;
import com.address.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
public class MainController {


    @Autowired
    private ContactRepository contactRepository;

    @GetMapping(path = "/generate")
    private List<Contact> generateDB() {
        List<Contact> contacts = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            Contact contact = new Contact();
            contact.setEmail("contact" + i + "@email.com");
            contact.setFirstName("firstName" + i);
            contact.setLastName("lastName" + i);
            contacts.add(contact);
        }

        return contactRepository.saveAll(contacts);
    }

    @GetMapping(path = "/list")
    public List<Contact> getContact() {
        return contactRepository.findAll();
    }

    @PostMapping(path = "/delete")
    public int delete(@RequestBody Contact contact) {
        contactRepository.delete(contact);
        return 1;
    }

    @PostMapping(path = "/save")
    public Contact save(@RequestBody Contact contact) {
        return contactRepository.save(contact);
    }

}
