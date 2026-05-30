<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EBuy.View.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ebuy</title>
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/css/index.css") %>" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg customNavbar px-lg-5 px-3 py-3">
            <a class="navbar-brand navLogo" href="#">Ebuy</a>
            <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#navbarContent">
                <i class="fa-solid fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarContent">
                <ul class="navbar-nav align-items-lg-center">
                    <li class="nav-item mr-lg-4">
                        <a class="nav-link navItem" href="checkout.aspx" target="_self">
                            <i class="fa-solid fa-cart-shopping cartIcon"></i>
                        </a>
                    </li>
                    <li class="nav-item mr-lg-4">
                        <a class="nav-link navItem" href="Categories.aspx" target="_self">Products</a>
                    </li>
                    <li class="nav-item">
                        <a href="DatepickerSelect2.aspx" target="_self" class="btn signBtn">SignUp</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page"><a href="Index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="IframeApply1.aspx">User Register</a></li>
                    <li class="breadcrumb-item"><a href="DatepickerSelect22.aspx">Admin Register</a></li>
                    <li class="breadcrumb-item"><a href="Categories.aspx">Category</a></li>
                    <li class="breadcrumb-item"><a href="ViewProduct.aspx">Product</a></li>
                    <li class="breadcrumb-item active"><a href="checkout.aspx">Checkout</a></li>
                </ol>
            </nav>
        </div>
        <section class="landing d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-9">
                        <div class="landHead mb-2">
                            <h1>Ebuy</h1>
                        </div>
                        <div class="sitedesc">
                            <p>A digital storefront enabling businesses to sell products or services, accept payments, and manage orders online. Operating 24/7, it features product catalogs, shopping carts, and secure checkout, replacing physical infrastructure with online browsing.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
