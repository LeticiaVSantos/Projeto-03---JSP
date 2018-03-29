
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
         <%@include file="WEB-INF/jspf/favicon.jspf" %>
         <!--css - Google Fonts-->
         <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
         
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
         <!--css - footer-->
         <link href="css/footer-css.css" rel="stylesheet">
         
         <link href="css/form.css" rel="stylesheet">
         
         <link href="css/style.css" rel="stylesheet">
     
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         
        <title>Tabela Price</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
         <!-- VÁRIAVEIS -->
          
       
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
   
        
            try{parcelas = Double.parseDouble(request.getParameter("periodo")); 
            taxa_juros = Double.parseDouble(request.getParameter("juros"));
            valor_principal = Double.parseDouble(request.getParameter("valorprincipal"));
            saldo_devedor = valor_principal;
            
            }
            catch(Exception e){}
     
       %>
 
        <!--VARIÁVEIS -->
        
        <center>
            
            <br><h2>Tabela Price</h2><br>
        
       <div class="card text-center" class="form"  style= "width: 60%" position: relative>
       <div class="card-header" >
       Calculadora
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
                  </form>
              <br>
              </center>
           </div>
            <br>
          </div>
          
          
           
          
         <table class="table table-hover table-style">
             
           <thead>
            <tr class="table-secondary">
               <th scope="col">Período</th>
               <th scope="col">Prestação</th>
               <th scope="col">Juros</th>
               <th scope="col">Amortização</th>
               <th scope="col">Saldo Devedor</th>
            </tr>
        </thead>
        <tbody>
  
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
      
      <tr>
      
      <th scope="row"><%= i %></th>
      <td><%= df.format(prestacao) %></td>
      <td><%= df.format(juros_periodo) %></td>
      <td><%= df.format(amortizacao) %></td>
      <td><%= df.format(saldo_devedor) %></td>
        
    </tr>
    
  </tbody>
              
                <%}%>
                
           </table>
           <hr>
                          <h4>Total</h4>
                          <h4>Prestação: <%=df.format(total_prestacao)%></h4>
                          <h4>Juros: <%=df.format(total_juros)%></h4>
                          <h4>Amortização: <%=df.format(total_amortizacao)%></h4>
                    
        
        <br>
        
         <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
