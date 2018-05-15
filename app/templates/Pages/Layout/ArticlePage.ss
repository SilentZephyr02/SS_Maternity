<% include NavBar %>
<div class="container">
    <div class="row">
        <div class="col-2 borderimg">
        </div>
        <div class="col-10 active-col">
            <br>
            <h1>$Title</h1>
        
            <% with $Header.ScaleWidth(750) %>
            <img class="img-fluid" src="$URL" alt="" width="$Width" height="$Height" />
            <% end_with %>
            <br>
            $Content
            $Form


            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a onclick="javascript:sdcCheck('Simple');" class="nav-link active" data-toggle="tab" id="SimpleTab" href="#Simple">Simple</a>
                </li>
                <li class="nav-item">
                    <a onclick="javascript:sdcCheck('Detailed');" class="nav-link" data-toggle="tab" id="DetailedTab" href="#Detailed">Detailed</a>
                </li>
                <li class="nav-item">
                    <a onclick="javascript:sdcCheck('Complex');" class="nav-link" data-toggle="tab" id="ComplexTab" href="#Complex">Complex</a>
                </li>
            </ul>

            <% loop $ArticleParagraph %>	
            <p>	           
            <div class="Simple">$Simple</div>	
            <div class="Detailed" style="display:none">$Detailed</div>	
            <div class="Complex" style="display:none">$Complex</div>	
            <hr>	
            </p>	
            <% end_loop %>

            <script>
                function sdcCheck(option) {
                    var simpleArray = document.getElementsByClassName("Simple");
                    var detailedArray = document.getElementsByClassName("Detailed");
                    var complexArray = document.getElementsByClassName("Complex");
                    var i;
                    if (option == "Simple") {
                        for (i = 0; i < simpleArray.length; i++) {
                            detailedArray[i].style.display = "none"
                            complexArray[i].style.display = "none"
                        }
                    }
                    else if (option == "Detailed") {
                        for (i = 0; i < detailedArray.length; i++) {
                            detailedArray[i].style.display = "block"
                            complexArray[i].style.display = "none"
                        }
                    }
                    else if (option == "Complex"){
                        for (i = 0; i < complexArray.length; i++) {
                            detailedArray[i].style.display = "block"
                            complexArray[i].style.display = "block"
                        }
                    }
                    else {return}
                }
            </script>
        </div>
    </div>
</div>