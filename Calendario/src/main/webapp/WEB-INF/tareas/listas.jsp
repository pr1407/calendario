<%@page import="modelo.bean.usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listas</title>
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
                    <li><i class="material-icons btn black">search</i> </li>
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
            <form action="" class="col s4" id="Cuadroleft">
                <div class="row card-panel Cuadro">
                    <ul class="collapsible">
                        <h5> Lista</h5>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">mail</i>Trabajo</div>
                            <div class="collapsible-body">
                                <ul class="collapsible">
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 1</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 2</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 3</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">place</i>Colegio</div>
                            <div class="collapsible-body">
                                <ul class="collapsible">
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 1</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 2</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 3</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">local_hospital</i>Medicina</div>
                            <div class="collapsible-body">
                                <ul class="collapsible">
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 1</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 2</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 3</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header"><i class="material-icons">whatshot</i>Citas</div>
                            <div class="collapsible-body">
                                <ul class="collapsible">
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 1</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 2</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">book</i>Tarea 3</div>
                                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
            </form>
        </div>
        <div class="row">
            <form action="" class="col s7">
                <div class="row card-panel Cuadro">
                    <div class="card-content dark-text">
                        <h3>Descripcion</h3>
                        <span class="card-title">Tarea 1</span>
                        <p>I am a very simple card. I am good at containing small bits of information.
                            I am convenient because I require little markup to use effectively.</p>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="Scripts/Materialize4.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>

</html>