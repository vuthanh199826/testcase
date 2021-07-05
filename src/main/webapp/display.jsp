<%--
  Created by IntelliJ IDEA.
  User: THANH
  Date: 7/4/2021
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="ex2.css">
    <style>
        .nav-item {
            font-size: 20px;
        }

        .nav-link:hover {
            color: #ff6700 !important;
            background-color: #8d21bb;
        }

        .dropdown-item {
            color: aliceblue;
        }

        .dropdown-item:hover {
            background-color: #ff6700;
        }

        .row {
            margin-top: 20px;
        }

        .container .row .col-6 .col-3 {
            float: left;
            font-size: 13px;
            text-align: center;
        }

        .container .row .col-6 .col-3:hover {
            color: #ff6700;
            cursor: pointer;
            font-family: "Times New Roman";
        }

        body {

            background-size: cover;
        }

        #top {
            background: url("https://media.giphy.com/media/ytwDCy4skFkEzyw4G4/giphy.gif");
        }

        #ul1 {
            background-color: dimgrey;
        }
        .card-img-top {
            transition: 1s;
            perspective: 1000px;
        }

        .card-img-top:hover {
            transform: scale(1.3);
        }
    </style>
</head>
<body>
<div id="top" class="container">
    <!--  // row 1-->
    <div class="row">
        <div class="col-6">
            <p style="font-size: 20px">Thanh Vũ</p>
        </div>
        <div class="col-6">
            <div class="row">
                <div class="col-6"></div>
                <div class="col-6">
                </div>
            </div>
        </div>
    </div>
</div>
<!--  // row 2-->
<div class="row">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img width="250px"
                                                  src="https://mivietnam.vn/wp-content/uploads/2019/08/cropped-LOGO-MIVIETNAM.png"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#a"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="a">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#news">Sản phẩm mới</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Khuyến mãi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hướng dẫn sử dụng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tin tức</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Liên hệ</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <!--          <div class="icon-gio-hang"></div>-->
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>
<!--  //row 3-->
<div class="row">
    <div class="col-3" id="ul1">
        <ul style="list-style-type: none;background-color: dimgrey;margin-top: 20px"
            class="dropdown-menu-1 xl-6 lh-3-md-1">
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">TẤT CẢ SẢN PHẨM</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">THƯƠNG HIỆU</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">NHÀ THÔNG MINH</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">ĐIỆN THOẠI THÔNG MINH</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">ROBOT HÚT BỤI</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">ÂM THANH - HÌNH ẢNH</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">CAMERA - THIẾT BỊ WIFI</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">THIẾT BỊ GIA ĐÌNH</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">SỨC KHỎE - THỂ THAO</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">LAPTOP</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">SẠC - CÁP - Ổ ĐIỆN</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">THIẾT BỊ GIA ĐÌNH</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">OTO - XE ĐIỆN</a></li>
            <li><a class="dropdown-item xl-6 lh-3-md-1" href="#">THỜI TRANG- DU LỊCH</a></li>
        </ul>
    </div>
    <div class="col-9">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                        class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://mivietnam.vn/wp-content/uploads/2021/06/BANNER-KING-R2-1.jpg"
                         class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://mivietnam.vn/wp-content/uploads/2021/06/Banner-Dreame-D9.jpg"
                         class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://mivietnam.vn/wp-content/uploads/2021/06/Banner-Covid-web-1.jpg"
                         class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>


    </div>
</div>
<!--  // row4-->
<div class="row">
    <div class="col-2 text-center">
        <a><img src="https://mivietnam.vn/wp-content/uploads/2019/09/MIVIETNAM-FLASH-SALE.jpg" WIDTH="100%">FLASH
            SALE</a>
    </div>
    <div class="col-2" style="text-align: center">
        <a><img src="https://mivietnam.vn/wp-content/uploads/2019/09/MIVIETNAM-NEW-PRODUCTS-01.jpg" WIDTH="100%">SẢN
            PHẨM MỚI</a>
    </div>
    <div class="col-2" style="text-align: center">
        <a><img src="https://mivietnam.vn/wp-content/uploads/2019/09/MIVIETNAM-DANG-CAP-MI.jpg" WIDTH="100%">ĐẲNG CẤP MI</a>
    </div>
    <div class="col-2" style="text-align: center">
        <a><img src="https://mivietnam.vn/wp-content/uploads/2019/09/MIVIETNAM-DANG-CAP-MI.jpg" WIDTH="100%">R2</a>
    </div>
    <div class="col-2" style="text-align: center">
        <a><img src="https://mivietnam.vn/wp-content/uploads/2020/11/01.png" WIDTH="100%">ROBO ROCK S6</a>
    </div>
    <div class="col-2" style="text-align: center">
        <a><img src="https://mivietnam.vn/wp-content/uploads/2021/04/3c.png" WIDTH="100%">MI AIR 3C</a>
    </div>
