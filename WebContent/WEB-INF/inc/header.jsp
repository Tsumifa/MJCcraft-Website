<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="<c:url value="res/css/header.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="res/css/scroll_indicator.css"/>">
		<script type="text/javascript" src="<c:url value="res/js/scroll_indicator.js"/>"></script>
		<script type="text/javascript" src="<c:url value="res/js/header.js"/>"></script>

		<!--Bootstraps CSS link-->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	</head>

	<body>
		
		<!-- #################################################
						FOR MOBILES PLATFORMS
		###################################################-->

		<div id="sidepanel" class="sidepanel">
			
			<div id="sidepanelMainContainer">
			
				
				<div id="sidepanelHeader">
					<p id="title">MJCcraft</p>
					<p><a href="javascript:void(0)" class="" onclick="closeNav()">X</a></p>

				</div>

				<nav id=menuContainer>
					
					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>
					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>
					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>
					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>
					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>
					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>
				</nav>
			    
			    <nav id="socialsContainer">
			    	<!--Discord icon-->
			    	<a href='#'>
			    		<i class="bi bi-discord">
			    			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-discord" viewBox="0 0 16 16">
						   		<path d="M6.552 6.712c-.456 0-.816.4-.816.888s.368.888.816.888c.456 0 .816-.4.816-.888.008-.488-.36-.888-.816-.888zm2.92 0c-.456 0-.816.4-.816.888s.368.888.816.888c.456 0 .816-.4.816-.888s-.36-.888-.816-.888z"/>
						 	   <path d="M13.36 0H2.64C1.736 0 1 .736 1 1.648v10.816c0 .912.736 1.648 1.64 1.648h9.072l-.424-1.48 1.024.952.968.896L15 16V1.648C15 .736 14.264 0 13.36 0zm-3.088 10.448s-.288-.344-.528-.648c1.048-.296 1.448-.952 1.448-.952-.328.216-.64.368-.92.472-.4.168-.784.28-1.16.344a5.604 5.604 0 0 1-2.072-.008 6.716 6.716 0 0 1-1.176-.344 4.688 4.688 0 0 1-.584-.272c-.024-.016-.048-.024-.072-.04-.016-.008-.024-.016-.032-.024-.144-.08-.224-.136-.224-.136s.384.64 1.4.944c-.24.304-.536.664-.536.664-1.768-.056-2.44-1.216-2.44-1.216 0-2.576 1.152-4.664 1.152-4.664 1.152-.864 2.248-.84 2.248-.84l.08.096c-1.44.416-2.104 1.048-2.104 1.048s.176-.096.472-.232c.856-.376 1.536-.48 1.816-.504.048-.008.088-.016.136-.016a6.521 6.521 0 0 1 4.024.752s-.632-.6-1.992-1.016l.112-.128s1.096-.024 2.248.84c0 0 1.152 2.088 1.152 4.664 0 0-.68 1.16-2.448 1.216z"/>
							</svg>
						</i>
					</a>

					<!--Youtube icon-->
					<a href="#">
						<i class="bi bi-youtube">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
							    <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.122C.002 7.343.01 6.6.064 5.78l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
							</svg>
						</i>
					</a>

					<!--Like button-->
					<a href="#">
						<i class="bi bi-hand-thumbs-up-fill">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
							    <path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.964.22.817.533 2.512.062 4.51a9.84 9.84 0 0 1 .443-.05c.713-.065 1.669-.072 2.516.21.518.173.994.68 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.162 3.162 0 0 1-.488.9c.054.153.076.313.076.465 0 .306-.089.626-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.826 4.826 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.616.849-.231 1.574-.786 2.132-1.41.56-.626.914-1.279 1.039-1.638.199-.575.356-1.54.428-2.59z"/>
							</svg>
						</i>						
					</a>

			    </nav>

			</div>
		</div>
		
		<div id="mobileHeader">
			<div class="header">
		  		<div class="progress-container">
		    		<div class="progress-bar" id="mobileProgressBar"></div>
		  		</div>
			</div>
	
			<div id="headerNav">
	
				<button id="openbtn" onclick="openNav()">≡</button>  
	
				<form class="d-flex">
	
	        		<input class="form-control me-2" type="search" placeholder="Rechercher" aria-label="Search" id="searchInput">
	
	        		<button class="btn btn-outline-success" type="submit" id="searchSubmit">
	        			<!--serch icon-->
	        			<i class="bi bi-search">
	        				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
						 		<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
							</svg>
	        			</i>
	        		</button>
	        	</form>
			</div>
		</div>
		

		<!-- #################################################
							FOR DESKTOP
		###################################################-->
		<div id="header">
			<nav class="navbar navbar-expand-lg navbar-light" id="headerNavBar">

				<a id="headerTitle" href="#">
					MJCcraft
				</a>

				<div id="headerMenu">

					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>

					<div class="dropdown">

					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>

					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>

					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>

					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>

					<div class="dropdown">
					  	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
					   		Dropdown
					    </button>
					    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
					    	<li><button class="dropdown-item" type="button">Action</button></li>
					    	<li><button class="dropdown-item" type="button">Another action</button></li>
					   		<li><button class="dropdown-item" type="button">Something else here</button></li>
					    </ul>
					</div>					
				</div>

				<a id="loginButton" href="#">

					<i class="bi bi-person-circle">
						<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
						    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
						    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
						</svg>	
					</i>
				</a>
			    
			</nav>
			
			<!-- Scrolling progress bar -->
			<div class="header">
		  		<div class="progress-container">
		    		<div class="progress-bar" id="DesktopProgressBar"></div>
		  		</div>
			</div>
		</div>

		<!--Bootstrap links-->
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

	</body>
</html> 
	