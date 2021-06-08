<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link rel="stylesheet" href="Styles/login.css">
    </head>
    <body>
        <!--Cuadro de Inicio de Sesion-->
        <div class="container">
            <div class="row justify-content-center pt-5 mt-5 m-1">
                <div class="col-md-6 col-sm-8 col-xl-4 col-lg-5 formulario">
                    <form action="Home" method="post">
                        <div class="form-group text-center pt-3">
                            <h1 class="text-light">INICIAR SESIÓN</h1>
                        </div>
                        <div class="form-group mx-sm-4 pt-3 pb-2">
                            <input type="text" class="form-control text-light" placeholder="Ingrese su Usuario" name="txtusuario">
                        </div>
                        <div class="form-group mx-sm-4 pb-3">
                            <input type="password" class="form-control text-light" placeholder="Ingrese su Contraseña" name="txtpassword">
                        </div>
                        <div class="form-group mx-sm-4 pb-2">
                            <input type="submit" class="btn btn-block ingresar mr-5" value="Ingresar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>
