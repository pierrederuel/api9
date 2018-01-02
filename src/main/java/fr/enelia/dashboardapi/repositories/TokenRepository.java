package fr.enelia.dashboardapi.repositories;

import fr.enelia.dashboardapi.entities.Token;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface TokenRepository extends CrudRepository<Token, Long> {

    Optional<Token> findByFcmToken(String fcmToken);
}
