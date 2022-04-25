

<%@page import="demo.Data"%>
<%@page import="demo.Contato"%>
<%--<%@page import="demo.DataBase"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Data today = new Data();
    today.setYear(2022);
    today.setMounth(4);
    today.setDay(25);

    Data tomorrow = new Data();
    tomorrow.setData(26, 4, 2022);

    Data nascimento = new Data(18, 6, 2002);

    Data padrao = new Data();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>poo</title>
    </head>

    <body>

        <style>
            .estilo{
                margin: auto;
                width: 50%;
                border: 3px solid lightgray;
                padding: 10px;
                border-radius: 5px;
                background-color: whitesmoke;
                text-align: center;
                font-family: 'Poppins', sans-serif;
                -webkit-box-shadow: 5px 5px 15px 5px rgba(0,0,0,0.51); 
                box-shadow: 5px 5px 15px 5px rgba(0,0,0,0.51);
                margin-top: 12%;
                transition: 0.3s;
            }
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');

            .estilo:hover {
              
                transform: scale(1.1);
                -webkit-box-shadow: 2px 6px 21px 8px rgba(0,0,0,0.88); 
                box-shadow: 2px 6px 21px 8px rgba(0,0,0,0.88);
            }
            a,.estilo{
                text-decoration: none;
                color:black;
            }
        </style>

        <a href="https://github.com/ClaudHelloworld" target="_blank">
            <div class="estilo">
                <h1>POO - Clique para conhecer o desenvolvedor</h1>
                <hr>
                <h2>Datas - Orientação Objeto</h2>
                <h3>Hoje é dia <%= today.getDay()%></h3>
                <h3>Amanhã será dia <%= tomorrow.getDay()%></h3>
                <h3>Data de Nascimento <%= nascimento.getData()%></h3>
                <h3>Data de Aniversário <%= nascimento.getAniversario()%></h3>
                <h3>Data <%= padrao.getData()%></h3>

                <h3>Contatos buscados utilizando Contato.getList()</h3>
                <table border="1">
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>Aniversario</th>

                    <%for (Contato c : Contato.getList()) {%>
                    <tr>
                        <td><%= c.getNome()%></td>
                        <td><%= c.getTelefone()%></td>
                        <td><%= c.getNascimento().getAniversario()%></td>
                    </tr>               
                    <%}%>
                </table>
            </div>
        </a>
    </body>
</html>
