package src.Empresa;

import java.util.LinkedList;

class Departamento {
    private String nome;
    private String sigla;
    private LinkedList<Empregado> empregados;

    public String getNome() {
        return nome;
    }

    public LinkedList<Empregado> getEmpregados() {
        return empregados;
    }

    public String getSigla() {
        return sigla;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEmpregados(LinkedList<Empregado> empregados) {
        this.empregados = empregados;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }
}