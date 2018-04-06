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



    </head>
    <body>
        <%-- Include do menu jspf --%> 
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <h1>Amortização Constante</h1>
        <h3>Informa o Capital</h3>
        <form>
        <input type="text" name="s"/>
        <h3>Informe a taxa(Em %)</h3>       
        <input type="text" name="t"/>        
        <h3>Informe o periodo(Em meses)</h3>        
        <input type="text" name="qtd"/>
        <input type="submit" value="Enviar"/>
        </form><br/>
        
        
        <table border ="2">
            <tr><td colspan="1">Periodo</td><td>Saldo</td><td>Amortização</td><td>Juros</td><td>Prestação</td></tr>
            
        <% try{
            double s = Double.parseDouble(request.getParameter("s"));
            double t = Double.parseDouble(request.getParameter("t"));
            double qtd = Integer.parseInt(request.getParameter("qtd"));
                        
            a=s/qtd;
            tota= a *qtd;
            totj=0;
            juros=(t*s)/100;
            %>            
        
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
            
            <% }catch(Exception ex){ %>
            <h3>ERRO!!!!

            
            </h3>
        <% } %>
        

        
        </table>
        


    </body>
</html>
