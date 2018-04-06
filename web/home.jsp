<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        
        <%@include file="WEB-INF/jspf/favicon.jspf" %>
        
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
      
        
        <title>FinanceiraWeb</title>
        
    </head>
    <body>
        
         <%@include file="WEB-INF/jspf/menu.jspf" %>
        
         
         
  <div class="jumbotron text-center">
  <h1>FinanceiraWeb</h1> 
  <p>Especializada em cálculos financeiros.</p> 
  
</div>

<!-- Container (Sobre a Empresa) -->
<div id="home" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
        <h2>Saiba mais sobre a Financeira Web!</h2><br>
        
      <h4>FinanceiraWeb é uma organização cuja finalidade é otimizar o cálculo de capitais financeiros próprios e/ou de terceiros, obedecendo uma co-relação de risco, custo e prazo que atenda aos objetivos dos seus clientes, incluindo pessoas físicas ou jurídicas do mercado onde a organização opere.
          <p> A Instituição FinanceiraWeb opera administrando um equilíbrio delicado entre moedas, prazos e taxas negociados para os capitais que capta e para os que aplicam no mercado, respeitando os critérios e normas estabelecidos pelas agências reguladoras/supervisoras de cada mercado onde atue.</p></h4><br>
     
    </div>
      
    <!-- Card (Sobre a missão e visão) -->  
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Missão e Visão para a empresa</h2><br>
      <h4><strong>MISSÃO:  Buscamos atender às necessidades e expectativas dos nossos clientes e criar valor para nossos acionistas e demais públicos com os quais nos relacionamos. </strong> </h4><br>
      <p><strong>VISÃO: </strong> Ser global e referência nos negócios financeiros, através de um portfólio de produtos com qualidade, características e propostas únicas.</strong></p>
  </div>
</div>
</div>

<!-- Container (Sistema Financeiro) -->

<div id="calculadora" class="container-fluid">
  <div class="text-center">
    <h2>Sistema Financeiro</h2>
    <h4>O jeito mais prático e eficiente para o cálculo financeiro</h4>
  </div>
    
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>SAC</h1>
        </div>
          
        <div class="panel-body">
            
            <p>O valor da amortização é calculada dividindo-se o valor do principal pelo número de períodos de pagamento, ou seja, de parcelas.</p>
         
        </div>
        <div class="panel-footer">
         
            <a href="amortizacao-constante.jsp" class="btn btn-lg" role="button">Calcular</a>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Americana</h1>
        </div>
        <div class="panel-body">
          
          <p>Esse sistema de amortização tem a vantagem em relação ao sistema de pagamento único, pois nele não há incidência de juros sobre juros.</p>
         
         
        </div>
        <div class="panel-footer">
         
          <a href="amortizacao-americana.jsp" class="btn btn-lg" role="button">Calcular</a>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Tabela Price</h1>
        </div>
        <div class="panel-body">
          <p> É um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais. </p>
          
          
        </div>
        <div class="panel-footer">
         
             <a href="tabela-price.jsp" class="btn btn-lg" role="button">Calcular</a>
        </div>
      </div>      
    </div>    
  </div>
</div>

<!-- Container (Desenvolvedores) -->

<div id="sobre" class="container-fluid text-center">
  <h2>Conheça nosso Desenvolvedores!</h2><br>
 
   <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/joao-paulo.jpeg" alt="João Paulo" >
        
        <p><h4><strong>João Paulo</strong></h4></p>
        <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>
         <p><h4>Conheça também seus projetos no Github!</h4></p>
        <a href="https://github.com/10joaopaulo" <button class="btn btn-primary" >GitHub</button></a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/leticia.jpg" alt="Letícia Santos" >
        <p><h4><strong>Letícia Santos</strong></h4></p>
        <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>
         <p><h4>Conheça também seus projetos no Github!</h4></p>
        <a href="https://github.com/LeticiaVSantos" <button class="btn btn-primary" >GitHub</button></a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="Imagens/victor.jpeg" alt="Victor Wander" >
        <p><h4><strong>Victor Wander</strong></h4></p>
        <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>
         <p><h4>Conheça também seus projetos no Github!</h4></p>
        <a href="https://github.com/victorwander" <button class="btn btn-primary" >GitHub</button></a>
      </div>
    </div>
  </div><br>
  
          <%@include file="WEB-INF/jspf/footer.jspf" %>
          
    </body>
</html>
