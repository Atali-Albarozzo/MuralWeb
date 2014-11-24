package br.com.muralweb.modelo;

import java.util.Calendar;

public class Usuario {
	private long cd_seq_usuario; 
	private String cd_usuario; 
	private String senha; 
//	private String nm_usuario;
	private String tp_usuario; 
	private String dt_inclusao;
//	private String nm_email;
	private String dt_nascimento;
//	private String nm_telefone;
//	private String nm_celular;
//	private String nm_comentarios;
	
	
	public String getDt_nascimento() {
		return dt_nascimento;
	}
	public void setDt_nascimento(String dt_nascimento) {
		this.dt_nascimento = dt_nascimento;
	}
	public String getDt_inclusao() {
		return dt_inclusao;
	}
	public void setDt_inclusao(String dt_inclusao) {
		this.dt_inclusao = dt_inclusao;
	}
	public long getCd_seq_usuario() {
		return cd_seq_usuario;
	}
	public void setCd_seq_usuario(long cd_seq_usuario) {
		this.cd_seq_usuario = cd_seq_usuario;
	}
	public String getCd_usuario() {
		return cd_usuario;
	}
	public void setCd_usuario(String cd_usuario) {
		this.cd_usuario = cd_usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getTp_usuario() {
		return tp_usuario;
	}
	public void setTp_usuario(String tp_usuario) {
		this.tp_usuario = tp_usuario;
	}
}
