<#include "base.ftl">

<#macro page_head>
<title>Buscar tag</title>
</#macro>

<#macro page_body>
<div class="jumbotron main-jumbotron">
    <div class="container">
        <div class="content">
            <h1>Tag: ${tt.getTag()}</h1>
        </div>
    </div>
</div>
<section>
    <div class="row">
        <div class="leftcolumn">

            <hr class="sep">
            <div>
                <center><h1>Articulos</h1></center>
            </div>
            <hr class="sep">

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <#if art??>
                <#list art as a>
                <div class="line-content">
                    <div class="borde">
                        <div class="espacio">
                            <br/>
                            <h2>${a.getTitle()}</h2>
                            <hr class="separador">
                            <h4>${a.getAuthor().getUsername()}, ${a.getDateTime()}</h4>
                            <br/>
                            <p><h4 class="stest" style="white-space: pre-wrap;">${a.getBody()}</h4></p>
                            <center><p><a href="/product/${a.getId()?string["0"]}" class="btn btn-ghost">Leer más</a></p></center>
                            <hr class="separador">
                            <p>
                         <#list a.getTags() as tag>
                             <a class="etiqueta" href="/tag/${tag.getId()?string["0"]}"> ${tag.getTag()} </a>
                         </#list>
                            </p>
                        </div>
                    </div>
                    <br/>
                </div>
                </#list>
            </#if>

            <center><ul id="pagin">

            </ul></center>

        </div>
        <div class="rightcolumn">

            <div class="borde">
                <br/>
                <center><p><a href="/product" class="btn btn-ghost">crear Articulo</a></p></center>
            </div>

            <div class="borde">
                <center>
                <br/>
                <h2>Lista de tags</h2>
                <hr class="separador">
                <center>
                    <#list tl as tag>
                        <a class="etiqueta" href="/tag/${tag.getId()?string["0"]}"> ${tag.getTag()} </a>
                    </#list>
                </center>
                <br/>
                <br/>
                 </center>

            </div>

        </div>
    </div>
</section>
<script>
    pageSize = 5;

    var pageCount =  $(".line-content").length / pageSize;
    $("#pagin").append('<li><a href="#">&laquo;</a></li> ');

    for(var i = 0 ; i<pageCount;i++){

        $("#pagin").append('<li><a href="#">'+(i+1)+'</a></li> ');
    }
    $("#pagin").append('<li><a href="#">&raquo;</a></li> ');

    $("#pagin li").first().find("a").addClass("current")
    showPage = function(page) {
        $(".line-content").hide();
        $(".line-content").each(function(n) {
            if (n >= pageSize * (page - 1) && n < pageSize * page)
                $(this).show();
        });
    }

    showPage(1);

    $("#pagin li a").click(function() {
        $("#pagin li a").removeClass("current");
        $(this).addClass("current");
        showPage(parseInt($(this).text()))
    });
</script>
</#macro>