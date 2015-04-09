package dao.mysql;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import beans.*;

import daofactories.MySqlDaoFactory;
import dao.interfaces.UsuarioDAO;

public class Mysql_UsuarioDAO extends MySqlDaoFactory implements UsuarioDAO {

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean agregar(UsuarioBean user) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<UsuarioBean> listar() throws Exception {

		List<UsuarioBean> usuarios = new ArrayList<UsuarioBean>();

		try {

			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * from persona");
			UsuarioBean usuario = null;
			while (rs.next()) {
				usuario = new UsuarioBean();
				usuario.setIdPersona(rs.getString("idPersona"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApPaterno(rs.getString("apPaterno"));
				usuario.setApMaterno(rs.getString("apMaterno"));
				usuario.setDirDomicilio(rs.getString("dirDomicilio"));
				usuario.setCorreo(rs.getString("correo"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setClave(rs.getString("clave"));
				usuario.setIdUbigeo(rs.getString("idUbigeo"));
				usuario.setTelefono(rs.getString("telefono"));
				usuarios.add(usuario);
			}
			con.close();

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return usuarios;
	}

	@Override
	public boolean actualizar(UsuarioBean user) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UsuarioBean verificar(String us, String pass) throws Exception {

		UsuarioBean usuario = null;

		try {

			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("SELECT * from persona where usuario='" + us
							+ "' and clave ='" + pass + "'");

			while (rs.next()) {
				usuario = new UsuarioBean();
				usuario.setIdPersona(rs.getString("idPersona"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApPaterno(rs.getString("apPaterno"));
				usuario.setApMaterno(rs.getString("apMaterno"));
				usuario.setDirDomicilio(rs.getString("dirDomicilio"));
				usuario.setCorreo(rs.getString("correo"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setClave(rs.getString("clave"));
				usuario.setIdUbigeo(rs.getString("idUbigeo"));
				usuario.setTelefono(rs.getString("telefono"));
			}
			con.close();

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return usuario;
	}

	@Override
	public EmpleadoBean verificarDocente(String id) throws Exception {

		EmpleadoBean empleado = null;

		try {

			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("SELECT * from empleado where idPersona ="
							+ id);

			while (rs.next()) {
				empleado = new EmpleadoBean();
				empleado.setIdPersona(rs.getString("idPersona"));
				empleado.setIdRol(rs.getInt("idRol"));
			}
			con.close();

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return empleado;
	}

	@Override
	public String obtenerNombre(String id) throws Exception {
		String nombre = "0";
		try {

			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("SELECT * from Persona where idPersona='"
							+ id + "'");
			while (rs.next()) {
				nombre = rs.getString("nombre") + " "
						+ rs.getString("apPaterno") + " "
						+ rs.getString("apMaterno");
				nombre = nombre.toUpperCase();
			}
			con.close();

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return nombre;
	}

}
