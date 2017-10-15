package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Quiz {
    public static double soma = 0;
    public static int contagem = 0;

    public static double getMedia() {
        return soma / (double) contagem;
    }

    private static List<Perguntas> pergunta;

    public static List<Perguntas> getPerguntaLista() {
        if (pergunta == null) {
            pergunta = new ArrayList<>();
            Perguntas q1 = new Perguntas(
                    "De onde é a invenção do chuveiro elétrico? ", "Brasil",
                    new String[]{
                        "Brasil",
                        "Inglaterra",
                        "França"
                    }
            );

            Perguntas q2 = new Perguntas(
                    "Quais são o menor e maior pais do mundo?", "Vaticano e Rússia",
                    new String[]{
                        "Vaticano e Rússia",
                        "Nauru e China",
                        "Mônaco e Canadá"
                    }
            );

            Perguntas q3 = new Perguntas(
                    "Qual o livro mais vendido no mundo a seguir á Biblia?", "Dom Quixote",
                    new String[]{
                        "Dom Quixote",
                        "O senhor dos Aneis",
                        "O Pequeno Principe"
                    }
            );

            Perguntas q4 = new Perguntas(
                    "Quais os paises que têm a maior e a menor expectatica de vida?", "Japão e Serra Leoa",
                    new String[]{
                        "Japão e Serra Leoa",
                        "Australia e Afeganistão",
                        "Estados Unidos e Angola"
                    }
            );

            Perguntas q5 = new Perguntas(
                    "O que a palavra legend significa em português? ", "Lenda",
                    new String[]{
                        "Lenda",
                        "Legenda",
                        "Legendário"
                    }
            );

            Perguntas q6 = new Perguntas(
                    "Qual o número mínimo de jogadores numa partida de futebol? ", "7",
                    new String[]{
                        "7",
                        "8",
                        "9"
                    }
            );

            Perguntas q7 = new Perguntas(
                    "Quem pintou \"Guernica\"? ", "Pablo Picasso",
                    new String[]{
                        "Pablo Picasso",
                        "Paul Cézanne",
                        "Diego Rivera"
                    }
            );

            Perguntas q8 = new Perguntas(
                    "Quanto tempo a luz do Sol demorar para chegar à Terra?", "8 minutos",
                    new String[]{
                        "8 minutos",
                        "1 dia",
                        "12 minutos"
                    }
            );

            Perguntas q9 = new Perguntas(
                    "Qual a nacionalidade de Che Guevara", "Argentina",
                    new String[]{
                        "Argentina",
                        "Peruana",
                        "Boliviana"
                    }
            );

            Perguntas q10 = new Perguntas(
                    "Qual a altura da rede de volei nos jogos masculino e feminino? ", "2,4m a 2,24m",
                    new String[]{
                        "2,4m a 2,24m",
                        "2,4 para ambos",
                        "1,8m e 1,5m"
                    }
            );
            Perguntas q11= new Perguntas(
                    "Em que periodo da pré-historia o fogo foi descorberto? ", "Paleolitico",
                    new String[]{
                        "Paleolitico",
                        "Neolitico",
                        "Idade média"
                    }
            );
            Perguntas q12 = new Perguntas(
                    "Qual a montanha masi alta do Brasil? ", "Pico da Neblina",
                    new String[]{
                        "Pico da Neblina",
                        "Pico Paraná",
                        "Monta Roraima"
                    }
            );
            Perguntas q13 = new Perguntas(
                    "Em qual local da Ásia o português e lingua oficial? ", "Macau",
                    new String[]{
                        "Macau",
                        "India",
                        "Filipinas"
                    }
            );
            Perguntas q14 = new Perguntas(
                    "Qual destes países é transcontinental? ", "Rússia",
                    new String[]{
                        "Rússia",
                        "Istamblur",
                        "Tanzânia"
                    }
            );
            Perguntas q15 = new Perguntas(
                    "Nome que se dá a uma porção de terra cercada de água por todos os lados? ", "Ilha",
                    new String[]{
                        "Lagoa",
                        "Ilha",
                        "Praia"
                    }
            );
            Perguntas q16 = new Perguntas(
                    "Cidade Brasileira onde esta o rio Tietê? ", "São Paulo",
                    new String[]{
                        "São Paulo",
                        "Rio de Janeiro",
                        "Recife"
                    }
            );
            
            pergunta.add(q1);
            pergunta.add(q2);
            pergunta.add(q3);
            pergunta.add(q4);
            pergunta.add(q5);
            pergunta.add(q6);
            pergunta.add(q7);
            pergunta.add(q8);
            pergunta.add(q9);
            pergunta.add(q10);
            pergunta.add(q11);
            pergunta.add(q12);
            pergunta.add(q13);
            pergunta.add(q14);
            pergunta.add(q15);
            pergunta.add(q16);
        }
        Collections.shuffle(pergunta);
        
        return pergunta;
    }
   
}