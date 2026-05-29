package relatorio_11.exercicio4;

import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void virarPrato();
}

class Lagosta extends Monstro {
    public Lagosta(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi cozinha a " + getNome() + " na chapa até ficar dourada e suculenta.");
    }
}

class Cogumelo extends Monstro {
    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi refoga o " + getNome() + " lentamente para realçar seu sabor da masmorra.");
    }
}

class Tempero {
    private String nome;
    private String quantidade;

    public Tempero(String nome, String quantidade) {
        this.nome = nome;
        this.quantidade = quantidade;
    }

    public String getNome() {
        return nome;
    }

    public String getQuantidade() {
        return quantidade;
    }
}

class Prato {
    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro, String nomeTempero, String quantidadeTempero) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero(nomeTempero, quantidadeTempero);
    }

    public void servir() {
        System.out.println("Prato: " + nome);
        monstro.virarPrato();
        System.out.println("Tempero usado: " + tempero.getNome() + " - " + tempero.getQuantidade());
    }
}

public class Main {
    public static void main(String[] args) {
        Lagosta lagosta = new Lagosta("Lagosta Gigante da Masmorra");
        Cogumelo cogumelo = new Cogumelo("Cogumelo Ambulante");

        Prato pratoLagosta = new Prato("Lagosta grelhada da masmorra", lagosta, "Sal de pedra", "2 pitadas");
        Prato pratoCogumelo = new Prato("Ensopado de cogumelo ambulante", cogumelo, "Ervas subterrâneas", "1 colher");

        pratoLagosta.servir();
        pratoCogumelo.servir();

        ArrayList<Prato> cardapioExpedicao = new ArrayList<>();
        cardapioExpedicao.add(pratoLagosta);
        cardapioExpedicao.add(pratoCogumelo);

        System.out.println("Cardápio da expedição:");

        for (Prato prato : cardapioExpedicao) {
            prato.servir();
        }
    }
}
