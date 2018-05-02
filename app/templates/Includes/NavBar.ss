 <!--NavBar-->  
    <% with $Level(1) %>
    <nav class="navbar navbar-expand-lg navbar-light nav-colour">
    <div class="container">
    <a class="$LinkingMode navbar-brand" href="$Link" title="Go to the $Title page">$MenuTitle</a>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <div class="navbar-nav">
        <% end_with %>
            <% loop $Menu(2) %>
            <a class="$LinkingMode nav-link" href="$Link" title="Go to the $Title page">$MenuTitle</a>
            <% end_loop %>
        </div> 
        </div> 
        <img src="./images/hbdhb-logo.png" class="float-right sticky">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    </div> 
</nav>
<!--NavBar-End-->