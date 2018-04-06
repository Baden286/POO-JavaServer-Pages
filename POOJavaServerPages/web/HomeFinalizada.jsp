<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AmortizaWeb</title>
        <%-- Include do header jspf --%> 
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    
  
    <body>
        <%-- Include do menu jspf --%> 
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <div align="center" text-align="justify">
        <h1>Sistema de Amortização - Modelo de Pagamento de empréstimos e financiamentos</h1>
        <div class="panel panel-default">
        <div class="panel-body">
            <p>Empréstimos e financiamentos são pagos por meio de uma série de pagamentos ao longo de um período de tempo. Estes pagamentos normalmente incluem um montante de juros calculados sobre o saldo devedor do empréstimo/financiamento, acrescidos de uma parcela do saldo devedor do empréstimo. Cada um destes pagamentos sempre vai pagar parte do principal emprestado e parte dos juros.

Há 3 formas de amortização mais usadas para o cálculo das parcelas do financiamento ou empréstimo: o Sistema de Amortização Constante (SAC), a Tabela Price (também chamada de sistema francês de amortização) e o Sistema de Amortização Crescente (SACRE). Cada um atende a diferentes perfis financeiros para facilitar os pagamentos aos usuários de nosso sistema financeiro. Você pode fazer uma consulta em nosso site para entender melhor o funcionamento de cada modelo.</p>
        </div>
        <br><hr>
        </div>
        <%-- Include do rodapÃŠ --%>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
