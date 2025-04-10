package hkmu.wadd.courseportal.controller;

import hkmu.wadd.courseportal.model.Course;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        // Create sample course data
        List<Course> courses = new ArrayList<>();
        courses.add(new Course("Java Programming Basics", "Learn fundamental syntax and concepts of Java language"));
        courses.add(new Course("Web Application Development", "Develop modern web applications using Spring Boot"));
        courses.add(new Course("Database Systems", "Relational database design and SQL queries"));
        courses.add(new Course("Mobile App Development", "Learn Android application development"));
        courses.add(new Course("Cloud Computing Technologies", "Understand cloud platform architecture and deployment strategies"));
        courses.add(new Course("Introduction to AI", "Basics of machine learning and deep learning"));

        // Add course data to the model
        model.addAttribute("courses", courses);

        return "index";
    }
}