//
//  File.swift
//  
//
//  Created by Andrei Mirica on 25.04.2023.
//

import Foundation

struct Helper {
    var initalQuiz: Quiz
    
    init() {
        var questions: [Question] = []
        
        questions.append(Question(questionText: "Qui ne veut pas dire ce qu'il pense ?", questionAswers: ["hypocrite", "sincère", "malhonnête"], rightAnswerIndex: 1))
        
        questions.append(Question(questionText: "Ensemble des mots d'une langue ?", questionAswers: ["alphabet", "grammaire", "vocabulaire"], rightAnswerIndex: 2))
        
        questions.append(Question(questionText: "Qui est difficile à comprendre ?", questionAswers: ["clair", "obscur", "évident"], rightAnswerIndex: 1))
        
        questions.append(Question(questionText: "Endroit où l'on peut se baigner ?", questionAswers: ["plage", "montagne", "désert"], rightAnswerIndex: 0))
        
        questions.append(Question(questionText: "Si tu ___ de l'argent, tu pourrais acheter une nouvelle voiture.", questionAswers: ["avais", "aurais", "serais"], rightAnswerIndex: 1))
        questions.append(Question(questionText: "Nous ___ à la plage hier.", questionAswers: ["sommes allés", "avons allé", "sommes allé"], rightAnswerIndex: 0))
        questions.append(Question(questionText: "Vous ___ au concert hier soir.", questionAswers: ["êtes allé", "avez allé", "avez été"], rightAnswerIndex: 1))
        questions.append(Question(questionText: "Je _____ un livre quand tu es arrivé.", questionAswers: ["lisais", "lisait", "lisai"], rightAnswerIndex: 0))
        questions.append(Question(questionText: "Les élèves _____ beaucoup travaillé cette année.", questionAswers: ["ont", "ont été", "sont"], rightAnswerIndex: 0))
        
        questions.append(Question(questionText: "Quel est l'infinitif du verbe 'avais' ?", questionAswers: ["avoir", "être", "aller"], rightAnswerIndex: 0))
        questions.append(Question(questionText: "Comment dit-on 'I am going to the cinema' en français ?", questionAswers: ["Je vais au cinéma", "J'ai été au cinéma", "Je suis allé au cinéma"], rightAnswerIndex: 0))
        questions.append(Question(questionText: "Quel est le féminin de 'grand' ?", questionAswers: ["grande", "grandeur", "grandement"], rightAnswerIndex: 0))
        questions.append(Question(questionText: "Quel est le pluriel de 'un chat' ?", questionAswers: ["des chats", "des chates", "des chatons"], rightAnswerIndex: 0))
        
        initalQuiz = Quiz(questions: questions)
    }
    
