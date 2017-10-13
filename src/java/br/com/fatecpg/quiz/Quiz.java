package br.com.fatecpg.quiz;

import java.util.ArrayList;

public class Quiz {
    public static double nivelF = .0;
    public static double soma = .0;
    public static int contagem = 0;

    public static double getNivelFinal() {
        return nivelF;
    }

    public static double getMedia() {
        return soma / (double) contagem;
    }

    public static double Validacao(String[] responde) {
        int correto = 0;
        for (int i = 0; i < pergunta.size(); i++) {
            Perguntas q = pergunta.get(i);
            if (q.getResposta().equals(responde[i])) {
                correto++;
            }
        }
        double nivel = 100 * ((double) correto / (double) pergunta.size());
        contagem++;
        soma += nivel;
        nivelF = nivel;
        return nivel;
    }

    private static ArrayList<Perguntas> pergunta;

    public static ArrayList<Perguntas> getPergunta() {
        if (pergunta == null) {
            pergunta = new ArrayList<>();
            Perguntas q1 = new Perguntas(
                    "\"" + "", "1-De onde é a inverção do chuveiro elétrico? ",
                    new String[]{
                        "Brasil",
                        "Inglaterra",
                        "França"
                    }
            );

            Perguntas q2 = new Perguntas(
                    "\"" + "", "2-Quais são o menor e maior pais do mundo?",
                    new String[]{
                        "Vaticano e Rússia",
                        "Nauru e China",
                        "Mônaco e Canadá"
                    }
            );

            Perguntas q3 = new Perguntas(
                    "\"" + "", "3-Qual o livro mais vendido no mundo a seguir á Biblia?",
                    new String[]{
                        "Dom Quixote",
                        "O senhor dos Aneis",
                        "O Pequeno Principe"
                    }
            );

            Perguntas q4 = new Perguntas(
                    "\"" + "", "4-Quais os paises que têm a maior e a menor expectatica de vida?",
                    new String[]{
                        "Japão e Serra Leoa",
                        "Australia e Afeganistão",
                        "Estados Unidos e Angola"
                    }
            );

            Perguntas q5 = new Perguntas(
                    "\"" + "", "5-O que a palavra legend significa em português? ",
                    new String[]{
                        "Lenda",
                        "Legenda",
                        "Legendário"
                    }
            );

            Perguntas q6 = new Perguntas(
                    "\"" + "", "6-Qual o número mínimo de jogadores numa partida de futebol? ",
                    new String[]{
                        "7",
                        "8",
                        "9"
                    }
            );

            Perguntas q7 = new Perguntas(
                    "\"" + "", "7-Quem pintou \"Guernica\"? ",
                    new String[]{
                        "Pablo Picasso",
                        "Paul Cézanne",
                        "Diego Rivera"
                    }
            );

            Perguntas q8 = new Perguntas(
                    "\"" + "", "8-Quanto tempo a luz do Sol demorar para chegar à Terra?",
                    new String[]{
                        "8 minutos",
                        "1 dia",
                        "12 minutos"
                    }
            );

            Perguntas q9 = new Perguntas(
                    "\"" + "", "9-Qual a nacionalidade de Che Guevara",
                    new String[]{
                        "Argentina",
                        "Peruana",
                        "Boliviana"
                    }
            );

            Perguntas q10 = new Perguntas(
                    "\"" + "", "10-Qual a altura da rede de volei nos jogos masculino e feminino? ",
                    new String[]{
                        "2,4m a 2,24m",
                        "2,4 para ambos",
                        "1,8m e 1,5m"
                    }
            );
            Perguntas q11= new Perguntas(
                    "\"" + "", "11-Em que periodo da pré-historia o fogo foi descorberto? ",
                    new String[]{
                        "Paleolitico",
                        "Neolitico",
                        "Idade média"
                    }
            );
            Perguntas q12 = new Perguntas(
                    "\"" + "", "12-Qual a montanha masi alta do Brasil? ",
                    new String[]{
                        "Pico da Neblina",
                        "Pico Paraná",
                        "Monta Roraima"
                    }
            );
            Perguntas q13 = new Perguntas(
                    "\"" + "", "13-Em qual local da Ásia o português e lingua oficial? ",
                    new String[]{
                        "Macau",
                        "India",
                        "Filipinas"
                    }
            );
            Perguntas q14 = new Perguntas(
                    "\"" + "", "14-Qual destes países é transcontinental? ",
                    new String[]{
                        "Rússia",
                        "Istamblur",
                        "Tanzânia"
                    }
            );
            Perguntas q15 = new Perguntas(
                    "\"" + "", "15-Nome que se dá a uma porção de terra cercada de água por todos os lados? ",
                    new String[]{
                        "Lagoa",
                        "Ilha",
                        "Praia"
                    }
            );
            Perguntas q16 = new Perguntas(
                    "\"" + "", "16-Cidade Brasileira onde esta o rio Tietê? ",
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
        return pergunta;
    }
}