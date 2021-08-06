package src.Empresa;

import java.util.LinkedList;

class Projeto {
    private String nome;
    private LinkedList<Empregado> empregados = new LinkedList<Empregado>();
    private double verba;

    public void setEmpregados(LinkedList<Empregado> empregados) {
        this.empregados = empregados;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setVerba(double verba) {
        this.verba = verba;
    }

    public LinkedList<Empregado> getEmpregados() {
        return empregados;
    }
    
    public String getNome() {
        return nome;
    }

    public double getVerba() {
        return verba;
    }
}
