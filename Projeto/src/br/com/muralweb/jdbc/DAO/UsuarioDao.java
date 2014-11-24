package br.com.muralweb.jdbc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import br.com.muralweb.jdbc.ConnectionFactory;
import br.com.muralweb.modelo.Usuario;
 
public class UsuarioDao {
	private Connection connection;
	
	public UsuarioDao(){
		this.connection = new ConnectionFactory().getConnection(); 
	}
	
	public void adiciona(Usuario usuario){
		String sql = "INSERT INTO USUARIOS (CD_USUARIO, " +
				"							SENHA, " +
				"							TP_USUARIO," +
				"							DT_INCLUSAO," +
			//	"							nm_usuario," +
				"							dt_nascimento)" +
			//	"							nm_email," +
			//	"							nm_telefone," +
			//	"							nm_celular," +
			//	" 							nm_comentarios)" + // 10
				" 				    VALUES (?,?,?, SYSDATE(), DATE_FORMAT(?, '%Y-%m-%d'))";		

		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			Date DataNascimento = null;
			System.out.println("chegou onde interessa0");
			
			try {
				String dtStr = new String(usuario.getDt_nascimento());
				System.out.println(usuario.getDt_nascimento());
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
//				System.out.println(dtStr.replace('/','-'));
//				DataNascimento = sdf.parse(dtStr);
				System.out.println("Data Nascimento: " + DataNascimento);
				
				java.sql.Date date = java.sql.Date.valueOf("2014-10-12");
			} catch (ParseException e) {
				System.out.println("Erro de no Parse: " + e);
			}
			
			
			System.out.println("chegou onde interessa");
			stmt.setString(1,usuario.getCd_usuario());
			stmt.setString(2,usuario.getSenha());
			stmt.setString(3,usuario.getTp_usuario());
			stmt.setDate(4, new java.sql.Date(DataNascimento.getTime()));
//			stmt.setDate(4, new Date(DataInclusao.getTimeInMillis()));
//			stmt.setDate(4, new Date(usuario.getDt_inclusao().getTimeInMillis()));			
			//stmt.setString(5,usuario.getNm_usuario());
			//stmt.setDate(6, new Date(usuario.getDt_nascimento().getTimeInMillis()));
//			stmt.setString(7,usuario.getNm_email());
//			stmt.setString(8,usuario.getNm_telefone());
//			stmt.setString(9,usuario.getNm_celular());
//			stmt.setString(10,usuario.getNm_comentarios());
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void altera(Usuario usuario, long id){
		String sql = "UPDATE USUARIOS SET CD_USUARIO = COALESCE(?, CD_USUARIO), 	" +
					 " 					  SENHA = COALESCE(?, SENHA),				" +
					 " 					  TP_USUARIO = COALESCE(?, TP_USUARIO)		" +
					 "					  nm_usuario = COALESCE(?, nm_usuario)  	" +
					 "					  dt_nascimento = COALESCE(?, dt_nascimento " +
					 "					  nm_email = COALESCE(?, nm_email)			" +
					 "					  nm_telefone = COALESCE(?, nm_telefone)	" +
					 "					  nm_celular = COALESCE(?, nm_celular		" +
					 " 					  nm_comentarios = COALESCE(?, nm_comentarios)" +
				"WHERE CD_SEQ_USUARIO = ?";
		
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, usuario.getCd_usuario());
			stmt.setString(2, usuario.getSenha());
			stmt.setString(3, usuario.getTp_usuario());
//			stmt.setString(4, usuario.getNm_usuario());
//			stmt.setDate(5, new Date(usuario.getDt_nascimento().getTimeInMillis()));
//			stmt.setString(6, usuario.getNm_email());
//			stmt.setString(7, usuario.getNm_telefone());
//			stmt.setString(8, usuario.getNm_celular());
//			stmt.setString(9, usuario.getNm_comentarios());
			stmt.setLong(10, id);
			
			stmt.execute();
			stmt.close();			
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void remove(long id){
		String sql = "DELETE FROM USUARIOS WHERE CD_SEQ_USUARIO = ?";
		
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setLong(1, id);
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public List<Usuario> getLista(){
		try {
			List<Usuario> ListaUsuarios = new ArrayList<Usuario>();
			PreparedStatement stmt = this.connection.prepareStatement("Select * from USUARIOS");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()){
				Usuario usuario = new Usuario();
				usuario.setCd_usuario(rs.getString("cd_usuario"));
				
				Calendar DataInclusao = Calendar.getInstance();
				DataInclusao.setTime(rs.getDate("dt_inclusao"));
				usuario.setDt_inclusao(DataInclusao);
				
				Calendar DataNascimento = Calendar.getInstance();
				DataNascimento.setTime(rs.getDate("dt_nascimento"));
//				usuario.setDt_nascimento(DataNascimento);
				
				usuario.setTp_usuario(rs.getString("tp_usuario"));
//				usuario.setNm_usuario(rs.getString("nm_usuario"));
//				usuario.setNm_email(rs.getString("nm_email"));
//				usuario.setNm_telefone(rs.getString("nm_telefone"));
//				usuario.setNm_celular(rs.getString("nm_celular"));
//				usuario.setNm_comentarios(rs.getString("nm_comentarios"));
				
				ListaUsuarios.add(usuario);
			}
			
			rs.close();
			stmt.close();
			return ListaUsuarios;
			
		} catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
}