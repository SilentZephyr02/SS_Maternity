$Content
$Form

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="demo" class="carousel slide" data-ride="carousel" data-interval="false">
                <ul class="carousel-indicators">
                    <% loop $Children %>
                    <li data-target="#demo" data-slide-to=$Pos(0) 
                        <% if $First %>
                        class="active"></li>
                        <% else %>
                        ></li>
                        <% end_if %>
                    <% end_loop %>
                </ul>

                
                <div class="carousel-inner">
                <% loop $Children %>
                    <% if $First %>
                    <div class="carousel-item active">
                    <% else %>
                    <div class="carousel-item">
                    <% end_if %>
                        <% with $Header.ScaleWidth(700) %>
                        <img class="img-fluid" src="$URL" alt="" width="$Width" height="$Height" />
                        <% end_with %>
                    </div>
                <% end_loop %>
                </div>

                <a class="carousel-control-prev" href='#demo' data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href='#demo' data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
    </div>
</div>