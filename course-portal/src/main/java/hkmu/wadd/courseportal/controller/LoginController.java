package hkmu.wadd.courseportal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String processLogin(@RequestParam String username,
                               @RequestParam String password,
                               RedirectAttributes redirectAttributes) {
        // This is a simple example - in a real application you would use proper authentication
        if ("admin".equals(username) && "password".equals(password)) {
            // Successful login
            return "redirect:/";
        } else {
            // Failed login
            redirectAttributes.addFlashAttribute("error", "Invalid username or password");
            return "redirect:/login";
        }
    }

    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }
}