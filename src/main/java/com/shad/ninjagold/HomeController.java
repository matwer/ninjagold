package com.shad.ninjagold;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	// set member variables
	private Integer gold = 0;
	private ArrayList<String> addGold = new ArrayList<String>();
	
	@RequestMapping("/")
	public String index() {
		// render the home page
		return "index.jsp";
	}
	
	@RequestMapping(value="/farm",method=RequestMethod.POST)
	public String farm(HttpSession session) {
		// Rewards 10-20 gold
		Integer farmGold = new Random().nextInt(10 + 1) + 10;
		gold += farmGold;
		session.setAttribute("gold", gold);
		addGold.add("You entered a farm and earned " + farmGold + " gold");
		session.setAttribute("addGold", addGold);
		return "redirect:/";
	}
	
	@RequestMapping(value="/cave",method=RequestMethod.POST)
	public String cave(HttpSession session, Model model) {
		// Rewards 5-10 gold
		Integer caveGold = new Random().nextInt(5 + 1) + 5;
		gold += caveGold;
		session.setAttribute("gold", gold);
		addGold.add("You entered a cave and earned " + caveGold + " gold");
		session.setAttribute("addGold", addGold);
		return "redirect:/";	
	}
	
	@RequestMapping(value="/house",method=RequestMethod.POST)
	public String house(HttpSession session, Model model) {
		// Rewards 2-5 gold
		Integer houseGold = new Random().nextInt(2 + 1) + 3;
		gold += houseGold;
		session.setAttribute("gold", gold);
		addGold.add("You entered a house and earned " + houseGold + " gold");
		session.setAttribute("addGold", addGold);
		return "redirect:/";	
	}
	
	@RequestMapping(value="/casino",method=RequestMethod.POST)
	public String casino(HttpSession session, Model model) {
		// Rewards -50 to 50
		Integer casinoGold = new Random().nextInt(50 + 10) - 50;
		
		// add/remove gold and update the amount of gold
		gold += casinoGold;
		session.setAttribute("gold", gold);
		
		// if you your earned gold, 
		if (casinoGold > 0) {
			addGold.add("You entered a casino and earned " + casinoGold + " gold");			
		} else {
			addGold.add("You entered a casino and lost " + casinoGold + " gold");
		}
		session.setAttribute("addGold", addGold);
		return "redirect:/";	
	}
	
}
