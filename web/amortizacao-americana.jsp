<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/favicon.jspf" %>
        
         <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
         
        <title>Amortização Americana</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
         
        <%
            DecimalFormat df = new DecimalFormat("#.##");
            double valor_principal = 0;
            double periodo = 0;
            double taxa_juros = 0;
            double juros_periodo = 0;
            double total_juros = 0;
            double amortizacao = 0;
            double prestacao = 0;
            double saldo_devedor = 0;
            try {
                periodo = Double.parseDouble(request.getParameter("periodo"));
                taxa_juros = Double.parseDouble(request.getParameter("juros"));
                valor_principal = Double.parseDouble(request.getParameter("valorprincipal"));
                
            } catch (Exception e) {
            }
        %>
         <center>
           <br><h2>Amortização Americana</h2><br>
        
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
                  
                  
                    

                  </form>
              <br>
              </center>
           </div>
            <br>
          </div>
          
         <table class="container table-hover table-style">
             
        <thead class="table-secondary" class="table-active">
            <tr>
               <th scope="row">Nª de Parcelas</th>
               <th scope="row">Saldo Devedor</th>
               <th scope="row">Amortização</th>
               <th scope="row">Juros</th>
               <th scope="row">Total a Pagar</th>
              
            </tr>
        </thead>
        <tbody>
  
            <%for(int i=1; i<= periodo; i++){%>
                     
                              <%
                                prestacao =valor_principal * taxa_juros/100;
                                
                                saldo_devedor = valor_principal;
                                juros_periodo = prestacao;
                              
                              if(periodo==i){
                                  
                                  amortizacao = valor_principal;
                                  saldo_devedor = 0;
                              prestacao = 0;
                              }
                              
                              %>
                      
                           <tr>
                      <td> <%=i%> </td>
                      <td> <%= df.format(saldo_devedor) %> </td>
                      <td> <%= df.format(amortizacao) %> </td>
                      <td> <%= df.format(juros_periodo) %> </td>
                      <td> <%= df.format(prestacao) %> </td>
                      
                      
                           </tr>
                          

                        <%}%>
                     
            </table>
                    
                        <hr>
                      
        
          <%@include file="WEB-INF/jspf/footer.jspf" %>
          
    </body>
</html>