    func beginnerCourse() -> Course {
        var lesson1 = Lesson(title: "Les sons et les lettres",
                             text: """
                                I. Introduction
                                
                                Objectif de la leçon : apprendre les sons et les lettres de base de la langue française.
                                Importance de la prononciation correcte en français.
                                II. Les voyelles
                                
                                Les voyelles de base en français : a, e, i, o, u.
                                Prononciation de chaque voyelle : exemples de mots avec chaque voyelle.
                                Les sons nasaux : an, en, in, on, un.
                                Prononciation des sons nasaux : exemples de mots avec chaque son nasal.
                                III. Les consonnes
                                
                                Les consonnes de base en français : b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, y, z.
                                Prononciation de chaque consonne : exemples de mots avec chaque consonne.
                                Les lettres muettes : exemples de lettres muettes en français et leur prononciation.
                                IV. Pratique de la prononciation
                                
                                Exercices de prononciation avec des mots contenant des sons et des lettres de base.
                                V. Conclusion
                                
                                Résumé de la leçon : les voyelles, les consonnes, les lettres muettes et la prononciation correcte.
                                Importance de la pratique pour améliorer la prononciation en français.
                                Quiz de la leçon 1 sur les sons et les lettres :
                                
                                """,
                             quiz: Quiz(questions: [
                                Question(questionText: "Combien de voyelles de base y a-t-il en français ?", questionAswers: ["4", "5", "6"], rightAnswerIndex: 2),
                                
                                Question(questionText: "Comment prononce-t-on les sons nasaux en français ?", questionAswers: ["En les prononçant comme les voyelles de base", "En ajoutant une consonne nasale avant la voyelle", "En faisant vibrer les cordes vocales"], rightAnswerIndex: 1),
                                Question(questionText: "Combien de consonnes de base y a-t-il en français ?", questionAswers: ["20", "21", "22"], rightAnswerIndex: 0),
                                Question(questionText: "Comment appelle-t-on les lettres qui ne se prononcent pas en français ?", questionAswers: ["Les lettres sourdes", "Les lettres muettes", "Les lettres fantômes"], rightAnswerIndex: 1),
                                Question(questionText: "Pourquoi est-il important de pratiquer la prononciation en français ?", questionAswers: ["Pour améliorer la compréhension des natifs français", "Pour mieux réussir les examens de français", "Pour se sentir plus à l'aise lorsqu'on parle français"], rightAnswerIndex: 2),
                                Question(questionText: "Qu'est-ce qu'un son nasal en français ?", questionAswers: ["Un son qui se prononce avec le nez", "Un son qui est produit par la gorge", "PUn son qui est formé par la bouche"], rightAnswerIndex: 0)
                             ]))
        
        let lesson2 = Lesson(title: "La famille et les professions",
                             text: """
                                    I. Introduction
                                    
                                    Objectif de la leçon : apprendre les membres de la famille et les professions en français.
                                    Importance de connaître le vocabulaire de base pour pouvoir communiquer en français.
                                    II. Les membres de la famille
                                    
                                    Les membres de la famille : les parents, les enfants, les grands-parents, les cousins et les cousines, les oncles et les tantes, les frères et les sœurs.
                                    Vocabulaire supplémentaire : les beaux-parents, les demi-frères et les demi-sœurs.
                                    III. Les professions
                                    
                                    Les professions : le médecin, l'infirmier/infirmière, l'enseignant/enseignante, l'avocat/avocate, le policier/la policière, le pompier/la pompière, le chef/la cheffe, le serveur/la serveuse, le coiffeur/la coiffeuse, l'artiste, le musicien/la musicienne.
                                    Vocabulaire supplémentaire : le plombier, l'électricien, le jardinier/la jardinière.
                                    IV. Conversation
                                    
                                    Dialogue entre deux personnes pour pratiquer le vocabulaire appris dans cette leçon.
                                    V. Conclusion
                                    
                                    Résumé de la leçon : les membres de la famille, les professions et leur importance pour la communication en français.
                                    Quiz de la leçon 2 sur la famille et les professions :
                                    """,
                             quiz: Quiz(questions: [
                                Question(questionText: "Comment appelle-t-on les membres de la famille qui ont le même grand-parent ?", questionAswers: ["Les cousins/cousines", "Les oncles/tantes", "Les frères/sœurs"], rightAnswerIndex: 0),
                                Question(questionText: "Comment appelle-t-on les parents de son conjoint ?", questionAswers: ["Les beaux-parents", "Les demi-frères/demi-sœurs", "Les grands-parents"], rightAnswerIndex: 0),
                                Question(questionText: "Quelle profession soigne les patients ?", questionAswers: ["Le médecin", "Le plombier", "Le jardinier/la jardinière"], rightAnswerIndex: 0),
                                Question(questionText: "Quelle profession enseigne les élèves ?", questionAswers: ["L'artiste", "L'enseignant/enseignante", "Le musicien/la musicienne"], rightAnswerIndex: 1),
                                Question(questionText: "Quelle profession défend les clients devant la justice ?", questionAswers: ["Le policier/la policière", "L'avocat/l'avocate", "Le pompier/la pompière"], rightAnswerIndex: 1),
                                Question(questionText: "Quelle profession travaille dans un restaurant ?", questionAswers: ["Le chef/la cheffe", "Le serveur/la serveuse", "L'électricien"], rightAnswerIndex: 1)
                             ]))
        
        
        
        var lesson3 = Lesson(
            title: "La famille et les professions",
            text: """
                I. Introduction
                
                Objectif de la leçon : apprendre les membres de la famille et les professions en français.
                Importance de connaître le vocabulaire de base pour pouvoir communiquer en français.
                
                II. Les membres de la famille
                
                Les membres de la famille : les parents, les enfants, les grands-parents, les cousins et les cousines, les oncles et les tantes, les frères et les sœurs.
                Vocabulaire supplémentaire : les beaux-parents, les demi-frères et les demi-sœurs.
                
                III. Les professions
                
                Les professions : le médecin, l'infirmier/infirmière, l'enseignant/enseignante, l'avocat/avocate, le policier/la policière, le pompier/la pompière, le chef/la cheffe, le serveur/la serveuse, le coiffeur/la coiffeuse, l'artiste, le musicien/la musicienne.
                Vocabulaire supplémentaire : le plombier, l'électricien, le jardinier/la jardinière.
                
                IV. Conversation
                
                Dialogue entre deux personnes pour pratiquer le vocabulaire appris dans cette leçon.
                
                V. Conclusion
                
                Résumé de la leçon : les membres de la famille, les professions et leur importance pour la communication en français.
                
                Quiz de la leçon 2 sur la famille et les professions :
                """,
            quiz: Quiz(questions: [
                Question(questionText: "Comment appelle-t-on les membres de la famille qui ont le même grand-parent ?", questionAswers: ["Les cousins/cousines", "Les oncles/tantes", "Les frères/sœurs"], rightAnswerIndex: 0),
                Question(questionText: "Comment appelle-t-on les parents de son conjoint ?", questionAswers: ["Les beaux-parents", "Les demi-frères/demi-sœurs", "Les grands-parents"], rightAnswerIndex: 0),
                Question(questionText: "Quelle profession soigne les patients ?", questionAswers: ["Le médecin", "Le plombier", "Le jardinier/la jardinière"], rightAnswerIndex: 0),
                Question(questionText: "Quelle profession enseigne les élèves ?", questionAswers: ["L'artiste", "L'enseignant/enseignante", "Le musicien/la musicienne"], rightAnswerIndex: 1),
                Question(questionText: "Quelle profession défend les clients devant la justice ?", questionAswers: ["Le policier/la policière", "L'avocat/l'avocate", "Le pompier/la pompière"], rightAnswerIndex: 1),
                Question(questionText: "Quelle profession travaille dans un restaurant ?", questionAswers: ["Le chef/la cheffe", "Le serveur/la serveuse", "L'électricien"], rightAnswerIndex: 1)
            ])
        )
        
        let lesson4 = Lesson(
            title: "Les nombres et le temps",
            text: """
                I. Introduction
                
                Objectif de la leçon : apprendre les nombres et le temps en français.
                Importance de connaître les nombres pour pouvoir communiquer en français et comprendre les horaires et les dates.
                
                II. Les nombres
                
                Les nombres de 0 à 20 : zéro, un, deux, trois, quatre, cinq, six, sept, huit, neuf, dix, onze, douze, treize, quatorze, quinze, seize, dix-sept, dix-huit, dix-neuf, vingt.
                Les dizaines : vingt, trente, quarante, cinquante, soixante, soixante-dix, quatre-vingts, quatre-vingt-dix, cent.
                
                III. Le temps
                
                Les heures : Il est [heure] heures.
                Les minutes : [heure] heures [minutes].
                Les expressions de temps : aujourd'hui, demain, hier, la semaine dernière, le mois dernier, l'année dernière, la semaine prochaine, le mois prochain, l'année prochaine.
                
                IV. Conversation
                
                Dialogue entre deux personnes pour pratiquer les nombres et le temps.
                
                V. Conclusion
                
                Résumé de la leçon : les nombres et le temps en français, leur importance pour la communication et la compréhension des horaires et des dates.
                
                Quiz de la leçon 4 sur les nombres et le temps :
                """,
            quiz: Quiz(questions: [
                Question(questionText: "Comment écrit-on le nombre 18 en français ?", questionAswers: ["dix-huit", "dix-neuf", "vingt"], rightAnswerIndex: 0),
                Question(questionText: "Comment dit-on '70' en français ?", questionAswers: ["soixante-dix", "quatre-vingts", "quatre-vingt-dix"], rightAnswerIndex: 0),
                Question(questionText: "Comment dit-on '15:30' en français ?", questionAswers: ["Il est quinze heures et trente minutes.", "Il est seize heures et trente minutes.", "Il est quatorze heures et trente minutes."], rightAnswerIndex: 0),
                Question(questionText: "Comment dit-on 'hier' en français ?", questionAswers: ["yesterday", "today", "tomorrow"], rightAnswerIndex: 0),
                Question(questionText: "Comment dit-on 'la semaine prochaine' en français ?", questionAswers: ["last week", "this week", "next week"], rightAnswerIndex: 2),
                Question(questionText: "Comment écrit-on le nombre 100 en français ?", questionAswers: ["cent", "mille", "dix"], rightAnswerIndex: 0)
            ])
        )
        
        let lesson5 = Lesson(
            title: "La nourriture et les boissons",
            text: """
                I. Introduction
                
                Objectif de la leçon : apprendre le vocabulaire de base pour parler de la nourriture et des boissons en français.
                Importance de connaître ce vocabulaire pour pouvoir commander au restaurant et faire des courses en France.
                
                II. La nourriture
                
                Les aliments : le pain, le fromage, la viande, le poisson, les légumes, les fruits, le riz, les pâtes, le beurre, l'huile, le sel, le sucre.
                Vocabulaire supplémentaire : les produits laitiers, la charcuterie, les céréales, les fruits de mer.
                
                III. Les boissons
                
                Les boissons : l'eau, le vin, la bière, le café, le thé, le lait, le jus d'orange, le soda, le champagne.
                Vocabulaire supplémentaire : le cidre, le whisky, le cognac, la liqueur.
                
                IV. Au restaurant
                
                Vocabulaire pour commander au restaurant : une table pour deux, une entrée, un plat principal, un dessert, l'addition, le pourboire.
                Vocabulaire supplémentaire : les hors-d'œuvre, le menu du jour, le vin de la maison, le digestif.
                
                V. Conversation
                
                Dialogue entre deux personnes pour pratiquer le vocabulaire appris dans cette leçon.
                
                VI. Conclusion
                
                Résumé de la leçon : les aliments, les boissons, et le vocabulaire pour commander au restaurant.
                Quiz de la leçon 5 sur la nourriture et les boissons :
                """,
            quiz: Quiz(questions: [
                Question(questionText: "Quel aliment est souvent servi avec le fromage en France ?", questionAswers: ["Le pain", "Les légumes", "Le poisson"], rightAnswerIndex: 0),
                Question(questionText: "Quelle boisson est souvent servie avec le petit-déjeuner français ?", questionAswers: ["Le café", "Le vin", "Le lait"], rightAnswerIndex: 2),
                Question(questionText: "Quel plat est souvent consommé en France à Noël ?", questionAswers: ["La dinde", "Le saumon fumé", "Le foie gras"], rightAnswerIndex: 2),
                Question(questionText: "Qu'est-ce qu'un hors-d'œuvre ?", questionAswers: ["Un plat principal", "Un dessert", "Une entrée"], rightAnswerIndex: 2),
                Question(questionText: "Que signifie 'l'addition' au restaurant ?", questionAswers: ["La nourriture", "La boisson", "La facture"], rightAnswerIndex: 2),
                Question(questionText: "Qu'est-ce qu'un pourboire ?", questionAswers: ["Un plat spécifique", "Une somme d'argent donnée en plus de la facture", "Une réduction sur la facture"], rightAnswerIndex: 1)
            ])
        )
        
        let lesson6 = Lesson(
            title: "La nourriture et les boissons",
            text: """
                I. Introduction
                
                Objectif de la leçon : apprendre le vocabulaire de base pour la nourriture et les boissons en français.
                Importance de connaître le vocabulaire de base pour pouvoir commander dans un restaurant français.
                
                II. La nourriture
                
                La nourriture : le pain, le fromage, les pâtes, la viande, le poisson, les légumes, les fruits.
                Vocabulaire supplémentaire : le riz, les œufs, le poulet, le bœuf, le porc.
                
                III. Les boissons
                
                Les boissons : l'eau, le café, le thé, le lait, le jus d'orange, le vin, la bière.
                Vocabulaire supplémentaire : le soda, le jus de pomme, le champagne.
                
                IV. Au restaurant
                
                Comment commander dans un restaurant français :
                1. Demander la carte
                2. Choisir les plats et les boissons
                3. Commander auprès du serveur ou de la serveuse
                
                V. Conversation
                
                Dialogue entre deux personnes pour pratiquer le vocabulaire appris dans cette leçon.
                
                VI. Conclusion
                
                Résumé de la leçon : la nourriture et les boissons, comment commander dans un restaurant français.
                
                Quiz de la leçon 6 sur la nourriture et les boissons :
                """,
            quiz: Quiz(questions: [
                Question(questionText: "Qu'est-ce qu'on mange pour le petit déjeuner en France ?", questionAswers: ["Le pain", "Les pâtes", "Le fromage"], rightAnswerIndex: 0),
                Question(questionText: "Quel est le nom de la viande en français ?", questionAswers: ["La meat", "La viande", "Le beef"], rightAnswerIndex: 1),
                Question(questionText: "Qu'est-ce qu'on boit pour le petit déjeuner en France ?", questionAswers: ["Le café", "L'eau", "Le jus d'orange"], rightAnswerIndex: 0),
                Question(questionText: "Comment demande-t-on la carte dans un restaurant français ?", questionAswers: ["Je voudrais la carte, s'il vous plaît.", "Je voudrais une bière.", "Je voudrais le plat du jour."], rightAnswerIndex: 0),
                Question(questionText: "Comment commande-t-on dans un restaurant français ?", questionAswers: ["On paie d'abord, puis on commande.", "On commande d'abord, puis on paie.", "On commande et on paie en même temps."], rightAnswerIndex: 1),
                Question(questionText: "Qu'est-ce qu'on peut boire avec le repas ?", questionAswers: ["Le lait", "Le soda", "Le vin"], rightAnswerIndex: 2)
            ])
        )
        
        return Course(courseName: "Débutant course", languageLevel: "Débutant", lessons: [lesson1, lesson2, lesson3, lesson4, lesson5, lesson6])
    }
    
