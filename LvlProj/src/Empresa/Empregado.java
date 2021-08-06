package src.Empresa;

import java.util.LinkedList;

class Empregado {
    private String cpf;
    private String cep;
    private String nome;
    private String matricula;
    private String endereco;
    private Departamento departamento;
    private LinkedList<Projeto> projetos;    

    public Departamento getDepartamento() {
        return departamento;
    }

    public String getCep() {
        return cep;
    }

    public String getCpf() {
        return cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getMatricula() {
        return matricula;
    }

    public String getNome() {
        return nome;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
