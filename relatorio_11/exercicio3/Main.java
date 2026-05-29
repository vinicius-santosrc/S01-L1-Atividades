package relatorio_11.exercicio3;

import java.util.HashMap;

interface Rastreavel {
    String obterCoordenadas();
}

class Poder {
    private String nome;
    private int intensidade;

    public Poder(String nome, int intensidade) {
        this.nome = nome;
        this.intensidade = intensidade;
    }

    public String getNome() {
        return nome;
    }

    public int getIntensidade() {
        return intensidade;
    }
}

class Entidade {
    private String nome;

    public Entidade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}

class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome, String nomePoder, int intensidadePoder) {
        super(nome);
        this.poder = new Poder(nomePoder, intensidadePoder);
    }

    public Poder getPoder() {
        return poder;
    }

    @Override
    public String obterCoordenadas() {
        return "Alien detectado em órbita baixa: latitude 35.6895, longitude 139.6917";
    }
}

class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome, String nomePoder, int intensidadePoder) {
        super(nome);
        this.poder = new Poder(nomePoder, intensidadePoder);
    }

    public Poder getPoder() {
        return poder;
    }

    @Override
    public String obterCoordenadas() {
        return "Youkai rastreado em uma região espiritual: latitude 34.9671, longitude 135.7727";
    }
}

class RegistroOculto {
    private HashMap<String, Entidade> entidades;

    public RegistroOculto() {
        entidades = new HashMap<>();
    }

    public void registrarEntidade(Entidade entidade) {
        String nome = entidade.getNome();

        if (entidades.containsKey(nome)) {
            System.out.println("Aviso: a entidade " + nome + " já está registrada e não será adicionada novamente.");
            return;
        }

        entidades.put(nome, entidade);
        System.out.println("Entidade registrada: " + nome);
    }

    public void listarEntidades() {
        System.out.println("Entidades registradas pela Equipe de Detetives Ocultos:");

        for (Entidade entidade : entidades.values()) {
            if (entidade instanceof Rastreavel) {
                Rastreavel rastreavel = (Rastreavel) entidade;
                System.out.println("- " + entidade.getNome() + ": " + rastreavel.obterCoordenadas());
            }
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Alien alien1 = new Alien("Serpo", "Telecinese", 85);
        Alien alien2 = new Alien("Flatwoods", "Controle gravitacional", 90);

        Youkai youkai1 = new Youkai("Turbo Granny", "Velocidade sobrenatural", 95);
        Youkai youkai2 = new Youkai("Acrobatic Silky", "Agilidade espiritual", 80);

        RegistroOculto registro = new RegistroOculto();

        registro.registrarEntidade(alien1);
        registro.registrarEntidade(alien2);
        registro.registrarEntidade(youkai1);
        registro.registrarEntidade(youkai2);

        registro.registrarEntidade(alien1);

        registro.listarEntidades();
    }
}
