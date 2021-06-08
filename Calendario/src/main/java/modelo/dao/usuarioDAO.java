package modelo.dao;
import conexion.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.usuario;

public class usuarioDAO extends conexion {

    public usuario validarUsuario(String usuario, String password){
        usuario u = null;
        String sql = "select * from usuario WHERE nombreUsuario=? and password=?";
        cn = abrirConexion();
        try{
            ps = cn.prepareStatement(sql);
            //asignar valor a los parametros ?,?
            ps.setString(1, usuario);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if(rs.next()){
                u = new usuario();
                u.setIdusuario(rs.getInt("idusuario"));
                u.setNombreUsuario(rs.getString("nombreUsuario"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
            }
        } catch (SQLException ex) {
            System.out.println("Error en validar usuario:" + ex.getMessage());
        } finally {
            cerrar(cn);
            cerrar(ps);
            cerrar(rs);
        } 
        return u;
    }

    public void createUsuario(usuario user){
        try {
            String sql = "insert into usuario(nombreUsuario, password ,email) values (?,?,?)";
            cn = abrirConexion();
            ps = cn.prepareStatement(sql);
            ps.setString(1, user.getNombreUsuario());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getEmail());
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println("Error en insertar usuario:" + ex.getMessage());
        } finally {
            cerrar(cn);
            cerrar(ps);
            cerrar(rs);
        }
    }
    
}
