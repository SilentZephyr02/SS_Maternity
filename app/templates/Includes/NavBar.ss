<!--NavBar-->  
<% with $Level(1) %>
<nav class="navbar navbar-expand-lg navbar-light nav-colour">
    <div class="container logo">
        <a class="$LinkingMode navbar-brand" href="$Link" title="Go to the $Title page">$MenuTitle</a>
        <div class="d-md-inline d-lg-none no-padding">
            <img src="./images/hbdhb-logo.png">
        </div>
        <button class="navbar-toggler logo" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
					
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <div class="navbar-nav">
            <% end_with %>
                <% loop $Menu(2) %>
                <a class="$LinkingMode nav-link" href="$Link" title="Go to the $Title page">$MenuTitle</a>
                <% end_loop %>
            </div> 
        </div> 
    </div> 
</nav>
<!--NavBar-End-->