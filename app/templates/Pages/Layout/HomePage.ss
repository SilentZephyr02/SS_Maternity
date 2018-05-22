<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
        <% include NavBar %>
    <div class="container-fluid">
        <div class="row">
            <div class="col-4 d-none d-lg-block borderimgHome">
                <div class="row sticky-top justify-content-center" id="myScrollspy">
                    <div class="col px-0">
                        <nav class="verticalnavbar navbar blacknav px-0">                  
                            <ul class="nav nav-pills flex-column transparent" id="verticalnavbar">
                                <% loop $Menu(2) %>
                                <li class="nav-item">
                                    <a class="nav-link" href="#$URLSegment" title="Go to $Title section">$MenuTitle</a>
                                </li>
                                <% end_loop %>
                            </ul>
                        </nav>
                    </div>
                        
                    <div class="col px-1">
                        <img class="img-fluid d-none d-xl-block" src="./images/image-house.png" style='  max-width: 90%'/>
                        <img class="img-fluid d-none d-lg-block d-xl-none" src="./images/image-house.png" />
                    </div>
                </div>
            </div>
            
            
            
            <div class="col-lg-6 col-md-12 no-padding">
                <div id="$URLSegment" class="container">
                    $Content
                    <img class="img-fluid" src="./images/lady2.png" width="100px" />
                    <img class="img-fluid" src="./images/lady3.png" width="100px" />
                    <img class="img-fluid" src="./images/lady4.png" width="100px" />
                    <img class="img-fluid" src="./images/lady5.png" width="100px" />
                    <img class="img-fluid" src="./images/lady6.png" width="100px" />
                    <img class="img-fluid" src="./images/lady7.png" width="100px" />
                </div>
            <% loop $Menu(2) %>
                <div id="$URLSegment" class="container">
                    <h2>$Title</h2>

                    <div class="homeArticle">
                        $Content.FirstParagraph
                        <br>
                        <a href="$Link" type="button" class="btn btn-success" role="button" title="Read more on &quot;{$Title}&quot;">Read more &gt;&gt;</a>
                    </div>
                    <hr>
                </div>
            <% end_loop %>
            <% if $firstNextPage %>
            <a type="button" class="btn btn-lg btn-success" href="$firstNextPage.Link" role="button">
            Begin your Healthy Birth Pathway
            </a>
            <% end_if %>
            </div>

            <div class="col-2 d-none d-lg-block">

            </div>
        </div>
    </div>
</body>