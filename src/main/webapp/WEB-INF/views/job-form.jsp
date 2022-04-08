<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <spring:url value="/resources" var="urlPublic" />
	<spring:url value="/jobs/save" var="urlForm" />
    <!--<spring:url value="/" var="urlRoot" />-->
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${urlPublic}/img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="codepixer">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Job Listing</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <!--
			CSS
			============================================= -->
    <link rel="stylesheet" href="${urlPublic}/css/linearicons.css">
    <link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${urlPublic}/css/bootstrap.css">
    <link rel="stylesheet" href="${urlPublic}/css/magnific-popup.css">
    <link rel="stylesheet" href="${urlPublic}/css/nice-select.css">
    <link rel="stylesheet" href="${urlPublic}/css/animate.min.css">
    <link rel="stylesheet" href="${urlPublic}/css/owl.carousel.css">
    <link rel="stylesheet" href="${urlPublic}/css/main.css">
</head>

<body>

    
    <jsp:include page="includes/header.jsp"></jsp:include>
    
    <section class="banner-area relative" id="home">	
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">
                        New Job			
                    </h1>	
                    <p class="text-white link-nav"><a href="">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="elements.html"> Elements</a></p>
                </div>											
            </div>
        </div>
    </section>


    <div class="section-top-border container">
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <h3 class="mb-30">Form Element</h3>
                <form:form action="${urlForm}" method="post" modelAttribute="job">
                    <div class="mt-10">
                        <form:input type="text" path="name" placeholder="Job Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required="required" class="single-input" />
                    </div>
                    <div class="mt-10">
                        <form:input type="text" path="company" placeholder="Company name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required="required" class="single-input" />
                    </div>
                    <div class="mt-10">
                        <form:input type="text" path="img" placeholder="image" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required="required" class="single-input" />
                    </div> 
                    <div class="mt-10">
                        <form:textarea  path="description" class="single-textarea" placeholder="Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Description'" required=""/>
                    </div> 
                    <div class="mt-10">
                        <form:textarea  path="details" class="single-textarea" placeholder="Details" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Description'" required=""/>
                    </div> 
                    <div class="mt-10">
                        <form:input type="text" path="salary" placeholder="salary" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required="required" class="single-input" />
                    </div> 
                    <button href="#" class="genric-btn primary circle arrow">Send<span class="lnr lnr-arrow-right"></span></button>
                </form:form>
            </div>
            
        </div>
    </div>
   
    <jsp:include page="includes/footer.jsp"></jsp:include>
  
</body>

</html>