package fr.enelia.dashboardapi.controllers;

import fr.enelia.dashboardapi.entities.Role;
import fr.enelia.dashboardapi.entities.Token;
import fr.enelia.dashboardapi.entities.Utilisateur;
import fr.enelia.dashboardapi.services.NotificationService;
import fr.enelia.dashboardapi.services.TokenService;
import fr.enelia.dashboardapi.services.UtilisateurService;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.management.Notification;
import java.util.Optional;

@RestController
public class NotificationController {

    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(NotificationController.class);

    @Autowired
    private UtilisateurService utilisateurService;
    @Autowired
    private NotificationService notificationService;
    @Autowired
    private TokenService tokenService;

/*    @PostMapping(value = "register-token")
    public Utilisateur registerToken(@RequestBody Utilisateur utilisateur) {
        String token = utilisateur.getToken();
        utilisateur = utilisateurService.getUtilisateurById(utilisateur.getId());
        utilisateur.setToken(token);
        utilisateur = utilisateurService.updateUtilisateur(utilisateur);
        for (Role role : utilisateur.getRoles()) {
            role.setUtilisateurs(null);
        }
        return utilisateur;
    }
*/
    @PostMapping(value = "register-token")
    public Utilisateur registerToken(@RequestBody Utilisateur utilisateur) {

        Optional<Token> optToken = tokenService.getTokenByFCMToken(utilisateur.getToken());

        if (optToken.isPresent()) {
            //On supprime le token déjà présent
            tokenService.removeToken(optToken.get());
        }

        Token token = new Token();
        token.setFcmToken(utilisateur.getToken());
        utilisateur = utilisateurService.getUtilisateurById(utilisateur.getId());
        token.setUtilisateur(utilisateur);
        token = tokenService.createToken(token);
        utilisateur.getTokens().add(token);
        //utilisateur = utilisateurService.updateUtilisateur(utilisateur);
        utilisateur = utilisateurService.getUtilisateurById(utilisateur.getId());
        for (Role role : utilisateur.getRoles()) {
            role.setUtilisateurs(null);
        }
        for (Token t : utilisateur.getTokens()) {
            t.setUtilisateur(null);
        }
        return utilisateur;
    }

    @GetMapping(value = "send-notification")
    public void sendNotification() {
        JSONObject data = new JSONObject();
        data.put("type", "vente2");
        data.put("prospecteur", "Prospecteur");
        data.put("commercial1", "Commercial1");
        data.put("commercial2", "Commercial2");
        data.put("montant", 20000);
        notificationService.sendNotification("Titre de la notif", "Body de la notif", utilisateurService.getUtilisateurs(), data);
    }
}
