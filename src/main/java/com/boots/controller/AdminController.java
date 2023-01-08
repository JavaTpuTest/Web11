package com.boots.controller;

import com.boots.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
    @Autowired
    private UserService userService;
    @GetMapping("/admin")
    public String userList(Model model) {
        model.addAttribute("allUsers", userService.allUsers());
        return "admin";
    }

    @PostMapping("/admin")
    public String  deleteUser(@RequestParam(required = true, defaultValue = "" ) Long userId,
                              @RequestParam(required = true, defaultValue = "" ) String action,
                              Model model) {
        if (action.equals("delete")){
            userService.deleteUser(userId);
        }
        return "redirect:/admin";
    }

    @GetMapping("/admin/gt/{userId}")
    public String  gtUser(@PathVariable("userId") Long userId, Model model) {
        model.addAttribute("allUsers", userService.usergtList(userId));
        return "admin";
    }

    @GetMapping("/cargoList")
    public String cargoList(Model model) {
        model.addAttribute("allCargo", userService.allCargo());
        return "cargoList";
    }


    @PostMapping("/cargoList")
    public String  deleteCargo(@RequestParam(required = true, defaultValue = "" ) Long cargoId,
                              @RequestParam(required = true, defaultValue = "" ) String action,
                              Model model) {
        if (action.equals("delete")){
            userService.deleteCargo(cargoId);
        }
        if (action.equals("find")){
            userService.findCargoById(cargoId);
        }
        return "redirect:/cargoList";
    }

    @GetMapping("/cargoList/gt/{cargoId}")
    public String  gtCargo(@PathVariable("cargoId") Long cargoId, Model model) {
        model.addAttribute("allCargo", userService.cargoList(cargoId));
        return "cargoList";
    }



}