//Recomendaciones basadas en amigos
MATCH (user:User {email: "alice@example.com"})-[:FRIEND]->(friend:User)-[:HAS]->(game:Game)
WHERE NOT (user)-[:HAS]->(game)
RETURN DISTINCT game.name AS RecommendedGames, game.description AS Description

//Recomendaciones basadas en categorías favoritas
MATCH (user:User {email: "alice@example.com"})-[:HAS]->(ownedGame:Game)-[:IS_A]->(category:Category)<-[:IS_A]-(game:Game)
WHERE NOT (user)-[:HAS]->(game)
RETURN DISTINCT game.name AS RecommendedGames, game.description AS Description

//Recomendaciones basadas en la misma saga de juegos
MATCH (user:User {email: "alice@example.com"})-[:HAS]->(ownedGame:Game)-[:SAME_SAGA]-(game:Game)
WHERE NOT (user)-[:HAS]->(game)
RETURN DISTINCT game.name AS RecommendedGames, game.description AS Description

//Recomendaciones basadas en juegos vistos por amigos
MATCH (user:User {email: "alice@example.com"})-[:FRIEND]->(friend:User)-[:SAW]->(game:Game)
WHERE NOT (user)-[:HAS]->(game)
RETURN DISTINCT game.name AS RecommendedGames, game.description AS Description
