<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="EBuy.View.ViewProduct" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet" />
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <!-- Page CSS -->
    <link rel="stylesheet" type="text/css" href="../Assets/css/productview.css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar px-4 py-3 bg-light border-bottom">
            <span class="font-weight-bold h5 mb-0" id="navtitle">Loading...</span>
        </nav>
        <div class="container-fluid mt-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page"><a href="Index.aspx">Home</a></li>
            <li class="breadcrumb-item"><a href="iframeApply.aspx">User Register</a></li>
            <li class="breadcrumb-item"><a href="DatepickerSelect2.aspx">Admin Register</a></li>
            <li class="breadcrumb-item"><a href="Categories.aspx">Category</a></li>
            <li class="breadcrumb-item"><a href="ViewProduct.aspx">Product</a></li>
            <li class="breadcrumb-item active"><a href="checkout.aspx">Checkout</a></li>
        </ol>
    </nav>
</div>
        <div class="container-fluid py-4">
            <div class="row" id="prodcontainer">
                <div class="col-md-5" id="prodimgsection">
                    <img id="mainimg" src="" alt="Product"
                        class="img-fluid rounded border w-100 mb-3"
                        style="height: 300px; object-fit: contain;" />
                    <div class="d-flex flex-row flex-wrap justify-content-center" id="thumbcontainer"></div>
                </div>
                <div class="col-md-7" id="proddesc">
                    <p class="text-muted mb-1" id="pcategory"></p>
                    <h4 class="font-weight-bold" id="pname"></h4>
                    <span class="badge badge-success mb-2" id="pstock"></span>
                    <h4 class="text-danger font-weight-bold mb-3" id="pprice"></h4>
                    <p class="font-weight-semibold mb-1"><strong>Summary</strong></p>
                    <p class="text-muted" id="proddetailed"></p>
                    <div class="d-flex mt-3">
                        <button class="btn btn-success mr-3 px-4" id="buybtn" type="button">
                            <i class="fa-solid fa-bolt mr-2"></i>Buy Now
                       
                        </button>
                        <button class="btn btn-info text-white px-4" id="cartbtn" type="button">
                            <i class="fa-solid fa-cart-plus mr-2"></i>Add to Cart
                       
                        </button>
                    </div>
                </div>
            </div>
            <hr class="my-4" />
            <div class="row">
                <div class="col-12">
                    <h5 class="font-weight-bold mb-3">Reviews</h5>
                    <div class="input-group mb-4">
                        <input type="text" id="rev" class="form-control" placeholder="Write your review here..." />
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button" id="submitrev">
                                <i class="fa-solid fa-paper-plane mr-1"></i>Submit
                           
                            </button>
                        </div>
                    </div>
                    <div id="seerev"></div>
                </div>
            </div>
        </div>
    </form>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap 4 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        const params = new URLSearchParams(window.location.search);
        const productId = params.get('id') || 1;
        const loadproduct = async () => {
            try {
                let res = await fetch(`https://dummyjson.com/products/${productId}`);
                let product = await res.json();

                document.getElementById('pcategory').innerText = product.category.toUpperCase();
                document.getElementById('pname').innerText = product.title;
                document.getElementById('navtitle').innerText = product.title;
                document.getElementById('pstock').innerText = product.stock > 0 ? 'In Stock' : 'Out of Stock';
                document.getElementById('pstock').className = product.stock > 0
                    ? 'badge badge-success mb-2'
                    : 'badge badge-danger mb-2';
                document.getElementById('pprice').innerText = `${product.price}$`;
                document.getElementById('proddetailed').innerText = product.description;
                document.getElementById('mainimg').src = product.thumbnail;
                let thumbcontainer = document.getElementById('thumbcontainer');
                let thumbHtml = '';
                product.images.slice(0, 4).forEach((img, index) => {
                    thumbHtml += `
                        <img src="${img}" alt="thumb${index}"
                             class="thumb-img rounded border mr-2 mb-2"
                             data-src="${img}"
                             style="width:60px; height:60px; object-fit:contain; cursor:pointer;" />
                    `;
                });
                thumbcontainer.innerHTML = thumbHtml;
                thumbcontainer.querySelectorAll('.thumb-img').forEach((thumb) => {
                    thumb.onclick = () => {
                        document.getElementById('mainimg').src = thumb.dataset.src;
                        thumbcontainer.querySelectorAll('.thumb-img').forEach(t => t.classList.remove('active-thumb'));
                        thumb.classList.add('active-thumb');
                    };
                });
                document.getElementById('buybtn').onclick = () => {
                    Swal.fire({ icon: 'info', title: 'Coming Soon!', text: 'Buy Now feature is coming soon.' });
                };
                document.getElementById('cartbtn').onclick = () => {
                    Swal.fire({ icon: 'success', title: 'Added!', text: `${product.title} added to cart.`, timer: 1500, showConfirmButton: false });
                };
                loadreviews(productId);
            } catch (e) {
                Swal.fire({ icon: 'error', title: 'Error', text: 'Failed to load product. Please try again.' });
            }
        };
        const loadreviews = (id) => {
            let reviews = JSON.parse(localStorage.getItem(`reviews_${id}`)) || [];
            let seerev = document.getElementById('seerev');
            if (reviews.length === 0) {
                seerev.innerHTML = `<p class="text-muted">No reviews yet. Be the first to review!</p>`;
                return;
            }
            let html = '';
            reviews.forEach((rev) => {
                html += `
                    <div class="card mb-2 shadow-sm">
                        <div class="card-body py-2 px-3">
                            <p class="font-weight-bold mb-1 text-info">${rev.user}</p>
                            <p class="mb-0 text-muted">${rev.text}</p>
                        </div>
                    </div>
                `;
            });
            seerev.innerHTML = html;
        };
        document.getElementById('submitrev').onclick = () => {
            let revInput = document.getElementById('rev');
            let revtext = revInput.value.trim();
            if (revtext === '') {
                Swal.fire({ icon: 'warning', title: 'Empty Review', text: 'Please write something before submitting.' });
                return;
            }
            let reviews = JSON.parse(localStorage.getItem(`reviews_${productId}`)) || [];
            reviews.push({ user: 'You', text: revtext });
            localStorage.setItem(`reviews_${productId}`, JSON.stringify(reviews));
            revInput.value = '';
            loadreviews(productId);
            Swal.fire({ icon: 'success', title: 'Review Submitted!', timer: 1200, showConfirmButton: false });
        };
        loadproduct();
    </script>
</body>
</html>
