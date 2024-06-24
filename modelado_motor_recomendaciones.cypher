CREATE CONSTRAINT FOR (u:User) REQUIRE u.email IS UNIQUE;
CREATE CONSTRAINT FOR (g:Game) REQUIRE g.name IS UNIQUE;
CREATE CONSTRAINT FOR (c:Community) REQUIRE c.id IS UNIQUE;
CREATE CONSTRAINT FOR (cat:Category) REQUIRE cat.name IS UNIQUE;

CREATE (u1:User {name: "Alice", email: "alice@example.com"});
CREATE (u2:User {name: "Bob", email: "bob@example.com"});
CREATE (u3:User {name: "Charlie", email: "charlie@example.com"});
CREATE (u4:User {name: "Diana", email: "diana@example.com"});
CREATE (u5:User {name: "Eve", email: "eve@example.com"});
CREATE (u6:User {name: "Frank", email: "frank@example.com"});
CREATE (u7:User {name: "Grace", email: "grace@example.com"});
CREATE (u8:User {name: "Henry", email: "henry@example.com"});
CREATE (u9:User {name: "Ivy", email: "ivy@example.com"});
CREATE (u10:User {name: "Jack", email: "jack@example.com"});

CREATE (g1:Game {name: "Call Of Duty 1", description: "Juego de guerra ambientado en la 2GM"});
CREATE (g2:Game {name: "Call Of Duty 2", description: "La secuela de Call Of Duty 1"});
CREATE (g3:Game {name: "EA FC 24", description: "El juego de fútbol más popular"});
CREATE (g4:Game {name: "FIFA 23", description: "Juego de fútbol de la saga FIFA"});
CREATE (g5:Game {name: "Battlefield 1", description: "Juego de guerra en la 1GM"});
CREATE (g6:Game {name: "Overwatch", description: "Juego de disparos en equipo"});
CREATE (g7:Game {name: "The Witcher 3", description: "Juego de rol y acción"});
CREATE (g8:Game {name: "Minecraft", description: "Juego de construcción y aventura"});
CREATE (g9:Game {name: "Fortnite", description: "Juego de batalla real"});
CREATE (g10:Game {name: "League of Legends", description: "Juego multijugador de batalla en línea"});

CREATE (c1:Category {name: "Guerra"});
CREATE (c2:Category {name: "Accion"});
CREATE (c3:Category {name: "Deporte"});
CREATE (c4:Category {name: "Estrategia"});
CREATE (c5:Category {name: "Multijugador"});
CREATE (c6:Category {name: "RPG"});
CREATE (c7:Category {name: "Aventura"});
CREATE (c8:Category {name: "Construcción"});
CREATE (c9:Category {name: "MOBA"});

CREATE (com1:Community {id: "1", name: "Comunidad de gamers"});
CREATE (com2:Community {id: "2", name: "Gaming"});
CREATE (com3:Community {id: "3", name: "Los mejores juegos"});
CREATE (com4:Community {id: "4", name: "Amantes del deporte"});
CREATE (com5:Community {id: "5", name: "Jugadores de FPS"});
CREATE (com6:Community {id: "6", name: "RPG Fans"});
CREATE (com7:Community {id: "7", name: "Aventureros"});
CREATE (com8:Community {id: "8", name: "Constructores"});
CREATE (com9:Community {id: "9", name: "Jugadores MOBA"});

MATCH (u1:User {email: "alice@example.com"}), (u2:User {email: "bob@example.com"})
CREATE (u1)-[:FRIEND]->(u2);

MATCH (u2:User {email: "bob@example.com"}), (u3:User {email: "charlie@example.com"})
CREATE (u2)-[:FRIEND]->(u3);

MATCH (u4:User {email: "diana@example.com"}), (u5:User {email: "eve@example.com"})
CREATE (u4)-[:FRIEND]->(u5);

MATCH (u5:User {email: "eve@example.com"}), (u6:User {email: "frank@example.com"})
CREATE (u5)-[:FRIEND]->(u6);

MATCH (u6:User {email: "frank@example.com"}), (u4:User {email: "diana@example.com"})
CREATE (u6)-[:FRIEND]->(u4);

MATCH (u1:User {email: "alice@example.com"}), (u7:User {email: "grace@example.com"})
CREATE (u1)-[:FRIEND]->(u7);

MATCH (u7:User {email: "grace@example.com"}), (u8:User {email: "henry@example.com"})
CREATE (u7)-[:FRIEND]->(u8);

