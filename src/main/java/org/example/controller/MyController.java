package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails() {
        return "ask-emp-details-view";
    }

    @RequestMapping( "/showDetails" )
    public String showEmpDetails(@RequestParam("employeeName") String employeeName, Model model) {
        employeeName = "Mrs. " + employeeName + "!";
        model.addAttribute("nameAttribute", employeeName);

        return "show-emp-details-view";
    }

}
