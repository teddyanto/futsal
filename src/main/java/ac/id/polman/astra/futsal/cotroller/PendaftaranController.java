package ac.id.polman.astra.futsal.cotroller;

import ac.id.polman.astra.futsal.model.MsAkun;
import ac.id.polman.astra.futsal.model.MsUser;
import ac.id.polman.astra.futsal.service.AkunService;
import ac.id.polman.astra.futsal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import java.time.LocalDateTime;

@Controller
public class PendaftaranController {
    @Autowired
    UserService userService;

    @Autowired
    AkunService akunService;

    @GetMapping("/DaftarUser")
    public String gotoAdd(Model model){
        model.addAttribute("userObj", new MsUser());
        model.addAttribute("akunObj", new MsAkun());
        return "pendaftaran/adduser";
    }

    @GetMapping("/MenuAdmin")
    public String Admin(Model model){
        return "template/admines";
    }

    @PostMapping("/addDaftarUser")
    public String addUser(MsUser msUser, MsAkun msAkun) {
        msUser.setIdAkun(1);
        msUser.setFoto("");
        msUser.setCreaby("user");
        msUser.setCreadate(LocalDateTime.now());
        msUser.setModiby("");
        msUser.setModidate(LocalDateTime.now());
        msUser.setStatus(1);
        userService.saveUser(msUser);

        msAkun.setIdRole(1);
        msAkun.setCreaby("user");
        msAkun.setCreadate(LocalDateTime.now());
        msAkun.setModiby("");
        msAkun.setModidate(LocalDateTime.now());
        msAkun.setStatus(1);
        akunService.saveAkun(msAkun);

        return "redirect:/User";
    }
}
