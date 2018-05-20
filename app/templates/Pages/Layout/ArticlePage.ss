<% include NavBar %>
<div class="container">
    <div class="row">
        <div class="col-2 d-none d-lg-block borderimg">
        </div>
        <div class="col active-col">
            <br>
            <h1>$Title</h1>
        
            <% with $Header.ScaleMaxWidth(750) %>
            <img class="img-fluid mx-auto d-block" src="$URL" alt="" width="$Width" height="$Height" />
            <% end_with %>
            <br>
            $Content
            $Form


            <div class="myNavtab">
                <ul class="nav nav-tabs blacknav myNavtab" role="tablist">
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

                <div class="pt-4"></div>

                <% loop $ArticleParagraph %>	
                <div class="linkColour">	           
                    <div class="Simple">$Simple</div>	
                    <div class="Detailed" style="display:none">$Detailed</div>	
                    <div class="Complex" style="display:none">$Complex</div>	
                    <hr>	
                </div>	
                <% end_loop %>
            </div>

            <% if $nextPage %>
            <a type="button" class="btn" href="$nextPage.Link" role="button">
            Continue to $nextPage.Title
            </a>
            <% end_if %>

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