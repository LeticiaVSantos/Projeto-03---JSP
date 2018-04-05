
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
         <%@include file="WEB-INF/jspf/favicon.jspf" %>
         
         <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
         
         
        <title>Tabela Price</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
         <!-- VÁRIAVEIS -->
          
          <center>
          
            <br><h2>Tabela Price</h2><br>
            <div class="container">
       <div class="card text-center" class="form"  style= "width: 30%" position: relative>
       <div class="card-header" >
       </div>
       <div class="card-body">
    
       </div>
    
           
          <center>
              <form class='form' class='style'>
           <div class='row'>
               <div class='col'>
                   <p>Valor Principal: </p>
                    
                   <input type='text' class= form-control placeholder='R$' name='valorprincipal'/><br></div>
               </div>
           <div class='row'>
               <div class='col'>
                   <p>Parcelas: </p>
                   <input type='text' class= form-control placeholder='meses'  name='periodo'/><br></div>
               </div>
           <div class='row'>
               <div class='col'>
                   <p>Taxa de Juros: </p>
                   <input type='text' class= form-control placeholder='%' name='juros'/><br></div>
               </div>
                  <input class="btn btn-primary" type="submit" value="Calcular">
                  <a href="javascript:window.history.go(-1)">Voltar</a>

                  </form>
              <br>
              </center>
           </div>
            <br>
          </div>
          
        <table class="container table-hover table-style">
             
        <thead class="table-secondary" class="table-active">
            <tr>
               <th scope="row">Período</th>
               <th scope="row">Saldo Devedor</th>
               <th scope="row">Amortização</th>
               <th scope="row">Juros</th>
               <th scope="row">Prestação</th>
              
            </tr>
        </thead>
         
       
        <%DecimalFormat df = new DecimalFormat("#.##");     
        double valor_principal = 0 ;
        double parcelas = 0 ;
        double taxa_juros=0;
        double saldo_devedor = 0;
        double amortizacao=0;
        double juros_periodo=0;
        double prestacao = 0;
        double txjrsdivcem1 = 0;
        double txjrsdivcem2 = 0;
        double prestacao_aux = 0;
        double primeira_amortizacao = 0;
        double total_prestacao = 0;
        double total_juros = 0;
        double total_amortizacao = 0;
        double total_saldodevedor = 0;
   
        %>
        
           <%try{parcelas = Double.parseDouble(request.getParameter("periodo")); 
            taxa_juros = Double.parseDouble(request.getParameter("juros"));
            valor_principal = Double.parseDouble(request.getParameter("valorprincipal"));
            saldo_devedor = valor_principal;
           }
            catch(Exception ex){}%>
     
 
       
        
            <!-- Repetição das celulas da tabela -->            
            
                   <%for(int i=1; i<= parcelas; i++){%>
                   
                  
                <%  txjrsdivcem1 = taxa_juros/100;
                txjrsdivcem2 = 1 + txjrsdivcem1;
                prestacao_aux = Math.pow(txjrsdivcem2, parcelas);        
                prestacao = valor_principal * (prestacao_aux * txjrsdivcem1)/(prestacao_aux - 1);
                juros_periodo = saldo_devedor * txjrsdivcem1 ;
                amortizacao = prestacao - juros_periodo;
                saldo_devedor = saldo_devedor - amortizacao;
                 
                total_prestacao = total_prestacao + prestacao;    
                total_juros = total_juros + juros_periodo;
                total_amortizacao = total_amortizacao + amortizacao;
                total_saldodevedor = total_saldodevedor + saldo_devedor;
                 
                %>
      
       <tbody>
  
            
            <tr>
      
      <th scope="row"><%= i %></th>
      <td><%= df.format(saldo_devedor) %></td>
      <td><%= df.format(amortizacao) %></td>
      <td><%= df.format(juros_periodo) %></td>
      <td><%= df.format(prestacao) %></td>
     
    </tr>
    
  </tbody>
              
                <%}%>
                
          </table>
                
                <div class="container"></div>
           <hr>
                          <h4>Total</h4>
                          <h4>Prestação: <%=df.format(total_prestacao)%></h4>
                          <h4>Juros: <%=df.format(total_juros)%></h4>
                          <h4>Amortização: <%=df.format(total_amortizacao)%></h4>
                    
        
        <br>
        
         <%@include file="WEB-INF/jspf/footer.jspf" %>

    </body>
</html>
