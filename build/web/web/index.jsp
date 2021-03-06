<!------- HEADER ------->
<%@include file="./_inc/_header.jsp" %>
 
         <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">  
            <div class="carousel-indicators">
               <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
               <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
               <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>

            <div class="carousel-inner">      
               <div class="carousel-item active">
                  <img src="https://picsum.photos/1200/300?grayscale&randon=1">
                  <div class="container">
                     <div class="carousel-caption text-start">
                       <h1>Example headline.</h1>
                       <p>Some representative placeholder content for the first slide of the carousel.</p>
                       <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
                     </div>
                  </div>        
               </div>

               <div class="carousel-item">
                  <img src="https://picsum.photos/1000/1000?grayscale&randon=2">
                  <div class="container">
                     <div class="carousel-caption">
                        <h1>Another example headline.</h1>
                        <p>Some representative placeholder content for the second slide of the carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
                     </div>
                  </div>
               </div>

               <div class="carousel-item">
                  <img src="https://picsum.photos/1200/300?grayscale&randon=3">
                  <div class="container">
                     <div class="carousel-caption text-end">
                        <h1>One more for good measure.</h1>
                        <p>Some representative placeholder content for the third slide of this carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
                     </div>
                  </div>
               </div>
            </div>    
            
            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
               <span class="carousel-control-prev-icon" aria-hidden="true"></span>
               <span class="visually-hidden">Previous</span>
            </button>
               <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
               <span class="carousel-control-next-icon" aria-hidden="true"></span>
               <span class="visually-hidden">Next</span>
            </button>      
         </div> 
         
         <!------- MENU ------->
         <%@include file="./_inc/_menu.jsp" %>

         <div class="container px-4 py-4" id="custom-cards">
            <h2 class="pb-2 border-bottom">Produtos em Destaque:</h2>
            <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
               
              <jsp:useBean class="br.com.alfashop.repository.ProdutoDAO" id="lstpro" />                   
              <c:forEach items="${lstpro.destaques}" var="objpro">                               
               <div class="col">
                  <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('https://picsum.photos/500/500?randon=${objpro.idproduto}');">
                     <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                        <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">
                           <a class="nav-link" href="detalhes.jsp?idp=${objpro.idproduto}">${objpro.nome}</a>
                        </h2>
                        <ul class="d-flex list-unstyled mt-auto">
                           <li class="me-auto">          
                              R$ ${objpro.valor}
                           </li>
                           <li class="d-flex align-items-center me-3">
                              <small>Categoria: ${objpro.nomecat}</small>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
              </c:forEach>   
              
            </div>
         </div>        
           
         <!------- FOOTER ------->         
         <%@include file="./_inc/_footer.jsp" %>
