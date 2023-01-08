package com.boots.controller;
import java.util.Date;

import com.boots.entity.Cargo;
import com.boots.entity.User;
import com.boots.repository.CargoRepository;
import com.boots.service.UserService;
import com.fasterxml.jackson.databind.annotation.JsonAppend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class CargoController {


    @Autowired
    private CargoRepository cargoRepository;




    @GetMapping("/cargo")
    public String cargoList(Map<String , Object> model) {
        Iterable<Cargo> cargos = cargoRepository.findAll();
        model.put("cargo", cargos);
        return "cargo";
    }

    @PostMapping("/cargo")
    public String addCargo(@RequestParam String cargoName, @RequestParam Integer cargoQuan ,@RequestParam String userName ,Map<String , Object> model){
        Date d = new Date();
        if(cargoQuan!=null) {
            Cargo cargo = new Cargo(cargoName, cargoQuan, d, userName );
            cargoRepository.save(cargo);
        } else {
            return "error";
        }
        return "cargo";
    }


}
