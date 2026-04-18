using System;
using System.Collections.Generic;

class ReliquiaMagica
{
    public string NomeItem { get; set; }

    public ReliquiaMagica(string nome)
    {
        NomeItem = nome;
    }
}

class BauDeReliquias
{
    private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>();

    public void GuardarItem(ReliquiaMagica item)
    {
        reliquias.Add(item);
    }

    public List<ReliquiaMagica> ListarItens()
    {
        return reliquias;
    }
}

class ItemDeAcampamento
{
    public string Nome { get; set; }

    public ItemDeAcampamento(string nome)
    {
        Nome = nome;
    }
}

class Maga
{
    public string Nome { get; set; }

    private BauDeReliquias bau;

    public List<ItemDeAcampamento> ItensAcampamento { get; set; }

    public Maga(string nome, List<ItemDeAcampamento> itensAcampamento)
    {
        Nome = nome;
        bau = new BauDeReliquias();
        ItensAcampamento = itensAcampamento; 
    }

    public void AdicionarReliquia(ReliquiaMagica item)
    {
        bau.GuardarItem(item);
    }

    public void MostrarReliquias()
    {
        Console.WriteLine("Relíquias no Baú:");
        foreach (var r in bau.ListarItens())
        {
            Console.WriteLine("- " + r.NomeItem);
        }
    }

    public void MostrarItensAcampamento()
    {
        Console.WriteLine("Itens de Acampamento:");
        foreach (var item in ItensAcampamento)
        {
            Console.WriteLine("- " + item.Nome);
        }
    }
}

class Program
{
    static void Main(string[] args)
    {
        List<ItemDeAcampamento> itens = new List<ItemDeAcampamento>();
        itens.Add(new ItemDeAcampamento("Saco de Dormir"));
        itens.Add(new ItemDeAcampamento("Pote de Cozinha"));

        Maga frieren = new Maga("Frieren", itens);

        frieren.AdicionarReliquia(new ReliquiaMagica("Anel de Prata"));
        frieren.AdicionarReliquia(new ReliquiaMagica("Grimório Antigo"));

        frieren.MostrarItensAcampamento();
        Console.WriteLine();
        frieren.MostrarReliquias();
    }
}
