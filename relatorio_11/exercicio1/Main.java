package relatorio_11.exercicio1;

import java.util.ArrayList;

abstract class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public abstract void apresentar();
}

class Mago extends Personagem {
    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Olá, eu sou " + getNome() + ", tenho " + getIdade() + " anos e posso usar magia para transformar o castelo.");
    }
}

class Divisao {
    private String nome;
    private String funcao;

    public Divisao(String nome, String funcao) {
        this.nome = nome;
        this.funcao = funcao;
    }

    public String getNome() {
        return nome;
    }

    public String getFuncao() {
        return funcao;
    }
}

class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {
        System.out.println("Divisões do Castelo Animado:");

        for (Divisao divisao : divisoes) {
            System.out.println("- " + divisao.getNome() + ": " + divisao.getFuncao());
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27);
        howl.apresentar();

        Divisao quarto = new Divisao("Quarto", "Descanso dos habitantes");
        Divisao laboratorio = new Divisao("Laboratório", "Criação de poções e feitiços");
        Divisao cozinha = new Divisao("Cozinha", "Preparação das refeições");

        ArrayList<Divisao> divisoes = new ArrayList<>();
        divisoes.add(quarto);
        divisoes.add(laboratorio);

        CasteloAnimado castelo = new CasteloAnimado(divisoes);
        castelo.adicionarDivisao(cozinha);

        castelo.listarDivisoes();
    }
}
