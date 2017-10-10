package mvc.contollers;

import mvc.models.IndexModel;
import mvc.repositories.IndexRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
    @Autowired
    private IndexRepository indexRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexGet(Model model) {

        //bind a new IndexModel to the "/" view's contact attribute
        model.addAttribute("index", new IndexModel());
        return "index";
    }

    @RequestMapping(value="/", method=RequestMethod.POST)
    public String indexPost(Model model, @ModelAttribute("index") IndexModel indexModel) {

        indexRepository.save(indexModel);
        System.out.println(indexModel.toString());

        return "redirect:/";
    }
}
