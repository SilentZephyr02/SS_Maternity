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


            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#Simple">Simple</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#Detailed">Detailed</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#Complex">Complex</a>
                </li>
            </ul>
        

            <div class="tab-content">
                <div id="Simple" class="tab-pane active">
                    <% loop $ArticleParagraph %>
                    <p>
                        <div class="Simple">$Simple</div>
                    </p>
                    <% end_loop %>
                </div>
                <div id="Detailed" class="tab-pane">
                    <% loop $ArticleParagraph %>
                    <p>
                        <div class="Simple">$Simple</div>
                        <div class="Detailed">$Detailed</div>
                    </p>
                    <% end_loop %>
                </div>
                <div id="Complex" class="tab-pane">
                    <% loop $ArticleParagraph %>
                    <p>
                        <div class="Simple">$Simple</div>
                        <div class="Detailed">$Detailed</div>
                        <div class="Complex">$Complex</div>
                    </p>
                    <% end_loop %>
                </div>
            </div>
        </div>
    </div>
</div>