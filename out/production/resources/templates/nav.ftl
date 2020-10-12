<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/home"><img src="/images/logo2.png" alt="logo"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="/home"><i class="fa fa-fw fa-dashboard"></i>Inicio</a>
                </li>
                <li>
                    <a href="/zonaAdmin/actividad"><i class="fa fa-fw fa-bus"></i> Actividad</a>
                </li>

                <li>
                    <a href="/rating/verComentarios/"><i class="fa fa-fw fa-comments"></i>Ver comentarios</a>
                </li>

                <li>
                    <a href="javascript:;" data-toggle="collapse" data-target="#ruta"><i class="fa fa-fw fa-arrows-v"></i> Ruta <i class="fa fa-fw fa-caret-down"></i></a>
                    <ul id="ruta" class="collapse">
                        <li>
                            <a href="/ruta/crear">Agregar Nueva Ruta</a>
                        </li>
                        <li>
                            <a href="/ruta/">Ver Ruta</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;" data-toggle="collapse" data-target="#autobus"><i class="fa fa-fw fa-arrows-v"></i> Autobus <i class="fa fa-fw fa-caret-down"></i></a>
                    <ul id="autobus" class="collapse">
                        <li>
                            <a href="/autobus/crear">Agregar Nuevo Autobus</a>
                        </li>
                        <li>
                            <a href="/autobus/">Ver Autobus</a>
                        </li>
                        <li>
                            <a href="/autobus/sinRuta">Autobus sin Ruta</a>
                        </li>
                    </ul>
                </li>
                <#if usuario??>
                    <#list usuario.roles as rol>
                        <#if rol.rol=="ROLE_ADMIN">
                            <li>
                                <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Usuarios <i class="fa fa-fw fa-caret-down"></i></a>
                                <ul id="demo" class="collapse">
                                    <li>
                                        <a href="/zonaAdmin/registrar">Agregar Nuevo Usuario</a>
                                    </li>
                                    <li>
                                        <a href="/zonaAdmin/usuarios">Ver Usuarios</a>
                                    </li>
                                </ul>
                            </li>
                        </#if>
                    </#list>
                </#if>


            </ul>


            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Bienvenido, <span class="fa" style="color: #428BCA0; font-family: cursive">${username}</span> </b> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="divider"></li>
                        <li>
                            <a href="/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>