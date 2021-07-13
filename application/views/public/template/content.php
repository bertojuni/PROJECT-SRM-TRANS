
<head>
    <!-- sosmed -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js' type='text/javascript' />
    <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js' type='text/javascript'/>
<script>
    $(window).load(function(){
        $(&#39;.social-buttons .social-icon&#39;).mouseenter(function(){
            $(this).stop();
            $(this).animate({width:&#39;160&#39;}, 500, &#39;easeOutBounce&#39;,function(){});
        });
        $(&#39;.social-buttons .social-icon&#39;).mouseleave(function(){
            $(this).stop();
            $(this).animate({width:&#39;43&#39;}, 500, &#39;easeOutBounce&#39;,function(){});
        });
    });
</script>
    <style>
        .social-buttons {
            position: fixed;
            top: 130px;
            width: 45px;
            z-index: 9999;
        }

        .button-left {
            left: 0;
        }

        .button-right {
            right: 0;
        }

        .social-buttons #twitter-btn .social-icon {
            background-image: url(http://1.bp.blogspot.com/-zt3csy2DqGo/U661h1iTakI/AAAAAAAAAFc/v5tUjZIJDHs/s1600/mas-icons.png);
            background-color: #62BDB2;
            border-radius: 50px;
        }

        .social-buttons #facebook-btn .social-icon {
            background-image: url(http://1.bp.blogspot.com/-zt3csy2DqGo/U661h1iTakI/AAAAAAAAAFc/v5tUjZIJDHs/s1600/mas-icons.png);
            background-color: #3B5998;
            border-radius: 50px;
        }

        .social-buttons #google-btn .social-icon {
            background-image: url(http://1.bp.blogspot.com/-zt3csy2DqGo/U661h1iTakI/AAAAAAAAAFc/v5tUjZIJDHs/s1600/mas-icons.png);
            background-color: #DB4A39;
            border-radius: 50px;
        }

        .social-buttons #rss-btn .social-icon {
            background-image: url(http://1.bp.blogspot.com/-zt3csy2DqGo/U661h1iTakI/AAAAAAAAAFc/v5tUjZIJDHs/s1600/mas-icons.png);
            background-color: #FF8B0F;
            border-radius: 50px;
        }

        .social-buttons #pinterest-btn .social-icon {
            background-image: url(http://1.bp.blogspot.com/-zt3csy2DqGo/U661h1iTakI/AAAAAAAAAFc/v5tUjZIJDHs/s1600/mas-icons.png);
            background-color: #D43638;
            border-radius: 50px;
        }

        .social-buttons #youtube-btn .social-icon {
            background-image: url(http://1.bp.blogspot.com/-zt3csy2DqGo/U661h1iTakI/AAAAAAAAAFc/v5tUjZIJDHs/s1600/mas-icons.png);
            background-color: #C4302B;
            border-radius: 50px;
        }

        .button-left #facebook-btn span {
            background-position: right 10px;
        }

        .button-left #twitter-btn span {
            background-position: right -35px;
        }

        .button-left #google-btn span {
            background-position: right -127px;
        }

        .button-left #rss-btn span {
            background-position: right -80px;
        }

        .button-left #pinterest-btn span {
            background-position: 11px -177px;
        }

        .button-left #youtube-btn span {
            background-position: 11px -223px;
        }

        .button-right #facebook-btn span {
            background-position: 12px 10px;
        }

        .button-right #twitter-btn span {
            background-position: 11px -35px;
        }

        .button-right #google-btn span {
            background-position: 10px -127px;
        }

        .button-right #rss-btn span {
            background-position: 11px -80px;
        }

        .button-right #pinterest-btn span {
            background-position: 11px -177px;
        }

        .button-right #youtube-btn span {
            background-position: 11px -223px;
        }

        .social-buttons #facebook-btn:hover .social-icon {
            background-color: #3B5998;
        }

        .social-buttons #twitter-btn:hover .social-icon {
            background-color: #62BDB2;
        }

        .social-buttons #google-btn:hover .social-icon {
            background-color: #DB4A39;
        }

        .social-buttons #rss-btn:hover .social-icon {
            background-color: #FF8B0F;
        }

        .social-buttons #pinterest-btn:hover .social-icon {
            background-color: #D43638;
        }

        .social-buttons #youtube-btn:hover .social-icon {
            background-color: #C4302B;
        }

        .social-buttons a:hover .social-text {
            display: block;
        }

        .button-left .social-icon {
            -moz-transition: background-color 0.4s ease-in 0s;
            -webkit-transition: background-color 0.4s ease-in 0s;
            background-repeat: no-repeat;
            display: block;
            float: left;
            height: 43px;
            margin-bottom: 2px;
            width: 43px;
        }

        .button-left .social-text {
            display: none;
            float: right;
            font-size: 1em;
            font-weight: bold;
            margin: 11px 40px 11px 0px;
            white-space: nowrap;
        }

        .button-right .social-icon {
            -moz-transition: background-color 0.4s ease-in 0s;
            -webkit-transition: background-color 0.4s ease-in 0s;
            background-repeat: no-repeat;
            display: block;
            float: right;
            height: 43px;
            margin-bottom: 2px;
            width: 43px;
        }

        .button-right .social-text {
            display: none;
            float: left;
            font-size: 80%;
            font-weight: bold;
            margin: 11px 0 11px 40px;
            white-space: nowrap;
        }

        .social-buttons .social-text {
            color: #FFFFFF;
        }
    </style>

</head>
<body>
    
<div class='social-buttons button-right hidden-phone hidden-tablet'>
    <a class='itemsocial' href='https://www.facebook.com/your FB' id='facebook-btn' target='_blank'><span class='social-icon'><span class='social-text'>Follow via Facebook</span></span></a>
    <a class='itemsocial' href='https://twitter.com/your twitter' id='twitter-btn' target='_blank'><span class='social-icon'><span class='social-text'>Follow via Twitter</span></span></a>
    <a class='itemsocial' href='https://plus.google.com/your G+' id='google-btn' target='_blank'><span class='social-icon'><span class='social-text'>Follow via Google</span></span></a>
    <a class='itemsocial' href='http://pinterest.com/your ID' id='pinterest-btn' target='_blank'><span class='social-icon'>
            <span class='social-text'>Follow via Pinterest</span></span></a>
    <a class='itemsocial' href='https://www.youtube.com/user/your ID' id='youtube-btn' target='_blank'><span class='social-icon'><span class='social-text'>Follow via Youtube</span></span></a>
    <a class='itemsocial' href='http://feeds.feedburner.com/your feed' id='rss-btn' target='_blank'><span class='social-icon'><span class='social-text'>Follow via RSS</span></span></a>
</div>

<div id="content">
    <div id="content">
</body>