MATCH (u8:User {email: "henry@example.com"}), (u9:User {email: "ivy@example.com"})
CREATE (u8)-[:FRIEND]->(u9);

MATCH (u9:User {email: "ivy@example.com"}), (u10:User {email: "jack@example.com"})
CREATE (u9)-[:FRIEND]->(u10);

MATCH (u10:User {email: "jack@example.com"}), (u2:User {email: "bob@example.com"})
CREATE (u10)-[:FRIEND]->(u2);


MATCH (u1:User {email: "alice@example.com"}), (com1:Community {id: "1"})
CREATE (u1)-[:MEMBER]->(com1);

MATCH (u2:User {email: "bob@example.com"}), (com2:Community {id: "2"})
CREATE (u2)-[:MEMBER]->(com2);

MATCH (u3:User {email: "charlie@example.com"}), (com3:Community {id: "3"})
CREATE (u3)-[:MEMBER]->(com3);

MATCH (u4:User {email: "diana@example.com"}), (com4:Community {id: "4"})
CREATE (u4)-[:MEMBER]->(com4);

MATCH (u5:User {email: "eve@example.com"}), (com5:Community {id: "5"})
CREATE (u5)-[:MEMBER]->(com5);

MATCH (u6:User {email: "frank@example.com"}), (com6:Community {id: "6"})
CREATE (u6)-[:MEMBER]->(com6);

MATCH (u7:User {email: "grace@example.com"}), (com7:Community {id: "7"})
CREATE (u7)-[:MEMBER]->(com7);

MATCH (u8:User {email: "henry@example.com"}), (com8:Community {id: "8"})
CREATE (u8)-[:MEMBER]->(com8);

MATCH (u9:User {email: "ivy@example.com"}), (com9:Community {id: "9"})
CREATE (u9)-[:MEMBER]->(com9);

MATCH (u10:User {email: "jack@example.com"}), (com1:Community {id: "1"})
CREATE (u10)-[:MEMBER]->(com1);


MATCH (u1:User {email: "alice@example.com"}), (g1:Game {name: "Call Of Duty 1"})
CREATE (u1)-[:HAS]->(g1);

MATCH (u2:User {email: "bob@example.com"}), (g2:Game {name: "Call Of Duty 2"})
CREATE (u2)-[:HAS]->(g2);

MATCH (u3:User {email: "charlie@example.com"}), (g3:Game {name: "EA FC 24"})
CREATE (u3)-[:HAS]->(g3);

MATCH (u4:User {email: "diana@example.com"}), (g4:Game {name: "FIFA 23"})
CREATE (u4)-[:HAS]->(g4);

MATCH (u5:User {email: "eve@example.com"}), (g5:Game {name: "Battlefield 1"})
CREATE (u5)-[:HAS]->(g5);

MATCH (u6:User {email: "frank@example.com"}), (g6:Game {name: "Overwatch"})
CREATE (u6)-[:HAS]->(g6);

MATCH (u7:User {email: "grace@example.com"}), (g7:Game {name: "The Witcher 3"})
CREATE (u7)-[:HAS]->(g7);

MATCH (u8:User {email: "henry@example.com"}), (g8:Game {name: "Minecraft"})
CREATE (u8)-[:HAS]->(g8);

MATCH (u9:User {email: "ivy@example.com"}), (g9:Game {name: "Fortnite"})
CREATE (u9)-[:HAS]->(g9);

MATCH (u10:User {email: "jack@example.com"}), (g10:Game {name: "League of Legends"})
CREATE (u10)-[:HAS]->(g10);


MATCH (u1:User {email: "alice@example.com"}), (g1:Game {name: "Call Of Duty 1"})
CREATE (u1)-[:RATED {rating: 5}]->(g1);

MATCH (u2:User {email: "bob@example.com"}), (g2:Game {name: "Call Of Duty 2"})
CREATE (u2)-[:RATED {rating: 4}]->(g2);

MATCH (u3:User {email: "charlie@example.com"}), (g3:Game {name: "EA FC 24"})
CREATE (u3)-[:RATED {rating: 3}]->(g3);

MATCH (u4:User {email: "diana@example.com"}), (g4:Game {name: "FIFA 23"})
CREATE (u4)-[:RATED {rating: 5}]->(g4);

MATCH (u5:User {email: "eve@example.com"}), (g5:Game {name: "Battlefield 1"})
CREATE (u5)-[:RATED {rating: 4}]->(g5);

