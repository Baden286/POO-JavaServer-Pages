<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
               <% double a;%>
               <% double juros;%>
               <% double tota;%>
               <% double totj;%>
               <% double tot;%>
        <%-- Include do header jspf --%> 
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <%-- Include do menu jspf --%> 
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <div align="center">
        <h1>Amortização Constante</h1>
        <div class="panel panel-default">
        <div class="panel-body">
            <p>Sistema de Amortização Constante (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo. Neste sistema o saldo devedor é reembolsado em valores de amortização iguais. Desta forma, no sistema SAC o valor das prestações é decrescente, já que os juros diminuem a cada prestação. O valor da amortização é calculada dividindo-se o valor do principal pelo número de períodos de pagamento, ou seja, de parcelas. O SAC é um dos tipos de sistema de amortização utilizados em financiamentos imobiliários. A principal característica do SAC é que ele amortiza um percentual fixo do valor principal (emissão), desde o início do financiamento. Esse percentual de amortização é sempre o mesmo, o que faz com que a parcela de amortização da dívida seja maior no início do financiamento, fazendo com que o saldo devedor caia mais rapidamente do que em outros mecanismos de amortização.</p>
        </div>
        <hr/>
        <form>
        <h3>Informa o Capital</h3>
        <input type="text" name="s"/>
        <h3>Informe a taxa(Em %)</h3>       
        <input type="text" name="t"/>        
        <h3>Informe o periodo(Em meses)</h3>        
        <input type="text" name="qtd"/><br/>
        <input type="submit" value="Calcular"/>
        </form><hr/>
            
        <% try{
            double s = Double.parseDouble(request.getParameter("s"));
            double t = Double.parseDouble(request.getParameter("t"));
            double qtd = Integer.parseInt(request.getParameter("qtd"));
                        
            a=s/qtd;
            tota= a *qtd;
            totj=0;
            juros=(t*s)/100;
            %>            
        <div class="container">
            <table class="table table-bordered">
            <tr><td colspan="1">Periodo</td><td>Saldo</td><td>Amortização</td><td>Juros</td><td>Prestação</td></tr>
        <% for(int i=1; i <= qtd; i++){ %>
        <%totj=totj+juros;%>
        
        <%s=s-a; %>

        <tr><td><%=+i%></td><td><%=s %></td><td><%=a%></td><td><%=juros%></td><td><%=(double)(a+juros)%> </td></tr>
            <%
         juros=(t*s)/100;
            }            
            %> 
            <div>
            <%tot = tota + totj; %>
            <%="A Armotização da Prestação é :" + tot%>
            </div>
            
        <%}catch(Exception ex){%>
            <b>Informe todos os dados acima corretamente</b>.
        <%}%>
        

        
        </table>
        
        <br><hr>
        </div>
        <%-- Include do rodapé --%>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
