/*Aventuras de la aventura*/
insert into adventure(id_adventure,name,description,user_modification,user_creation,date_creation,date_modification)
values (default, "SAVE THE PRINCESS",'Debes de salvar a la princesa pero tus desiciones pueden cambiar el final de la historia. Te encontraras obstaculos y monstruos',NULL,current_user(),current_date(),NULL),
(default, "VIRTUAL_WORLD","Debes de tomar decisiones en un mundo virtual en el cual te has quedado atrapado mientras dormías para poder salir deberás de enfrentarte a dificultades y diferentes opciones",NULL,current_user(),current_date(),NULL),
(default, "THE MOVE","Unas hermanas deben de tomar decisiones a la hora de mudarse ",NULL,current_user(),current_date(),NULL),
(default, "THE DAMNED FOREST","Un personaje que debe tomar decisiones en un bosque maldito ¿Conseguirás que sobreviva con tus acciones? ",NULL,current_user(),current_date(),NULL);

/*Pasos de la aventura*/
insert into step(id_step,description,end_step,user_creation,user_modification,date_creation,date_modification,id_adventure)
values(default,"Le suena la alarma al heroe!",0,current_user(),NULL,curdate(),NULL,1)/*1*/,
(default,"Se ha dormido y no puede ir a su aventura",1,current_user(),NULL,curdate(),NULL,1)/*2*/,
(default,"El heroe logra levantarse exitosamente,que deberia hacer?",0,current_user(),NULL,curdate(),NULL,1)/*3*/,
(default,"El  heroe ha decidido ser sabio y no correr muchos peligros por nada",1,current_user(),NULL,curdate(),NULL,1),/*4*/
(default,"El heroe se encuentra con un monstruo! Que deberia hacer?",0,current_user(),NULL,curdate(),NULL,1)/*5*/,
(default,"El heroe se da cuenta que no es muy fuerte(él mismo)",1,current_user(),NULL,curdate(),NULL,1)/*6*/,
(default,"El heroe se da cuenta de que la princesa no vale la pena y se va a tomar unas cervezas con el monstruo",1,current_user(),NULL,curdate(),NULL,1)/*7*/,
(default,"El heroe tiene mucha suerte, y logra entrar al castillo sin problemas, ¿que hace?",0,current_user(),NULL,curdate(),NULL,1)/*8*/,
(default,"Al parecer al heroe se le olvido que no iba equipado murió tragicamente",1,current_user(),NULL,curdate(),NULL,1)/*9*/,
(default,"Se ve que el monstruo es lento y logra salvar a la princesa",1,current_user(),NULL,curdate(),NULL,1)/*10*/;

/*Opciones de la aventura*/
insert into LIVE_YOUR_ADVENTURE.option (id_last_step,id_next_step,description,user_creation,date_creation,answer)
values(1,2,"a) Apaga la alarma porque quiere dormir",current_user(),curdate(),"Se hace tarde y no se da cuenta"),
(1,3,"b) Se levanta de la cama como dios manda",current_user(),curdate(),"El heroe se despierta con un gran esfuerzo"),
(3,4,"a) Decide no ir a por la princesa, que vaya otro, hay muchos peces en el mar",current_user(),curdate(),"El héroe vuelve a su casa y se apunta a Tinder los heroes también necesitan compañia"),
(3,5,"b) El heroe se equipa apropiadamente y sale a la aventura",current_user(),curdate(),"Va caminando por las montañas cuando..."),
(3,8,"c) El heroe no se equipa, ya que es demasiado fuerte, no tendra problemas",current_user(),curdate(),"Encuentra un castillo y ..."),
(5,6,"a) Decide luchar valerosamente",current_user(),curdate(),"Se da cuenta que no es muy fuerte y el monstruo le arranca la cabeza de un manotazo"),
(5,7,"b) Decide intentar hacerse amigo del monstruo",current_user(),curdate(),"El heroe se da cuenta que la vida es muy corta se va a tomar unas cervezas con el monstruo "),
(5,8,"c)Decide correr hacia la torre de la princesa",current_user(),curdate(),"Y al final..."),
(8,9,"a) Busca al jefe final para matarle",current_user(),curdate(),"Al parecer al heroe se le olvido que no iba equipado... Murio tragicamente"),
(8,10,"b) Ir hacia la celda de la princesa",current_user(),curdate(),"Parece ser que esta celda no es la de la princesa, el hero cayo en una trampa");

/*Personajes de la aventura*/
insert into LIVE_YOUR_ADVENTURE.character (name,description,user_creation,date_creation)
values("Kratos","Viene de su destierro del olimpo pura fuerza bruta. ",current_user(),curdate()),
("Andrés","Puedes jugar con uno de nuestros programadores del videojuego.",current_user(),curdate()),
("Altair","Todo es mentira nada esta escrito...excepto su futuro que lo decides tú.",current_user(),curdate()),
("Joel","Corred insensatos! Con un cuchillo y 4 balas puede acabar con un ejercito.",current_user(),curdate());

/*Jugador de la aventura*/
insert into LIVE_YOUR_ADVENTURE.player(password,username,user_creation,date_creation)
values("Sergio123@","Sergio123",current_user(),curdate()),
("Brian123@","Brian123",current_user(),curdate()),
("Abigail12@","Abigail12",current_user(),curdate()),
("Andres123@","Andres123",current_user(),curdate());

/*Partida de la aventura*/
insert into LIVE_YOUR_ADVENTURE.GAME(date,user_creation,date_creation,id_adventure,id_player,id_character)
values(sysdate(),current_user(),curdate());


/*Historial de la aventura*/
insert into LIVE_YOUR_ADVENTURE.RECORD (ID_RECORD,id_game,date,date_creation,date_modification,user_creation,user_modification)
values(default,(""),curdate(),current_date());

/*ADVENTURE_CHARACTER*/
insert into LIVE_YOUR_ADVENTURE.adventure_character (id_character,id_adventure)
values (1,1),(2,1),(3,1),(1,2),(4,2),(2,3),(4,3),(3,4);