MATCH (u6:User {email: "frank@example.com"}), (g6:Game {name: "Overwatch"})
CREATE (u6)-[:RATED {rating: 3}]->(g6);

MATCH (u7:User {email: "grace@example.com"}), (g7:Game {name: "The Witcher 3"})
CREATE (u7)-[:RATED {rating: 5}]->(g7);

MATCH (u8:User {email: "henry@example.com"}), (g8:Game {name: "Minecraft"})
CREATE (u8)-[:RATED {rating: 4}]->(g8);

MATCH (u9:User {email: "ivy@example.com"}), (g9:Game {name: "Fortnite"})
CREATE (u9)-[:RATED {rating: 3}]->(g9);

MATCH (u10:User {email: "jack@example.com"}), (g10:Game {name: "League of Legends"})
CREATE (u10)-[:RATED {rating: 4}]->(g10);


MATCH (u1:User {email: "alice@example.com"}), (g2:Game {name: "Call Of Duty 2"})
CREATE (u1)-[:SAW]->(g2);

MATCH (u2:User {email: "bob@example.com"}), (g3:Game {name: "EA FC 24"})
CREATE (u2)-[:SAW]->(g3);

MATCH (u3:User {email: "charlie@example.com"}), (g1:Game {name: "Call Of Duty 1"})
CREATE (u3)-[:SAW]->(g1);

MATCH (u4:User {email: "diana@example.com"}), (g5:Game {name: "Battlefield 1"})
CREATE (u4)-[:SAW]->(g5);

MATCH (u5:User {email: "eve@example.com"}), (g6:Game {name: "Overwatch"})
CREATE (u5)-[:SAW]->(g6);

MATCH (u6:User {email: "frank@example.com"}), (g4:Game {name: "FIFA 23"})
CREATE (u6)-[:SAW]->(g4);

MATCH (u7:User {email: "grace@example.com"}), (g7:Game {name: "The Witcher 3"})
CREATE (u7)-[:SAW]->(g7);

MATCH (u8:User {email: "henry@example.com"}), (g8:Game {name: "Minecraft"})
CREATE (u8)-[:SAW]->(g8);

MATCH (u9:User {email: "ivy@example.com"}), (g9:Game {name: "Fortnite"})
CREATE (u9)-[:SAW]->(g9);

MATCH (u10:User {email: "jack@example.com"}), (g10:Game {name: "League of Legends"})
CREATE (u10)-[:SAW]->(g10);


MATCH (g1:Game {name: "Call Of Duty 1"}), (c1:Category {name: "Accion"})
CREATE (g1)-[:IS_A]->(c1);

MATCH (g2:Game {name: "Call Of Duty 2"}), (c2:Category {name: "Guerra"})
CREATE (g2)-[:IS_A]->(c2);

MATCH (g3:Game {name: "EA FC 24"}), (c3:Category {name: "Deporte"})
CREATE (g3)-[:IS_A]->(c3);

MATCH (g4:Game {name: "FIFA 23"}), (c3:Category {name: "Deporte"})
CREATE (g4)-[:IS_A]->(c3);

MATCH (g5:Game {name: "Battlefield 1"}), (c1:Category {name: "Accion"})
CREATE (g5)-[:IS_A]->(c1);

MATCH (g6:Game {name: "Overwatch"}), (c5:Category {name: "Multijugador"})
CREATE (g6)-[:IS_A]->(c5);

MATCH (g7:Game {name: "The Witcher 3"}), (c6:Category {name: "RPG"})
CREATE (g7)-[:IS_A]->(c6);

MATCH (g8:Game {name: "Minecraft"}), (c8:Category {name: "Construcción"})
CREATE (g8)-[:IS_A]->(c8);

MATCH (g9:Game {name: "Fortnite"}), (c7:Category {name: "Aventura"})
CREATE (g9)-[:IS_A]->(c7);

MATCH (g10:Game {name: "League of Legends"}), (c9:Category {name: "MOBA"})
CREATE (g10)-[:IS_A]->(c9);


MATCH (g1:Game {name: "Call Of Duty 1"}), (g2:Game {name: "Call Of Duty 2"})
CREATE (g1)-[:SAME_SAGA]->(g2);

MATCH (g4:Game {name: "FIFA 23"}), (g3:Game {name: "EA FC 24"})
CREATE (g4)-[:SAME_SAGA]->(g3);
