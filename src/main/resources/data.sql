INSERT INTO `oauth_client_details` (`client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES
('eneliaWeb', 'oauth2-resource', 'secret', 'read,write,trust', 'client_credentials,password,refresh_token', '', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', 50000, 1500000, '{}', ''),
('eneliaAndroid', 'oauth2-resource', 'secret', 'read,write,trust', 'client_credentials,password,refresh_token', '', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', 50000, 1500000, '{}', ''),
('eneliaIOS', 'oauth2-resource', 'secret', 'read,write,trust', 'client_credentials,password,refresh_token', '', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', 50000, 1500000, '{}', '');

INSERT INTO `periode` (`id`, `dateDebut`, `dateFin`) VALUES
(1, 0xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e2010178, 0xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e2011f78);

INSERT INTO `role` (`id`, `nom`) VALUES
(1, 'ROLE_TV'),
(2, 'ROLE_COMMERCIAL'),
(3, 'ROLE_PROSPECTEUR'),
(4, 'ROLE_MANAGER'),
(5, 'ROLE_ADMIN'),
(6, 'ROLE_SUPERADMIN');

INSERT INTO `agence` (`id`, `logo`, `nom`) VALUES
(1, 'https://enelia.ddns.net/img/users/avatar.png', 'Templemars');

INSERT INTO `employe` (`dtype`, `id`, `nom`, `photo`, `prenom`, `agence_id`) VALUES
('Manager', 1, 'Deschaume', 'https://enelia.ddns.net/img/users/arnaud.deschaume.png', 'Arnaud', 1),
('Manager', 2, 'Hamedi', 'https://enelia.ddns.net/img/users/sofiane.hamedi.png', 'Sofiane', 1),
('Manager', 3, 'Legrand', 'https://enelia.ddns.net/img/users/sylvain.legrand.png', 'Sylvain', 1),
('Manager', 4, 'Moisson', 'https://enelia.ddns.net/img/users/pauline.moisson.png', 'Pauline', 1),
('Prospecteur', 5, 'Schryve', 'https://enelia.ddns.net/img/users/thibaut.schryve.png', 'Thibaut', 1),
('Prospecteur', 6, 'Ducrocq', 'https://enelia.ddns.net/img/users/eloi.ducrocq.png', 'Eloi', 1),
('Prospecteur', 7, 'Belkasmi', 'https://enelia.ddns.net/img/users/kamal.belkasmi.png', 'Kamal', 1),
('Prospecteur', 8, 'Meziani', 'https://enelia.ddns.net/img/users/naji.meziani.png', 'Naji', 1),
('Prospecteur', 9, 'Kreutser', 'https://enelia.ddns.net/img/users/ugo.kreutser.png', 'Ugo', 1),
('Prospecteur', 10, 'Wambre', 'https://enelia.ddns.net/img/users/alexis.wambre.png', 'Alexis', 1),
('Prospecteur', 11, 'Chouia', 'https://enelia.ddns.net/img/users/aicha.chouia.png', 'Aicha', 1),
('Prospecteur', 12, 'Leleu', 'https://enelia.ddns.net/img/users/louis.leuleu.png', 'Louis', 1),
('Prospecteur', 13, 'Ricart', 'https://enelia.ddns.net/img/users/charlotte.ricart.png', 'Charlotte', 1),
('Prospecteur', 14, 'Halastara', 'https://enelia.ddns.net/img/users/assia.halastara.png', 'Assia', 1),
('Prospecteur', 15, 'Lemaire', 'https://enelia.ddns.net/img/users/william.lemaire.png', 'William', 1),
('Commercial', 16, 'Salkiki', 'https://enelia.ddns.net/img/users/sofiane.salkiki.png', 'Sofiane', 1),
('Commercial', 17, 'De Pizzol', 'https://enelia.ddns.net/img/users/daniel.depizzol.png', 'Daniel', 1),
('Commercial', 18, 'Benkader', 'https://enelia.ddns.net/img/users/yacine.benkader.png', 'Yacine', 1),
('Commercial', 19, 'Simon', 'https://enelia.ddns.net/img/users/samuel.simon.png', 'Samuel', 1),
('Commercial', 20, 'Wattiez', 'https://enelia.ddns.net/img/users/laurent.wattiez.png', 'Laurent', 1),
('Commercial', 21, 'Despierre', 'https://enelia.ddns.net/img/users/valentin.despierre.png', 'Valentin', 1),
('Prospecteur', 22, 'Holleville', 'https://enelia.ddns.net/img/users/pauline.holleville.png', 'Pauline', 1),
('Prospecteur', 23, 'Smagghue', 'https://enelia.ddns.net/img/users/gregory.smagghue.png', 'Gregory', 1),
('Commercial', 24, 'Payen', 'https://enelia.ddns.net/img/users/edouard.payen.png', 'Edouard', 1);

INSERT INTO `utilisateur` (`id`, `active`, `password`, `token`, `username`, `employe_id`) VALUES
(1, b'1', 'password', NULL, 'pierre.deruel', NULL),
(2, b'1', 'mamanpapa02', NULL, 'arnaud.deschaume', 1),
(3, b'1', 'ak7v9qs5ws', NULL, 'sofiane.hamedi', 2),
(4, b'1', 'qg8z0er7gh', NULL, 'sylvain.legrand', 3),
(5, b'1', 'pr5i7kc4ss', NULL, 'pauline.moisson', 4),
(6, b'1', 'pe6w7qa7ty', NULL, 'thibaut.schryve', 5),
(7, b'1', 'qu3c0jy5nb', NULL, 'eloi.ducrocq', 6),
(8, b'1', 'su9u7wx3qs', NULL, 'kamal.belkasmi', 7),
(9, b'1', 'yu6c3kd8yd', NULL, 'naji.meziani', 8),
(10, b'1', 'ze8y6dv5fg', NULL, 'ugo.kreutser', 9),
(11, b'1', 'wx0d4fg6zl', NULL, 'alexis.wambre', 10),
(12, b'1', 'tg9s1xl7uf', NULL, 'aicha.chouia', 11),
(13, b'1', 'pa7s6sf7el', NULL, 'louis.leleu', 12),
(14, b'1', 'ss8c5dg7lr', NULL, 'charlotte.ricart', 13),
(15, b'1', 'wn8u5iz0ol', NULL, 'assia.halastara', 14),
(16, b'1', 'nx1f7oz7sh', NULL, 'william.lemaire', 15),
(17, b'1', 'dg8q9ud7sv', NULL, 'sofiane.salkiki', 16),
(18, b'1', 'sj9c9sb1ww', NULL, 'daniel.depizzol', 17),
(19, b'1', 'tu4s0if5sv', NULL, 'yacine.benkader', 18),
(20, b'1', 'rh0d4cv2dh', NULL, 'samuel.simon', 19),
(21, b'1', 'ml8k7sh0xz', NULL, 'laurent.wattiez', 20),
(22, b'1', 'ry9s4qw9vb', NULL, 'valentin.despierre', 21),
(23, b'1', 'password', NULL, 'salle.commerciaux', NULL),
(24, b'1', 'password', NULL, 'salle.prospecteurs', NULL),
(25, b'1', 'zh8s5cq0uo', NULL, 'pauline.holleville', 22),
(26, b'1', 'yr4w7oq4de', NULL, 'gregory.smagghue', 23),
(27, b'1', 'pd7q7yu0ad', NULL, 'edouard.payen', 24);

INSERT INTO `role_utilisateur` (`roles_id`, `utilisateurs_id`) VALUES
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(4, 3),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(4, 4),
(4, 5),
(4, 16),
(5, 2),
(6, 1),
(1, 23),
(1, 24),
(3, 25),
(3, 26),
(2, 27);