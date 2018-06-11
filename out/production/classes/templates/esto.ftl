<#include "base.ftl">

<#macro page_head>
<title>Usuarios</title>
</#macro>

<#macro page_body>
<div class="jumbotron main-jumbotron">
    <div class="container">
        <div class="content">
            <h1>Usuarios</h1>
            <p class="margin-bottom">Aqui se Administran los usuarios</p>
        </div>
    </div>
</div>
    <#if userl??>
        <#if userl.administrator>
                     <h5>usuario registrado: ${userl.username}</h5>

    <section>
        <div class="container">
            <div class="borde">

                <h2> Esto es un ejemplo</h2>
                <p class="lead">Texto</p>
                <p>mas texto</p>
                <p><a class="btn btn-ghost">Read more</a></p>

            </div>
        </div>
        
    </section>
        </#if>
    <#else>
<section>
    <div class="container">
        <div class="borde">

            <h2> Lo sentimos, usted no esta logueado para tener accedo a esta opcion </h2>
            <p class="lead">Por favor registrarse para tener acceso a esta función</p>

        </div>
    </div>
    <div class="container">
        <p><a href="/" class="btn btn-ghost">Volver</a></p>
    </div>
</section>
    </#if>

</#macro>