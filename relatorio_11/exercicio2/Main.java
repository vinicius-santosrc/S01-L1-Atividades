package relatorio_11.exercicio2;

import java.util.ArrayList;

class Cafe {
    private String nome;
    private double preco;

    public Cafe(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public double calcularPrecoFinal() {
        return preco;
    }
}

class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return getPreco() + bonusAroma;
    }
}

class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void exibirMenu() {
        System.out.println("Menu do Leblanc:");

        for (Cafe cafe : cafes) {
            System.out.printf("- %s: R$ %.2f%n", cafe.getNome(), cafe.calcularPrecoFinal());
        }
    }
}

class CafeteriaLeblanc {
    private Menu menu;

    public CafeteriaLeblanc() {
        menu = new Menu();
    }

    public void adicionarCafeAoMenu(Cafe cafe) {
        menu.adicionarCafe(cafe);
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo ao Leblanc, o café mais tranquilo de Tokyo!");
        menu.exibirMenu();
    }
}

public class Main {
    public static void main(String[] args) {
        Cafe cafeSimples = new Cafe("Café simples", 8.00);
        Cafe cappuccino = new Cafe("Cappuccino", 12.50);
        CafeGourmet cafeEspecial = new CafeGourmet("Café gourmet do Sojiro", 18.00, 5.00);

        CafeteriaLeblanc leblanc = new CafeteriaLeblanc();
        leblanc.adicionarCafeAoMenu(cafeSimples);
        leblanc.adicionarCafeAoMenu(cappuccino);
        leblanc.adicionarCafeAoMenu(cafeEspecial);

        leblanc.abrirCafeteria();
    }
}
