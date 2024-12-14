package com.ctr;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Impiegato;

	@Controller
	@RequestMapping("impiegato")
	public class ImpiegatoCtr {

		//http://localhost:8080/GestionaleJavaBaseSpring-0.0.1-SNAPSHOT/impiegato/findImpiegatoById
		@GetMapping("findImpiegatoById")
		public String findImpiegatoById(Model m) {
			Impiegato e = new Impiegato();
			e.setCognome("Pagano");
			e.setNome("Antonio");
			e.setMatricola(1);
		
			m.addAttribute("impiegato", e);
			return "risultatoFindImpiegatoById";

		}
		@GetMapping("/showFindImpiegatoForm")
		public String showFindImpiegatoForm(Model model) {
		    model.addAttribute("impiegato", new Impiegato()); // Ensure this matches the model attribute expected by your form
		    return "findImpiegatoById";
		}

		@GetMapping("/addImpiegato")
		public String addImpiegatoForm(Model model) {
			model.addAttribute("impiegato", new Impiegato()); // This object is bound to the form
			return "addImpiegato";
		}

		@PostMapping("/saveImpiegato")
		public String saveImpiegato(Impiegato impiegato) {
		
			System.out.println(impiegato.getNome() + " " + impiegato.getCognome());

			return "addImpiegatoOk";
		}

	}
