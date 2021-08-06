package src.Empresa;

import java.util.LinkedList;

class Departamento {
    private String nome;
    private String sigla;
    private LinkedList<Projeto> projetos = new LinkedList<Projeto>();

    public String getNome() {
        return nome;
    }

    public LinkedList<Projeto> getProjetos() {
        return projetos;
    }

    public String getSigla() {
        return sigla;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setProjetos(LinkedList<Projeto> projetos) {
        this.projetos = projetos;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }
}