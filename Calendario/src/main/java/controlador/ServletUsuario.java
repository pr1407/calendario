package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.usuario;
import modelo.dao.usuarioDAO;

@WebServlet(name = "ServletUsuario",urlPatterns = {"/ServletUsuario","/Home","/crearUsuario","/logOut","/tareas","/nuevaTarea","/etiquetas","/listas","/agenda"})
public class ServletUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {            
            
            String path = request.getServletPath();
            
            if(path.equals("/Home")){
                
                String usuario = request.getParameter("txtusuario");
                String password = request.getParameter("txtpassword");
                usuario user = new usuarioDAO().validarUsuario(usuario, password);
                if(user !=null){
                    request.getSession().setAttribute("usuario", user);
                    request.getRequestDispatcher("WEB-INF/main.jsp").forward(request, response);
                }
            }
            
            if(path.equals("/crearUsuario")){
                String username = request.getParameter("newusername");
                String password = request.getParameter("newpassword");
                String email = request.getParameter("newemail");
                usuario user = new usuario();
                user.setNombreUsuario(username);
                user.setPassword(password);
                user.setEmail(email);
                new usuarioDAO().createUsuario(user);
                request.getRequestDispatcher("ingresarUsuario.jsp").forward(request, response);
            }
            
            if(path.equals("/logOut")){
                request.getSession().invalidate();
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            
            if(path.equals("/tareas")){
                request.getRequestDispatcher("WEB-INF/tareas/tareas.jsp").forward(request, response);
            }
            if(path.equals("/nuevaTarea")){
                request.getRequestDispatcher("WEB-INF/tareas/nuevaTarea.jsp").forward(request, response);
            }
            if(path.equals("/etiquetas")){
                request.getRequestDispatcher("WEB-INF/tareas/etiquetas.jsp").forward(request, response);
            }
            if(path.equals("/agenda")){
                request.getRequestDispatcher("WEB-INF/tareas/agenda.jsp").forward(request, response);
            }
            if(path.equals("/listas")){
                request.getRequestDispatcher("WEB-INF/tareas/listas.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
