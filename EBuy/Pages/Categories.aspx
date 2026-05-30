<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="EBuy.View.Categories" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Categories</title>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet" />
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <!-- Page CSS -->
    <link rel="stylesheet" type="text/css" href="../Assets/css/products.css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="productnav navbar d-flex align-items-center px-4 py-3">
            <a href="Index.aspx" class="text-dark mr-3">
                <i class="fa-solid fa-arrow-left fa-lg"></i>
            </a>
            <span class="font-weight-bold h5 mb-0">Products</span>
            <div class="cartlistcount position-relative ml-auto">
                <a href="checkout.aspx" class="text-dark">
                    <i class="fa-solid fa-cart-arrow-down fa-2xl"></i>
                </a>
                <div class="counting position-absolute">
                    <p class="countnum mb-0" id="countnum">0</p>
                </div>
            </div>
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
        <div class="temp">
            <div class="ProductContent d-flex">
                <div class="categoreies">
                    <p class="font-weight-bold my-2">Categories</p>
                    <hr class="categoryhr" />
                    <div class="categoriescontainer"></div>
                </div>
                <div class="procdustslist flex-grow-1">
                    <div class="categorytitle">
                        <p id="categorytypetext" class="font-weight-bold"></p>
                    </div>
                    <div class="categoryproducts d-flex flex-wrap"></div>
                </div>
            </div>
        </div>
        <div class="prodframe" id="prodframe">
            <a href="#" class="prodframe-close" id="prodframeClose">
                <i class="fa-solid fa-x"></i>
            </a>
            <iframe src="" id="prodframeIframe" style="width: 100%; height: 100%; border: none;"></iframe>
        </div>
    </form>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap 4 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        if (window.location.hash === '#prodframe') {
            history.replaceState(null, '', window.location.pathname);
        }
        document.getElementById('prodframeClose').onclick = (e) => {
            e.preventDefault();
            document.getElementById('prodframeIframe').src = '';
            history.replaceState(null, '', window.location.pathname);
            document.getElementById('prodframe').style.display = 'none';
        };
        const loadframe = (id) => {
            document.getElementById('prodframeIframe').src = `ViewProduct.aspx?id=${id}`;
            document.getElementById('prodframe').style.display = 'flex';
        };
        const categoryimg = {
            beauty: '../Assets/images/beauty.png',
            fragrances: '../Assets/images/fragnance.png',
            furniture: '../Assets/images/furniture.png',
            groceries: '../Assets/images/grocery.png',
            "home-decoration": '../Assets/images/homedecor.png',
            "kitchen-accessories": '../Assets/images/kitchen.png',
            laptops: '../Assets/images/laptop.png',
            "mens-shirts": '../Assets/images/menshirt.png',
            "mens-shoes": '../Assets/images/menshoe.png',
            "mens-watches": '../Assets/images/menwatch.png'
        };
        const getcategories = async () => {
            try {
                let res = await fetch('https://dummyjson.com/products/categories');
                let data = await res.json();
                let top10 = data.slice(0, 10);
                let container = document.querySelector('.categoriescontainer');
                let html = '';
                top10.forEach((category, index) => {
                    let image = categoryimg[category.slug] || '';
                    html += `
                        <div id="item${index + 1}" data-category="${category.slug}" class="item d-flex flex-column align-items-center p-2">
                            <img src="${image}" alt="${category.name}" class="img-fluid rounded shadow-sm mb-1" style="width:50px; height:50px; object-fit:contain; border: 1px solid #dee2e6;" />
                            <p class="categoryname text-center mb-0 mt-1">${category.name}</p>
                        </div>
                        <hr class="itemhr w-75 my-1" />
                    `;
                });
                container.innerHTML = html;
                prodbycategory();
            } catch (e) {
                Swal.fire({ icon: 'error', title: 'Error', text: 'Failed to load categories. Please try again.' });
            }
        };
        const prodbycategory = () => {
            let categories = document.querySelectorAll('.item');
            categories.forEach((item) => {
                item.onclick = async () => {
                    try {
                        let category = item.dataset.category;
                        let res = await fetch(`https://dummyjson.com/products/category/${category}`);
                        let data = await res.json();
                        document.getElementById('categorytypetext').innerText = category.toUpperCase();
                        productlisting(data.products);
                    } catch (e) {
                        Swal.fire({ icon: 'error', title: 'Error', text: 'Failed to load products. Please try again.' });
                    }
                };
            });
        };
        const productlisting = (products) => {
            let prodcards = document.querySelector('.categoryproducts');
            let top10 = products.slice(0, 10);
            let html = '';
            top10.forEach((product) => {
                let brand = product.brand || 'N/A';
                html += `
                    <div class="itemcard card">
                        <img src="${product.thumbnail}" alt="${product.title}" class="card-img-top" />
                        <div class="card-body d-flex flex-column p-2">
                            <p class="itemname card-title">${product.title}<br /><span class="itemmodel text-muted">${brand}</span></p>
                            <span class="itemvalue font-weight-bold">${product.price}$</span>
                            <p class="vprod"><a href="#prodframe" class="ifram" onclick="loadframe(${product.id})">View Product</a></p>
                            <div class="itemcardbtn mt-auto d-flex justify-content-between align-items-center">
                                <div class="incdec d-flex align-items-center">
                                    <button class="decbtn btn btn-outline-secondary btn-sm" type="button">-</button>
                                    <span class="counttext mx-2">0</span>
                                    <button class="incbtn btn btn-outline-secondary btn-sm" type="button">+</button>
                                </div>
                                <button class="cartbtn btn btn-info btn-sm text-white" type="button">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                `;
            });
            prodcards.innerHTML = html;
            let allCountText = prodcards.querySelectorAll('.counttext');
            let allInc = prodcards.querySelectorAll('.incbtn');
            let allDec = prodcards.querySelectorAll('.decbtn');
            let allCart = prodcards.querySelectorAll('.cartbtn');
            let totalcartcount = document.getElementById('countnum');
            allInc.forEach((btn, index) => {
                btn.onclick = () => {
                    let count = Number(allCountText[index].innerText);
                    allCountText[index].innerText = count + 1;
                };
            });
            allDec.forEach((btn, index) => {
                btn.onclick = () => {
                    let count = Number(allCountText[index].innerText);
                    if (count > 0) {
                        allCountText[index].innerText = count - 1;
                    }
                };
            });
            allCart.forEach((btn, index) => {
                btn.onclick = () => {
                    let prodcount = Number(allCountText[index].innerText);
                    if (prodcount === 0) {
                        Swal.fire({ icon: 'warning', title: 'Oops!', text: 'Please select at least 1 item before adding to cart.' });
                        return;
                    }
                    let cartcount = Number(totalcartcount.innerText);
                    totalcartcount.innerText = prodcount + cartcount;
                    Swal.fire({ icon: 'success', title: 'Added!', text: `${prodcount} item(s) added to cart.`, timer: 1500, showConfirmButton: false });
                    allCountText[index].innerText = 0;
                };
            });
        };
        getcategories();
    </script>
</body>
</html>
