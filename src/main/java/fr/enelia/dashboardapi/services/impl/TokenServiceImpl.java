package fr.enelia.dashboardapi.services.impl;

import fr.enelia.dashboardapi.entities.Token;
import fr.enelia.dashboardapi.repositories.TokenRepository;
import fr.enelia.dashboardapi.services.TokenService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service("tokenService")
public class TokenServiceImpl implements TokenService {

    private static final Logger LOGGER = LoggerFactory.getLogger(TokenServiceImpl.class);

    @Autowired
    private TokenRepository tokenRepository;

    @Override
    public Token createToken(Token token) {
        LOGGER.info("createToken");
        return tokenRepository.save(token);
    }

    @Override
    public Optional<Token> getTokenByFCMToken(String fcmToken) {
        LOGGER.info("getTokenByFCMToken");
        Optional<Token> token = null;

        token = tokenRepository.findByFcmToken(fcmToken);

        return token;
    }

    @Override
    public void removeToken(Token token) {
        LOGGER.info("removeToken");
        tokenRepository.delete(token);
    }
}
