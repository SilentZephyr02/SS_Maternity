<% include NavBar %>
<div class="container">
    <div class="row">
        <div class="col-lg-2 d-none d-lg-block no-padding">
            <img src="./images/image-side2.png" class="float-right sticky">
        </div>
        <div class="col-lg-10 active-col">
            <br>
            <h1>$Title</h1>
        
            <% with $Header.ScaleWidth(750) %>
            <img class="img-fluid" src="$URL" alt="" width="$Width" height="$Height" />
            <% end_with %>
            <br>
            $Content
            $Form

            <div>
            Simple<input type="radio" onclick="javascript:sdcCheck();" name="sdc" id="simpleCheck" checked>
            Detailed<input type="radio" onclick="javascript:sdcCheck();" name="sdc" id="detailedCheck">
            Complex<input type="radio" onclick="javascript:sdcCheck();" name="sdc" id="complexCheck">
            </div>

            <% loop $ArticleParagraph %>
            <p>
            <div class="Simple">$Simple</div>
            <div class="Detailed" style="display:none">$Detailed</div>
            <div class="Complex" style="display:none">$Complex</div>
            <hr>
            </p>
            <% end_loop %>

            <script>
            function sdcCheck() {
                var simpleArray = document.getElementsByClassName("Simple");
                var detailedArray = document.getElementsByClassName("Detailed");
                var complexArray = document.getElementsByClassName("Complex");

                var i;
                if (document.getElementById('simpleCheck').checked) {
                    for (i = 0; i < simpleArray.length; i++) {
                        detailedArray[i].style.display = "none"
                        complexArray[i].style.display = "none"
                    }
                }
                else if (document.getElementById('detailedCheck').checked) {
                    for (i = 0; i < detailedArray.length; i++) {
                        detailedArray[i].style.display = "block"
                        complexArray[i].style.display = "none"
                    }
                }
                else if (document.getElementById('complexCheck').checked){
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