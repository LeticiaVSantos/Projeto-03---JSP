<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/favicon.jspf" %>
        
         <meta name="viewport" content="width=device-width, initial-scale=1">
         
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
         <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         
         <link href="css/navbar.css" rel="stylesheet">
            
         
        <title>Amortização Constante</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
              <%DecimalFormat df = new DecimalFormat("#.##");     
        double valor_principal = 0 ;
        int parcelas = 0 ;
        double taxa_juros=0;
        double saldo_devedor = 0;
        double amortizacao=0;
        
            try{parcelas = Integer.parseInt(request.getParameter("periodo")); 
            taxa_juros = Double.parseDouble(request.getParameter("juros"));
            valor_principal = Double.parseDouble(request.getParameter("valorprincipal"));
            saldo_devedor = valor_principal;
            
            }
            catch(Exception e){}
     
       %>
         <center>
           <br><h2>Amortização Constante</h2><br>
        
       <div class="card text-center" class="form"  style= "width: 60%" position: relative>
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
               <th scope="row">Período</th>
               <th scope="row">Saldo Devedor</th>
               <th scope="row">Amortização</th>
               <th scope="row">Juros</th>
               <th scope="row">Prestação</th>
              
            </tr>
        </thead>
        <tbody>
  
                     
            <% amortizacao = valor_principal/parcelas;
               
           
            %>
                   <%for(int i=1; i<= parcelas; i++){%>
             
                <% 
               
       
                double [] valor_mensal =  new double [400];
                double []juros_mensal =  new double[400];
                double []saldo =  new double[400];
                if(i==parcelas)
                {
                break;
                }
                if(i==1)
                {
                valor_mensal[i] = amortizacao+ (taxa_juros/100 * (valor_principal -amortizacao));   
                }
                if(i>1)
                    
                {valor_mensal[i] = amortizacao+ (taxa_juros/100 * (valor_principal -(i-1)*amortizacao));}
               juros_mensal[i] = valor_mensal[i] - amortizacao;
                saldo[i] = valor_principal - valor_mensal[i];
                
                 
                
                %>
      
      <tr>
      
      <th scope="row"><%= i %></th>
      <td><%= df.format(saldo[i]) %></td>
      <td><%= df.format(amortizacao) %></td>
      <td><%= df.format(juros_mensal[i]) %></td>
      <td><%= df.format(valor_mensal[i]) 
          %></td>
     
    </tr>
    
  </tbody>
              
                <%}%>
                
         </table><
        
        
      
          <%@include file="WEB-INF/jspf/footer.jspf" %>
          
    </body>
</html>
