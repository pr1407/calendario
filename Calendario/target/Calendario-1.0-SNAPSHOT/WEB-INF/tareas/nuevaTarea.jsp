<%@page import="modelo.bean.usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Nueva Tarea</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Styles/modificacion.css">
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
</head>
    <% usuario user=(usuario)request.getSession().getAttribute("usuario"); %>
<body>
    <nav>
        <div class="nav-wrapper black">
                <div class="container">
                    <a href="" class="brand-logo" id="position-relative">JAPA</a>
                    <a href="" data-target="menu-side" class="sidenav-trigger" id="display-inline">
                        <i class="material-icons">menu</i></a>
                        <ul id="nav-mobile" class="right hide-on-med-and-down">
                            <li><i class="material-icons btn black">autorenew</i></li>
                            <li><i class="material-icons btn black">build</i></li>
                            <li><i class="material-icons btn black">search</i>   </li>
                          </ul>
                </div>
                <div class="container">
                    
                </div>          
        </div>
    </nav>

        <!--La barra de navegacion-->
        <ul id="menu-side" class="sidenav blue-grey lighten-5">
                <li>
                    <div class="user-view">
                        <div class="background">
                            <img src="https://i.pinimg.com/originals/f9/a9/8f/f9a98ff98167367f51f30db94eb85514.jpg">
                        </div>
                        <a href="#user"><img class="circle"
                                src="https://img1.freepng.es/20180920/lho/kisspng-bob-the-builder-keith-chapman-clip-art-television-cartoon-characters-more-cartoon-png-images-5ba41133d28a15.9458643615374789638624.jpg"></a>
                        <a href="#name"><span class="white-text name"><%= user.getNombreUsuario() %></span></a>
                        <a href="#email"><span class="white-text email"><%= user.getEmail() %></span></a>
                    </div>
                </li>
                <li><a href="nuevaTarea"><i class="material-icons">add</i>Nueva tarea</a></li>
                <li><a href="agenda">Agenda <i class="material-icons">event</i></a></li>
                <li><a href="tareas">Tareas <i class="material-icons">book</i></a></li>
                <li><a href="listas">Listas <i class="material-icons">format_list_bulleted</i></a></li>
                <li><a href="etiquetas">Etiquetas <i class="material-icons">lightbulb_outline</i></a></li>
                <li><a href="logOut">Cerrar Sesion <i class="material-icons">logout</i></a></li>
            </ul>
        <div class="section container" id="principal">
            <div class="row">
                <form action="" class="col s12">
                    <div class="row card-panel">
                        <h5>Crear Tarea: </h5>
                        <div class="input-field col s12">
                            <input type="text"  id="nombre" class="validate" required>
                            <label for="nombre">Nombre de la Actividad:</label> 
                        </div>
                        
                        <div class="input-field col s12">
                            <input type="text"  id="email" class="validate" required>
                            <label for="text">Descripcion:</label> 
                        </div>
                        <form action="#">
                            <h5>Recordatorio:</h5>
                            <p>
                              <label>
                                <input name="group1" type="radio" checked />
                                <span>Esta Mañana</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input  name="group1" type="radio" checked />
                                <span>Mañana</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input  name="group1" type="radio" checked />
                                <span>Proxima Semana</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input  name="group1" type="radio" checked />
                                <span>
                                  <input type="text"  id="fecha" class="datepicker">
                                  <label for="fecha">Personalizado</label>
                                </span>
                              </label>
                            </p>
                          </form>
                          <div class="section container">
                            <button class="btn" id="BtnEnviar">
                                Enviar
                            </button>
                    </div>
                </form>
            </div>
        </div>

        <script src="Scripts/Materialize4.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>