</div>
<!--  // row 5-->
<div class="row" id="news">
    <div class="container">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <div style=" float: left;color: aliceblue; background-color:#ff6700 ;padding: 10px;font-size: 20px;border-radius: 5px"
                             class="col-6">Sản phẩm mới
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="col-3">Sản phẩm mới</div>
                        <div class="col-3">Sản phẩm bán chạy</div>
                        <div class="col-3">Sản phẩm khuyến mãi</div>
                        <div class="col-3">Sản phẩm mới</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
<%--            <div class="col-2">--%>
<%--                <div class="card" style="width: 100%;">--%>
<%--                    <img src="https://mivietnam.vn/wp-content/uploads/2021/06/mivietnam-dong-ho-amazfit-gts2-mini-avarta-xanh.jpg"--%>
<%--                         class="card-img-top" alt="...">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 style="color: #ff6700" class="card-title">490.000đ</h5>--%>
<%--                        <!--                            <p class="card-text">Some quick example text to build on the card title and make up the bulk-->--%>
<%--                        <!--                                of the card's content.</p>-->--%>
<%--                        <!--                            <a href="#" class="btn btn-primary">Go somewhere</a>-->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<c:forEach var="product" items="${listProduct}">
            <div class="col-2">
                <div class="card" style="width: 100%;">
                    <img src="${product.img}"
                         class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 style="color: #ff6700" class="card-title">${product.price}</h5>
                        <!--                            <p class="card-text">Some quick example text to build on the card title and make up the bulk-->
                        <!--                                of the card's content.</p>-->
                        <!--                            <a href="#" class="btn btn-primary">Go somewhere</a>-->
                    </div>
                </div>
            </div>

</c:forEach>

        </div>
    </div>


</div>
<!--// row 6-->
<div style="background-color: #dc2634; color: white; text-align: center" class="row">
    <div class="col-4">
        <p>KHU VỰC MIỀN BẮC</p>
        <p>0123456789</p>
    </div>
    <div class="col-4">
        <p>EMAIL ĐẶT HÀNG</p>
        <p>thanhvu@gmail.com</p>
    </div>
    <div class="col-4">
        <p>KHU VỰC MIỀN NAM</p>
        <p>9876543210</p>
    </div>
</div>
<!--// row 7-->
<div STYLE="background-color: black;color: white;padding: 20px" class="row">
    <div class="row">
        <div class="col-3">
            <p>HỆ THỐNG SHOWROOM TẠI VIỆT NAM</p>
            <p>HÀ NỘI+</p>
            <p>HỒ CHÍ MINH+</p>
            <p>BIÊN HÒA - ĐỒNG NAI+</p>
        </div>
        <div class="col-3">
            <p style="color: white">HỖ TRỢ</p>
            <p style="color: dimgrey">Liên hệ</p>
            <p style="color: dimgrey">Hướng dẫn sử dụng sản phẩm</p>
            <p style="color: dimgrey">Chính sách bán hàng</p>
            <p style="color: dimgrey">Chính sách vận chuyển</p>
            <p style="color: dimgrey">Chính sách đổi trả</p>
        </div>
        <div class="col-3">
            <p style="color: white">QUY ĐỊNH</p>
            <p style="color: dimgrey">Điều khoản sử dụng</p>
            <p style="color: dimgrey">Quy định bảo hành</p>
            <p style="color: dimgrey">Chính sách bảo mật</p>
            <p style="color: dimgrey">Quy định thanh toán</p>
        </div>
        <div class="col-3">
            <p>SẢN PHẨM</p>
            <p style="color: dimgrey">Sản phẩm mới</p>
            <p style="color: dimgrey">Sản phẩm khuyến mãi</p>
            <p style="color: dimgrey">Hệ thống ShowRoom</p>
        </div>
    </div>


    <div class="row">
        <div style="background-color: black" class="row">
            <div class="col-8">
                <div class="row" style="margin-left: 30px">
                    <div class="col-1">
                        <img src="https://mewxu.net/wp-content/uploads/2017/03/fb_icon.png" width="100%">
                    </div>
                    <div class="col-1">
                        <img src="https://e1.pngegg.com/pngimages/18/689/png-clipart-ios-7-icons-updated-twitter-twitter-icon-thumbnail.png"
                             width="100%">
                    </div>
                    <div class="col-1">
                        <img src="https://bagiang.com/wp-content/uploads/2019/02/icon-youtube.png" width="100%">
                    </div>
                    <div class="col-1"></div>
                    <div class="col-1"></div>
                    <div class="col-1"></div>
                    <div class="col-1"></div>
                    <div class="col-1"></div>
                </div>
            </div>
            <div class="col-4">
                <div class="row">
                    <div class="col-6">
                        <img src="https://mivietnam.vn/wp-content/themes/xiaomiviet/images/tbao_BCT.svg" width="70%">
                    </div>
                    <div class="col-6">
                        <img src="https://mivietnam.vn/wp-content/themes/xiaomiviet/images/DMCA.svg" width="70%">
                    </div>
                </div>

            </div>
        </div>
    </div>


</div>
<!--// row 8-->

</div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