    func intermediateCourse() -> Course {
        let lesson1 = Lesson(
            title: "Exprimer ses opinions et ses préférences",
            text: """
            I. Introduction
            Objectif de la leçon : apprendre à exprimer ses opinions et ses préférences en français.
            Importance de connaître ce vocabulaire pour pouvoir communiquer efficacement en français.
            
            II. Les opinions
            
            Les opinions : exprimer son avis sur différents sujets tels que la politique, la musique, les films, etc.
            Vocabulaire supplémentaire : d'accord, pas d'accord, je suis favorable, je suis contre.
            
            III. Les préférences
            
            Les préférences : exprimer ses goûts en matière de nourriture, de musique, de films, etc.
            Vocabulaire supplémentaire : j'aime, je n'aime pas, je préfère, je déteste.
            
            IV. Conversation
            
            Dialogue entre deux personnes pour pratiquer l'expression des opinions et des préférences.
            
            V. Exercice
            
            Exprimez votre opinion sur différents sujets, tels que la musique, la politique, les sports, etc. Exprimez également vos préférences en matière de nourriture, de films, de livres, etc.
            
            VI. Conclusion
            
            Résumé de la leçon : l'expression des opinions et des préférences en français.
            Importance de pratiquer régulièrement pour améliorer sa communication en français.
            
            Quiz de la leçon 7 sur l'expression des opinions et des préférences :
            """,
            
            quiz: Quiz(questions: [
                Question(
                    questionText: "Comment exprime-t-on une opinion en français?",
                    questionAswers: [
                        "En disant ce que l'on pense clairement et directement",
                        "En utilisant des expressions vagues et indécises",
                        "En évitant de donner son avis"
                    ],
                    rightAnswerIndex: 0
                ),
                Question(
                    questionText: "Quelle est la différence entre une opinion et une préférence ?",
                    questionAswers: [
                        "Une opinion est plus forte qu'une préférence",
                        "Une préférence est plus personnelle qu'une opinion",
                        "Il n'y a pas de différence"
                    ],
                    rightAnswerIndex: 1
                ),
                Question(
                    questionText: "Comment peut-on exprimer une préférence en français ?",
                    questionAswers: [
                        "En disant ce que l'on aime sans donner de raisons",
                        "En justifiant son choix avec des arguments",
                        "En changeant de sujet pour éviter de répondre"
                    ],
                    rightAnswerIndex: 1
                ),
                Question(
                    questionText: "Qu'est-ce qu'un synonyme pour 'j'aime'?",
                    questionAswers: [
                        "Je déteste",
                        "J'adore",
                        "Je m'en fiche"
                    ],
                    rightAnswerIndex: 1
                ),
                Question(
                    questionText: "Comment peut-on demander l'opinion de quelqu'un en français ?",
                    questionAswers: [
                        "Tu penses quoi de ... ?",
                        "Est-ce que tu as raison ou tort ?",
                        "Tu veux manger où ce soir ?"
                    ],
                    rightAnswerIndex: 0
                ),
                Question(
                    questionText: "Comment peut-on répondre 'non' à une proposition en exprimant son opinion sans blesser l'autre personne ?",
                    questionAswers: [
                        "Je suis désolé, mais je ne suis pas d'accord",
                        "Je ne veux pas te vexer, mais c'est nul",
                        "Je préfère ne pas répondre"
                    ],
                    rightAnswerIndex: 0
                )
            ])
        )
        
        
        let lesson2 = Lesson(
            title: "French Culture and Traditions",
            text: """
                I. Introduction
                
                Objectif de la leçon : découvrir la culture et les traditions françaises.
                Importance de comprendre les différences et similitudes culturelles entre la France et les pays d'origine des étudiants.
                
                II. Festivals
                
                Les festivals en France : la Fête de la Musique, le Festival de Cannes, la Fête de la Gastronomie, le Carnaval de Nice.
                Vocabulaire supplémentaire : la Fête Nationale (le 14 juillet), Noël, le Nouvel An.
                
                III. Cuisine
                
                La cuisine française : les plats traditionnels (la ratatouille, la bouillabaisse, le cassoulet), les fromages (le camembert, le brie), les desserts (la tarte tatin, les macarons).
                Vocabulaire supplémentaire : la baguette, le croissant, le vin.
                
                IV. Art
                
                L'art français : la peinture (Claude Monet, Pierre-Auguste Renoir), la sculpture (Auguste Rodin), l'architecture (la Tour Eiffel, Notre-Dame de Paris).
                Vocabulaire supplémentaire : la musique (Jacques Brel, Edith Piaf), le cinéma (Jean-Luc Godard, François Truffaut).
                
                V. Histoire
                
                L'histoire française : la Révolution française, la Première Guerre mondiale, la Deuxième Guerre mondiale.
                Vocabulaire supplémentaire : la monarchie, la Renaissance, la République.
                
                VI. Culture et traditions
                
                Différences et similitudes culturelles entre la France et les pays d'origine des étudiants.
                
                VII. Conclusion
                
                Résumé de la leçon : la culture et les traditions françaises, les festivals, la cuisine, l'art, l'histoire.
                
                Quiz de la leçon 7 sur la culture et les traditions françaises :
                """,
            quiz: Quiz(questions: [
                Question(questionText: "Quelle est la fête nationale en France ?", questionAswers: ["Le 14 juillet", "Noël", "Le Nouvel An"], rightAnswerIndex: 0),
                Question(questionText: "Quels sont les plats traditionnels de la cuisine française ?", questionAswers: ["La pizza, les spaghettis, le tiramisu", "Le hamburger, les frites, le milkshake", "La ratatouille, la bouillabaisse, le cassoulet"], rightAnswerIndex: 2),
                Question(questionText: "Qui est un célèbre peintre français ?", questionAswers: ["Pablo Picasso", "Claude Monet", "Salvador Dali"], rightAnswerIndex: 1),
                Question(questionText: "Quelle est une célèbre sculpture française ?", questionAswers: ["La Tour Eiffel", "Le Louvre", "La Joconde"], rightAnswerIndex: 0),
                Question(questionText: "Quel événement a marqué la fin de la monarchie en France ?", questionAswers: ["La Première Guerre mondiale", "La Révolution française", "La Renaissance"], rightAnswerIndex: 1),
                Question(
                    questionText: "What is Bastille Day and how is it celebrated in France?",
                    questionAswers: [
                        "It is a national holiday commemorating the French Revolution, celebrated with parades and fireworks.",
                        "It is a religious holiday celebrating the birth of Jesus Christ, celebrated with church services and family gatherings.",
                        "It is a cultural festival celebrating the diversity of France, celebrated with music and dance performances.",
                    ],
                    rightAnswerIndex: 0)
            ]))
        
        let lesson3 = Lesson(
            title: "The Subjunctive Mood",
            text: """
            I. Introduction
        The subjunctive mood is one of the most complex and challenging aspects of the French language. It is used to express doubt, uncertainty, emotion, and other subjective or hypothetical situations. In this lesson, you will learn the basics of the subjunctive mood and how to use it in different contexts.
        
        II. Formation of the Subjunctive
        
        The subjunctive is formed by taking the third-person plural of the present tense, dropping the "-ent," and adding the following endings:
        -e, -es, -e, -ions, -iez, -ent
        Examples:
        - Parler: que je parle, que tu parles, qu'il/elle/on parle, que nous parlions, que vous parliez, qu'ils/elles parlent
        - Finir: que je finisse, que tu finisses, qu'il/elle/on finisse, que nous finissions, que vous finissiez, qu'ils/elles finissent
        
        III. When to use the Subjunctive
        
        A. Expressions of doubt or uncertainty
        Examples: Il est possible que je sois en retard. (It is possible that I am late.)
        Je doute que tu sois sincère. (I doubt that you are sincere.)
        
        B. Emotions and feelings
        Examples: Je suis contente que tu sois ici. (I am happy that you are here.)
        Il est triste que nous partions demain. (It is sad that we are leaving tomorrow.)
        
        C. Impersonal expressions
        Examples: Il faut que nous partions maintenant. (We must leave now.)
        Il est important que vous sachiez cela. (It is important that you know that.)
        
        D. Expressions of necessity or obligation
        Examples: Il est nécessaire que tu viennes avec nous. (It is necessary that you come with us.)
        Il est obligatoire que nous fassions nos devoirs. (It is mandatory that we do our homework.)
        
        IV. Subjunctive vs. Indicative
        
        It is important to note that the subjunctive mood is used in situations where there is doubt, uncertainty, or subjectivity. In contrast, the indicative mood is used to express facts or certainty.
        Examples:
        Indicative: Je suis contente que tu es ici. (I am happy that you are here.)
        Subjunctive: Je suis contente que tu sois ici. (I am happy that you are here.)
        
        V. Conclusion
        
        In conclusion, the subjunctive mood is an essential aspect of the French language, and mastering it is crucial for expressing doubt, uncertainty, emotion, and other subjective or hypothetical situations. With practice and dedication, you can become proficient in using the subjunctive in different contexts.
        
        Quiz on the Subjunctive Mood:
        """,
        quiz: Quiz(questions: [
            Question(questionText: "What is the formation of the subjunctive?", questionAswers: ["Take the third-person plural of the present tense, drop the -ent, and add the appropriate endings", "Take the first-person singular of the past tense, add -ais, -ais, -ait, -ions, -iez, -aient", "Take the second-person singular of the present tense, add -e, -es, -e, -ions, -iez, -ent"], rightAnswerIndex: 0),
            Question(questionText: "Which of the following verbs is irregular in the subjunctive?", questionAswers: ["Aller", "Faire", "Voir"], rightAnswerIndex: 1),
                       Question(questionText: "Which of the following phrases triggers the use of the subjunctive?", questionAswers: ["Je suis sûr(e) que", "Il est certain que", "Il me semble que"], rightAnswerIndex: 2),
                       Question(questionText: "What is the correct subjunctive form for the verb 'prendre' in the first person singular?", questionAswers: ["que je prend", "que je prenne", "que je prendrai"], rightAnswerIndex: 1),
                       Question(questionText: "What is the correct subjunctive form for the verb 'être' in the third person plural?", questionAswers: ["qu'ils sontent", "qu'ils soient", "qu'ils étaient"], rightAnswerIndex: 1),
                       Question(questionText: "Which of the following verbs is commonly used with the subjunctive?", questionAswers: ["Aimer", "Croire", "Savoir"], rightAnswerIndex: 1),
                       Question(questionText: "What is the meaning of the following sentence: 'Il faut que tu viennes.'", questionAswers: ["It is necessary that you come.", "It is probable that you come.", "It is possible that you come."], rightAnswerIndex: 0)
                   ])
               )
        
        let lesson4 = Lesson(
            title: "Expressing cause and effect",
            text: """
            I. Introduction
            Objective of the lesson: to learn how to express cause and effect in French.
            Importance of understanding cause and effect in communication.

            II. Expressing Cause

            A. Using "parce que" - "because"
            Example: Je suis fatigué parce que j'ai travaillé toute la nuit. (I am tired because I worked all night)

            B. Using "car" - "for"
            Example: Je suis content, car j'ai eu une bonne note. (I am happy, for I got a good grade)

            C. Using "puisque" - "since"
            Example: Puisque tu es déjà là, on peut commencer. (Since you are already here, we can start)

            III. Expressing Effect

            A. Using "alors" - "so"
            Example: J'ai étudié beaucoup, alors j'ai réussi mon examen. (I studied a lot, so I passed my exam)

            B. Using "donc" - "therefore"
            Example: Il pleut beaucoup, donc je ne vais pas sortir. (It's raining a lot, therefore I am not going out)

            C. Using "si bien que" - "so much so that"
            Example: J'ai couru si vite si bien que j'ai gagné la course. (I ran so fast that I won the race)

            IV. Conversation

            Dialogue between two people for practicing expressing cause and effect in French.

            V. Conclusion

            Summary of the lesson: how to express cause and effect in French.
            Importance of using these expressions in communication.

            Quiz of the lesson 8 on expressing cause and effect:
            """,
        quiz: Quiz(questions: [
            Question(questionText: "What is the French word for 'because'?", questionAswers: ["car", "puisque", "parce que"], rightAnswerIndex: 2),
            Question(questionText: "What is the French word for 'therefore'?", questionAswers: ["donc", "alors", "si bien que"], rightAnswerIndex: 0),
            Question(questionText: "Complete the sentence: J'ai raté mon bus ________________.", questionAswers: ["alors je suis en retard", "puisque j'ai perdu mon portable", "si bien que j'ai dû prendre un taxi"], rightAnswerIndex: 1),
            Question(questionText: "Complete the sentence: Il a plu toute la journée, ________________ nous sommes restés à la maison.", questionAswers: ["donc", "parce que", "puisque"], rightAnswerIndex: 0),
            Question(questionText: "What is the French expression for 'so much so that'?", questionAswers: ["si bien que", "car", "parce que"], rightAnswerIndex: 0),
            Question(questionText: "Complete the sentence: J'ai travaillé très dur ________________, j'ai réussi mon examen.", questionAswers: ["puisque", "car", "alors"], rightAnswerIndex: 1)
        ])
    )
        
        let lesson5 = Lesson(
            title: "Décrire les gens et les personnalités",
            text: """
            I. Introduction
            Objectif de la leçon : apprendre le vocabulaire de base pour décrire les gens et les personnalités en français.
            Importance de connaître le vocabulaire pour décrire les gens dans diverses situations, comme dans un entretien d'embauche ou lors de la rencontre de nouvelles personnes.

            II. Les adjectifs descriptifs

            Les adjectifs descriptifs : grand(e), petit(e), mince, gros(se), beau/belle, laid(e), fort(e), faible, intelligent(e), stupide, drôle, sérieux/sérieuse, amusant(e), ennuyeux/ennuyeuse, sympathique, antipathique, timide, extraverti(e), introverti(e).
            Vocabulaire supplémentaire : calme, bruyant(e), généreux/généreuse, avare, ambitieux/ambitieuse, paresseux/paresseuse, travailleur/travailleuse.

            III. Les parties du corps

            Les parties du corps : la tête, les cheveux, les yeux, le nez, la bouche, les oreilles, les bras, les mains, les doigts, les jambes, les pieds.
            Vocabulaire supplémentaire : le visage, la poitrine, le dos, le ventre.

            IV. Les phrases utiles

            Les phrases utiles pour décrire les gens :
            1. Il/elle est grand(e)/petit(e)/mince/gros(se).
            2. Il/elle a les cheveux blonds/bruns/noirs/roux.
            3. Il/elle a les yeux bleus/verts/marron/noirs.
            4. Il/elle est intelligent(e)/stupide/drôle/sérieux(sérieuse).
            5. Il/elle est sympathique/antipathique/timide/extraverti(e)/introverti(e).

            V. Conversation

            Dialogue entre deux personnes pour pratiquer le vocabulaire appris dans cette leçon.

            VI. Conclusion

            Résumé de la leçon : les adjectifs descriptifs, les parties du corps, les phrases utiles pour décrire les gens et les personnalités.
            """,
        quiz: Quiz(questions: [
            Question(questionText: "Comment appelle-t-on une personne qui est très intelligente ?", questionAswers: ["Intelligent(e)", "Stupide", "Drôle"], rightAnswerIndex: 0),
            Question(questionText: "Qu'est-ce qu'on utilise pour voir les choses ?", questionAswers: ["Les yeux", "Le nez", "Les pieds"], rightAnswerIndex: 0),
            Question(questionText: "Comment appelle-t-on une personne qui est très sympathique ?", questionAswers: ["Sympathique", "Antipathique", "Timide"], rightAnswerIndex: 0),
            Question(questionText: "Comment décrit-on une personne qui est très grande ?", questionAswers: ["Il/elle est grand(e).", "Il/elle est petit(e).", "Il/elle est mince."], rightAnswerIndex: 0),
            Question(questionText: "Comment appelle-t-on une personne qui est très paresseuse ?", questionAswers: ["Paresseux/Paresune personne qui a les cheveux noirs et les yeux marron ?", "Il/elle a les cheveux noirs et les yeux marron.", "Il/elle a les cheveux blonds et les yeux bleus."], rightAnswerIndex: 0)
        ]))


       let lesson6 = Lesson(
        title: "Les pronoms relatifs",
        text: """
                I. Introduction
                Objectif de la leçon : apprendre les pronoms relatifs en français et comment les utiliser dans des phrases.

                II. Les pronoms relatifs simples

                Les pronoms relatifs simples sont :
                - qui
                - que
                - où

                Exemples d'utilisation :
                - Le livre qui est sur la table est à moi. (The book that is on the table is mine.)
                - La personne que j'ai rencontrée est très gentille. (The person whom I met is very kind.)
                - La ville où j'habite est très jolie. (The city where I live is very beautiful.)

                III. Les pronoms relatifs composés

                Les pronoms relatifs composés sont :
                - lequel/laquelle/lesquels/lesquelles
                - dont
                - où

                Exemples d'utilisation :
                - Le livre auquel je pense est très intéressant. (The book that I am thinking of is very interesting.)
                - La personne dont je parle est mon frère. (The person whom I am talking about is my brother.)
                - La ville dans laquelle j'habite est très jolie. (The city where I live is very beautiful.)

                IV. Les pronoms relatifs en général

                Exemples d'utilisation :
                - Le livre que je lis est très intéressant.
                - La personne qui parle est mon ami.
                - La ville où je suis née est très petite.
                - Lequel de ces deux livres préférez-vous ?
                - C'est un livre dont je ne me souviens plus du titre.

                V. Conversation

                Dialogue entre deux personnes pour pratiquer l'utilisation des pronoms relatifs.

                VI. Conclusion

                Résumé de la leçon : les pronoms relatifs simples et composés, et comment les utiliser dans des phrases en français.

                Quiz de la leçon 9 sur les pronoms relatifs :
                """,
            quiz: Quiz(questions: [
                Question(questionText: "Quels sont les pronoms relatifs simples ?", questionAswers: ["Qui, que, où", "Lequel, dont, où", "Quel, quelle, quels, quelles"], rightAnswerIndex: 0),
                Question(questionText: "Comment utilise-t-on le pronom relatif 'lequel' ?", questionAswers: ["Lequel est utilisé pour remplacer un nom précédé d'une préposition.", "Lequel est utilisé pour remplacer un nom précédé d'un adjectif.", "Lequel est utilisé pour remplacer un nom précédé d'un verbe."], rightAnswerIndex: 0),
                Question(questionText: "Comment utilise-t-on le pronom relatif 'dont' ?", questionAswers: ["Dont est utilisé pour remplacer un nom précédé de la préposition 'de'.", "Dont est utilisé pour remplacer un nom précédé de la préposition 'à'.", "Dont est utilisé pour remplacer un nom précédé de la préposition 'pour'."], rightAnswerIndex: 0),
                Question(questionText: "Comment utilise-t-on le pronom relatif 'où' ?", questionAswers: ["Où est utilisé pour remplacer un nom qui représente un lieu.", "Où est utilisé pour remplacer un nom qui représente une personne.", "Où est utilisé pour remplacer un nom qui représente un objet.", ], rightAnswerIndex: 0),
                Question(questionText: "Quel est le pronom relatif utilisé pour remplacer un nom précédé d'une préposition autre que 'de' ?", questionAswers: ["Qui", "Dont", "Lequel"], rightAnswerIndex: 1),
                Question(questionText: "Dans quelle phrase le pronom relatif est-il utilisé de manière incorrecte ?", questionAswers: ["Le livre que j'ai acheté est très intéressant.", "La personne à qui j'ai parlé était très aimable.", "Le livre lequel j'ai lu était ennuyeux"], rightAnswerIndex: 2)]))
                
                
            return Course(courseName: "Intermediare course", languageLevel: "Intermediare", lessons: [lesson1, lesson2, lesson3, lesson4, lesson5, lesson6])
    }
    
