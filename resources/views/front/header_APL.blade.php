<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-control" content="public">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Investir en Australie</title>
    <!-- Styles -->
    <link href="../../../fonts.googleapis.com/css178b.css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">
    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="{{ link_img('favicon.png') }}">
    <!-- Bootstrap -->
    {!! plugin_css('assets/css/multirange') !!}
    {!! plugin_css('plugins/font-awesome/css/font-awesome.min') !!}
    {!! plugin_css('plugins/slick/slick') !!}
    {!! plugin_css('plugins/slick-nav/slicknav') !!}
    {!! plugin_css('plugins/wow/animate') !!}
    {!! helper_css('bootstrap') !!}
    {!! helper_css('theme') !!}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.9.0/css/bootstrap-slider.min.css" rel="stylesheet" />
{!! helper_css('head') !!}

</head>
<body {!! (empty($body)) ? null : $body!!}>
<div id="page-loader">
    <div class="loaders">
        <img src="{{ link_img('assets/images/loader/3.gif') }}" alt="First Loader">
        <img src="{{ link_img('assets/images/loader/4.gif') }}" alt="First Loader">
    </div>
</div>
<header id="head">
    <div id="site-header-top" class="barreNoir">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="clearfix">
                        <p class="contanct">Appelez-nous: +61 00 000 000</p>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="clearfix">
                        <div class="language-in-header">
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                        </div>
                        <div class="language-in-header">
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                        <div class="language-in-header">
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </div>
                        <div class="language-in-header">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </div>
                        <div class="language-in-header">
                            <i class="fa fa-globe"></i>
                            <label for="language-dropdown">Langue : </label>
                            <select name="currency" id="language-dropdown">
                                <option value="FRS"> &nbsp; Fr</option>
                                <option value="ENG"> &nbsp; Eng</option>
                            </select>
                        </div>

                        <div class="currency-in-header">
                            <i class="fa fa-mouse-pointer"></i>
                            <label for="currency-dropdown"> <a href="#">{!! session('login') !!} </a> </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <nav class="navbar navbar-default navbar-fixed-top">     -->
    <div class="container top-menu" >
        <div class="row">
            <div class="col-md-3" >
                <figure id="site-logo" class="logo">
                    <a href="{{url("/")}}">
                        <img src="{{ link_img('assets/images/logo.png') }}" alt="Logo">
                    </a>
                </figure>
            </div>
            <div class="col-md-6 col-sm-7 ">
                <nav id="site-nav" class="nav navbar-default menuBtn">
                    <ul class="nav navbar-nav ">
                        <li>
                            <a href="#">IMMOBILIER</a>
                            <ul>
                                <li>
                                    <a href="{{url('immobilier/residentiel')}}">Résidentiel</a>
                                </li>
                                <li>
                                    <a href="{{url('immobilier/foncier')}}">Foncier</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">BUSINESS</a>
                            <ul>
                                <li>
                                    <a href="{{url('business/industriel')}}">Industriel</a>
                                </li>
                                <li>
                                    <a href="{{url('business/commercial')}}">Commercial</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="{{route('front.services')}}">NOS SERVICES</a>
                        </li>
                        <li>
                            <a href="{{route('blog')}}">BLOG</a>
                        </li>
                        <li>
                            <a href="immobilier.php">MON COMPTE</a>
                            <ul>
                                <li>
                                    <a href="compteAPL.php">TABLEAU DE BORD</a>
                                </li>
                                <li>
                                    <a href="majAFA.php">MISE A JOUR PROFIL</a>
                                </li>
                                <li>
                                    <a href="liaison-exclusive.php">CLIENT EN LIAISON EXCLUSIVE</a>
                                </li>
                                <li>
                                    <a href="encoursAFA.php">PRODUIT EN COURS DE VENTE</a>
                                </li>
                                <li>
                                    <a href="vendusAFA.php">PRODUIT VENDUS PRECEDEMMENT</a>
                                </li>
                                <li class="submenu">
                                    <a href="#">
                                        <i class="glyphicon glyphicon-list"></i> Messagerie
                                        <span class="caret pull-right"></span>
                                    </a>
                                    <!-- Sub menu -->
                                    <ul>
                                        <li><a href="reception.php">Boite de réception</a></li>
                                        <li><a href="redaction.php">Boite de rédaction</a></li>
                                        <li><a href="archive.php">Boite des archives</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="{{route('deconnection')}}">DECONNEXION</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-3 col-sm-4">

                <form class="navbar-form form-search searchMenu" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" name="q">
                        <div class="input-group-btn">
                            <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <!-- </nav> -->
</header>
<!-- content -->
