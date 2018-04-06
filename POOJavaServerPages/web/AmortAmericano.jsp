<%-- 
    Document   : AmortizaçãoAmericano
    Created on : 01/04/2018, 06:06:06
    Author     : AlexDX4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Amortização Americano</title>
    </head>
    <body>
        <%-- Include do menu jspf --%> 
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <h1>Sistema de Amortização Americano</h1>
        <p>O Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, que pode ser paga em apenas um único pagamento. Esse sistema de amortização tem a vantagem em relação ao sistema de pagamento único, pois nele não há incidência de juros sobre juros. Os juros sempre incidem sobre o valor original da dívida. Com isso o devedor pode quitar sua dívida quando quiser. Tem como desvantagem que o pagamento de juros pode, em tese, ser perpétuo mesmo quando já se pagou o equivalente à dívida em si. Para isso, basta que o número de prestações exceda 100% quando da soma dos juros simples.</p>
        <hr/>
        <form>
            <h3>Informa o Capital:</h3> <input type="title" name="SalDev"/><br/>
            <h3>Informe a taxa(Em %):</h3> <input type="title" name="Taxa"/><br/>
            <h3>Informe o periodo(Em meses):</h3> <input type="title" name="Tempo"/><br/>
            <input type="submit" value="Calcular"/>
        </form>
        <hr/>
        <%try{%>
        <%
            double saldev = Double.parseDouble(request.getParameter("SalDev"));
            double taxa = Double.parseDouble(request.getParameter("Taxa"));
            double tempo = Integer.parseInt(request.getParameter("Tempo"));
        %>
        <table border="2">
            <tr><td colspan="1">Periodo</td><td>Saldo</td><td>Amortização</td><td>Juros</td><td>Prestação</td></tr>
        <% double amort = 0; double juros = 0; double presta = 0;
        taxa = taxa/100;
        for(int ct = 0; ct <= tempo; ct++){
        if(ct == 1){juros = saldev * taxa; presta = juros; }
        if(ct == tempo){presta = presta + saldev; amort = saldev; saldev = 0; } %>
            <tr>   
                <th><%= ct %></th> <%-- Periodo --%>
                <td><%= saldev %></td> <%-- Saldo --%>
                <td><%= amort %></td> <%-- Amortização --%>
                <td><%= juros %></td> <%-- Juros --%>
                <td><%= presta %></td> <%-- Prestação --%>
            </tr>
            <%}
            juros = juros*tempo;
            double presttotal = amort+juros; %>
            <tr>
                <th>Total:</th> <%-- Total --%>
                <th> --- </th>
                <th><%= amort %></th> <%-- Amortização Total --%>
                <th><%= juros %></th> <%-- Juros Total --%>
                <th><%= presttotal %></th> <%-- Prestação Total --%>
            </tr>
            </table>
        <%}catch(Exception ex){%>
            Informe todos os dados acima.
        <%}%>
        <br><hr>
        <%-- Include do rodapé --%>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