    func advanceLessons() -> Course {
        let lesson1 = Lesson(
            title: "Les temps verbaux avancés",
            text: """
            I. Introduction
            Objectif de la leçon : apprendre les temps verbaux avancés en français et leur utilisation appropriée dans des phrases complexes.

            II. Le conditionnel passé

            Le conditionnel passé est utilisé pour parler d'une action hypothétique qui se serait produite si une autre action avait eu lieu. Il se forme en utilisant le conditionnel présent du verbe avoir ou être suivi du participe passé du verbe principal.

            Exemples d'utilisation :
            - Si j'avais eu plus de temps, j'aurais visité tous les musées. (If I had had more time, I would have visited all the museums.)
            - Si tu étais venu hier, nous aurions pu sortir ensemble. (If you had come yesterday, we could have gone out together.)

            III. Le subjonctif imparfait

            Le subjonctif imparfait est utilisé pour exprimer une action qui était incertaine ou hypothétique dans le passé. Il se forme en utilisant la troisième personne du pluriel du passé simple du verbe suivi de la terminaison -sse.

            Exemples d'utilisation :
            - Il fallait que je réussisse mon examen. (I had to pass my exam.)
            - Si j'avais su qu'il était là, je serais resté chez moi. (If I had known he was there, I would have stayed home.)

            IV. Le gérondif

            Le gérondif est utilisé pour exprimer une action qui se déroule simultanément à une autre action. Il se forme en utilisant le verbe en train de suivi de l'infinitif du verbe principal.

            Exemples d'utilisation :
            - Je suis en train de manger. (I am eating.)
            - Ils étaient en train de discuter quand je suis arrivé. (They were talking when I arrived.)

            V. Le participe présent

            Le participe présent est utilisé pour exprimer une action qui se déroule en même temps qu'une autre action. Il se forme en utilisant la racine du verbe suivi de la terminaison -ant.

            Exemples d'utilisation :
            - Elle parle en mangeant. (She talks while eating.)
            - En lisant ce livre, j'ai appris beaucoup de choses. (By reading this book, I learned a lot of things.)

            VI. Conclusion

            Résumé de la leçon : le conditionnel passé, le subjonctif imparfait, le gérondif et le participe présent. Utilisation appropriée de ces temps verbaux dans des phrases complexes.
            """,
            quiz: Quiz(questions: [
                Question(questionText: "Quel temps verbal est utilisé pour exprimer une action simultanée à une autre action ?", questionAswers: ["Le gérondif", "Le participe présent", "Le subjonctif imparfait"], rightAnswerIndex: 0),
                Question(questionText: "Quel est le temps verbal utilisé pour parler d'une action hypothétique qui se serait produite si une autre action avait eu lieu ?", questionAswers: ["Le conditionnel passé", "Le subjonctif imparfait", "Le participe présent"], rightAnswerIndex: 0),
                Question(questionText: "Comment se forme le subjonctif imparfait ?", questionAswers: ["En utilisant la troisième personne du pluriel du passé simple du verbe suivi de la terminaison -sse", "En utilisant le verbe en train de suivi de l'infinitif du verbe principal", "En utilisant le conditionnel présent du verbe avoir ou être suivi du participe passé du verbe principal"], rightAnswerIndex: 0),
                Question(questionText: "Quel est le verbe auxiliaire utilisé pour former le conditionnel passé ?", questionAswers: ["être", "avoir", "aller"], rightAnswerIndex: 1),
                Question(questionText: "Quel est le temps verbal utilisé pour exprimer une action qui était incertaine ou hypothétique dans le passé ?", questionAswers: ["Le subjonctif imparfait", "Le conditionnel passé", " Le gérondif"], rightAnswerIndex: 0),
                Question(questionText: "Quel est le radical du participe présent du verbe \"manger\" ", questionAswers: ["mange", " mang", " manger"], rightAnswerIndex: 1)
        ]))
        
        let lesson2 = Lesson(
                    title: "La voix passive",
                    text: """
                    I. Introduction
                    Objectif de la leçon : apprendre à former la voix passive en français et à l'utiliser dans des phrases.

                    II. Formation de la voix passive

                    La voix passive est formée en utilisant l'auxiliaire être suivi du participe passé du verbe principal. Le sujet de la phrase est l'objet de l'action.

                    Exemples :
                    - Le livre est lu par Pierre. (The book is being read by Pierre.)
                    - La maison a été construite l'année dernière. (The house was built last year.)

                    III. Utilisation de la voix passive

                    La voix passive est souvent utilisée pour mettre l'accent sur l'action plutôt que sur la personne qui la réalise. Elle est également utilisée lorsque l'auteur de l'action est inconnu ou non important.

                    Exemples :
                    - La décision a été prise hier soir. (The decision was made last night.)
                    - Les fleurs sont arrosées tous les matins. (The flowers are watered every morning.)

                    IV. Formes spéciales

                    Certaines formes verbales ne peuvent pas être utilisées à la voix passive, comme le verbe aller suivi d'un infinitif ou le verbe réfléchi.

                    Exemples :
                    - Il va manger. (He is going to eat.) (Non passif : On ne peut pas dire "Manger est été allé par lui.")
                    - Elle s'est maquillée. (She put on makeup.) (Non passif : On ne peut pas dire "Maquiller a été fait à elle-même par elle.")

                    V. Conclusion

                    Résumé de la leçon : formation de la voix passive en utilisant l'auxiliaire être suivi du participe passé du verbe principal. Utilisation de la voix passive pour mettre l'accent sur l'action plutôt que sur la personne qui la réalise.
                    """,
                    quiz: Quiz(questions: [
                        Question(questionText: "Comment se forme la voix passive ?", questionAswers: ["En utilisant l'auxiliaire être suivi du participe passé du verbe principal", "En utilisant le verbe en train de suivi de l'infinitif du verbe principal", "En utilisant la troisième personne du pluriel du passé simple du verbe suivi de la terminaison -sse"], rightAnswerIndex: 0),
                        Question(questionText: "Pourquoi utilise-t-on la voix passive ?", questionAswers: ["Pour mettre l'accent sur l'action plutôt que sur la personne qui la réalise", "Pour mettre l'accent sur la personne qui réalise l'action", "Pour exprimer une action simultanée à une autre action"], rightAnswerIndex: 0),
                        Question(questionText: "Quelles formes verbales ne peuvent pas être utilisées à la voix passive ?", questionAswers: ["Le verbe aller suivi d'un infinitif", "Le subjonctif imparfait", "Le conditionnel passé"], rightAnswerIndex: 0),
                        Question(questionText: "Quel est le sujet de la phrase à la voix passive ?", questionAswers: ["L'objet de l'action", "La personne qui réalise l'action", "Le verbe auxiliaire"], rightAnswerIndex: 0),
                        Question(questionText: "Dans l'exemple 'La maison a été construite l'année dernière', qui a construit la maison ?", questionAswers: ["On ne sait pas", "Le sujet de la phrase n'a pas d'importance dans la voix passive", "Le propriétaire de la maison"], rightAnswerIndex: 0),
                        Question(questionText: "Peut-on utiliser la voix passive avec le verbe réfléchi ?", questionAswers: ["Non", "Oui", "Ça dépend du verbe utilisé"], rightAnswerIndex: 0),
                        ]))
        
        let lesson3 = Lesson(
            title: "Les subjonctifs",
            text: """
            I. Introduction
            Objectif de la leçon : comprendre le mode subjonctif en français, comment le former et comment l'utiliser.

            II. Formation du subjonctif présent

            Le subjonctif présent est formé en prenant la troisième personne du pluriel du verbe au présent, en enlevant la terminaison -ent et en ajoutant les terminaisons -e, -es, -e, -ions, -iez, -ent.

            Exemples :
            - Je souhaite que tu viennes demain. (I hope you come tomorrow.)
            - Il faut que nous partions tôt. (We have to leave early.)

            III. Formation du subjonctif imparfait

            Le subjonctif imparfait est formé en prenant la troisième personne du pluriel du verbe à l'imparfait, en enlevant la terminaison -ent et en ajoutant les terminaisons -sse, -sses, -ât, -assions, -assiez, -assent.

            Exemples :
            - Je voulais que tu vinsses avec moi. (I wanted you to come with me.)
            - Il était nécessaire que nous partissions tôt. (It was necessary for us to leave early.)

            IV. Utilisation du subjonctif

            Le subjonctif est utilisé pour exprimer des émotions, des souhaits, des doutes, des incertitudes et des actions hypothétiques. Il est souvent précédé de certaines conjonctions, telles que "il faut que", "je souhaite que", "il est important que", "bien que", "à moins que", "pour que", "afin que", "quoique", "sans que".

            Exemples :
            - Je suis content que tu sois venu. (I'm glad you came.)
            - Il est important que tu fasses attention. (It's important that you pay attention.)
            - Bien qu'il pleuve, nous sortirons. (Although it's raining, we'll go out.)

            V. Verbes suivis du subjonctif

            Certains verbes sont suivis du subjonctif. Il s'agit souvent de verbes exprimant l'émotion, la volonté, le doute ou la nécessité. Ces verbes sont souvent précédés de la conjonction "que".

            Exemples :
            - Il faut que tu sois présent à la réunion. (You have to be present at the meeting.)
            - Je doute qu'il réussisse son examen. (I doubt he will pass his exam.)
            - Il est important que nous fassions notre travail. (It's important that we do our work.)

            VI. Conclusion

            Résumé de la leçon : le subjonctif est un mode utilisé pour exprimer des émotions, des souhaits, des doutes, des incertitudes et des actions hypothétiques. Il est formé en prenant la troisième personne du pluriel du verbe au présent ou à l'imparfait, en enlevant la terminaison -ent et en ajoutant les terminaisons correspondantes. Il est souvent précédé de certaines conjonctions telles que "il faut que", "je souhaite que", "bien que","à moins que", "pour que", "afin que", "quoique", "sans que". Certains verbes sont suivis du subjonctif, tels que ceux exprimant l'émotion, la volonté, le doute ou la nécessité. Il est important de comprendre comment utiliser correctement le subjonctif pour éviter les erreurs courantes en français.
            "à moins que", "pour que", "afin que", "quoique", "sans que". Certains verbes sont suivis du subjonctif, tels que ceux exprimant l'émotion, la volonté, le doute ou la nécessité. Il est important de comprendre comment utiliser correctement le subjonctif pour éviter les erreurs courantes en français.
            """,
            quiz: Quiz(questions: [Question(questionText: "Comment forme-t-on le subjonctif présent en français ?", questionAswers: ["En prenant la première personne du singulier du verbe au présent", "En prenant la deuxième personne du pluriel du verbe au présent", " En prenant la troisième personne du pluriel du verbe au présent et en ajoutant les terminaisons -e, -es, -e, -ions, -iez, -ent."], rightAnswerIndex: 2), Question(questionText: "Quel est le mode utilisé pour exprimer des émotions, des souhaits, des doutes, des incertitudes et des actions hypothétiques ?", questionAswers: ["Le conditionnel", "L'impératif", "Le subjonctif"], rightAnswerIndex: 2)]))
        
        return Course(courseName: "Advance course", languageLevel: "advance", lessons: [lesson1, lesson2, lesson3])

    }
}
