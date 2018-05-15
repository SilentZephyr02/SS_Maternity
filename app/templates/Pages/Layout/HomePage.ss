<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
        <% include NavBar %>
    <div class="container">
        <div class="row">
            <div class="col-3 d-none d-lg-block borderimg">
                <nav class="verticalnavbar navbar blacknav sticky-top justify-content-center" id="myScrollspy">
                    <ul class="nav nav-pills flex-column transparent" id="verticalnavbar">
                        <% loop $Menu(2) %>
                        <li class="nav-item">
                            <a class="nav-link" href="#$URLSegment" title="Go to $Title section">$MenuTitle</a>
                        </li>
                        <% end_loop %>
                    </ul>
                </nav>
            </div>
            
            
            <div class="col-9 no-padding">
                <div id="$URLSegment" class="container">
                <h1>Welcome</h1>
                    $Content
                </div>
            <% loop $Menu(2) %>
                <div id="$URLSegment" class="container">
                    <h2>$Title</h2>
                    <% with $Header.ScaleWidth(750) %>
                    <img class="img-fluid" src="$URL" alt="" width="$Width" height="$Height" />
                    <% end_with %>
                    <div>
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
        </div>
    </div>
</body>