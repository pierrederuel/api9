package fr.enelia.dashboardapi.services;

import fr.enelia.dashboardapi.entities.Token;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public interface TokenService {

    Token createToken(Token token);
    Optional<Token> getTokenByFCMToken(String fcmToken);
    void removeToken(Token token);
}
