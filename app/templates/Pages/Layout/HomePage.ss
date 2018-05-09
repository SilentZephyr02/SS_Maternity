<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
    <div class="container-fluid nav-colour d-block d-lg-none">
        <% include NavBar %>
    </div>
    <div class="container-fluid nav-colour d-none d-lg-block text-center">
        <img src="./images/hbdhb-logo">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 borderimg">
            <% with $Level(1) %>
                <nav class="verticalnavbar navbar sticky-top justify-content-center d-none d-lg-block" id="myScrollspy">
                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#$URLSegment" title="Go to the $Title page">$MenuTitle</a>
                        </li>
                        <% end_with %>
                        <% loop $Menu(2) %>
                        <li class="nav-item">
                        <a class="nav-link" href="#$URLSegment" title="Go to $Title section">$MenuTitle</a>
                        </li>
                        <% end_loop %>
                    </ul>
                </nav>
            </div>
            
            
            <div class="col-lg-9 no-padding">
                <div id="$URLSegment" class="container">
                    $Content
                </div>
            <% loop $Menu(2) %>
                <div id="$URLSegment" class="container">
                    <h1>$Title</h1>
                    <% with $Header.ScaleWidth(700) %>
                    <img class="img-fluid" src="$URL" alt="" width="$Width" height="$Height" />
                    <% end_with %>
                    <div>
                        $Content.FirstParagraph
                        <a href="$Link" title="Read more on &quot;{$Title}&quot;">Read more &gt;&gt;</a>
                    </div>
                </div>
            <% end_loop %>
            </div>
        </div>
    </div>
</body>

<% require css("public/css/scrollspy.css") %>