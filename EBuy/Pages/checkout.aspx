<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="EBuy.Pages.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
    <link rel="stylesheet" type="text/css" href="../Assets/css/cart.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet" />
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
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
        <div>
            <div class="productnav">
                <div class="producthead">
                    <a href="Index.aspx">
                        <img src="../Assets/images/back-arrow.png" alt="go_back" class="back" /></a>
                    <h3>Cart</h3>
                </div>
            </div>
            <div class="cartcontent">
                <div class="cartlist">
                    <table class="carttable">
                        <%--<tr>
                            <td class="cartitem">Iphone 16 Pro max</td>
                            <td class="cartitem1">
                                <div class="incdec">
                                    <div class="inc">
                                        <button id="decbtn" class="decbtn" type="button">-</button>
                                    </div>
                                    <div class="count">
                                        <p id="counttext" class="counttext">0</p>
                                    </div>
                                    <div class="dec">
                                        <button onclick="" id="incbtn" class="incbtn" type="button">+</button>
                                    </div>
                                </div>
                            </td>
                            <td class="cartitem2">99.99 <span>$</span></td>
                        </tr>
                        <tr>
                            <td class="cartitem">Samsung S25</td>
                            <td class="cartitem1">
                                <div class="incdec">
                                    <div class="inc">
                                        <button id="decbtn" class="decbtn" type="button">-</button>
                                    </div>
                                    <div class="count">
                                        <p id="counttext" class="counttext">0</p>
                                    </div>
                                    <div class="dec">
                                        <button onclick="" id="incbtn" class="incbtn" type="button">+</button>
                                    </div>
                                </div>
                            </td>
                            <td class="cartitem2">99.99 <span>$</span></td>
                        </tr>
                        <tr class="totalrow">
                            <td class="cartitem3" colspan="2">Total</td>
                            <td class="cartitem4">199.98 <span>$</span></td>
                        </tr>--%>
                    </table>
                </div>
                <div class="payments">
                    <div class="payhead">
                        <p>Payment Options</p>
                    </div>
                    <div class="paytypes">
                        <div class="payoption">
                            <input type="radio" id="upi" name="payment" />
                            <label for="upi">UPI</label>
                        </div>
                        <div class="payoption">
                            <input type="radio" id="debit" name="payment" />
                            <label for="debit">Debit Card</label>
                        </div>
                        <div class="payoption">
                            <input type="radio" id="net" name="payment" />
                            <label for="net">Net Banking</label>
                        </div>
                    </div>
                    <%-- <div class="payinputs">

                    </div>--%>
                </div>
                <div class="checkout">
                    <div class="orderbtn">
                        <button class="buybtn">Checkout</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap 4 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<script>
    const cartcheckout = async () => {
        let res = await fetch('https://dummyjson.com/products/category/smartphones');
        let data = await res.json();
        let top2 = data.products.slice(0, 2);
        let carttable = document.querySelector(".carttable");
        carttable.innerHTML = "";
        top2.forEach((product) => {
            carttable.innerHTML += `
                <tr>
                    <td class="cartitem">${product.title}</td>
                    <td class="cartitem1">
                        <div class="incdec">
                            <div class="inc">
                                <button id="decbtn" class="decbtn" type="button">-</button>
                            </div>
                            <div class="count">
                                <p id="counttext" class="counttext">1</p>
                            </div>
                            <div class="dec">
                                <button onclick="" id="incbtn" class="incbtn" type="button">+</button>
                            </div>
                    </td>
                    <td class="cartitem2">${product.price}$</td>
                </tr>
            `;
        });
        carttable.innerHTML += `
            <tr class="totalrow">
                <td class="cartitem3" colspan="2">Total</td>
                <td class="cartitem4" id="cartitem4"></td>
            </tr>
        `;
        let counttxt = document.querySelectorAll(".counttext");
        let dec = document.querySelectorAll(".decbtn");
        let inc = document.querySelectorAll(".incbtn");
        let price = document.querySelectorAll(".cartitem2");
        function totalprice() {
            let total = 0;
            price.forEach((item) => {
                total += parseFloat(item.innerText);
            });
            document.getElementById("cartitem4").innerText = total + "$";
        }
        totalprice();
        inc.forEach((btn, index) => {
            let count = 1;
            let prodprice = top2[index].price;
            btn.onclick = () => {
                count++;
                counttxt[index].innerText = count;
                price[index].innerText = (prodprice * count) + "$";
                totalprice();
            };
            dec[index].onclick = () => {
                if (count > 1) {
                    count--;
                    counttxt[index].innerText = count;
                    price[index].innerText = (prodprice * count) + "$";
                    totalprice();
                }
            };
        });
        //dec.forEach((btn, index) => {
        //    btn.onclick = () => {
        //        let txt = document.querySelectorAll(".counttext")[index];
        //        let count = Number(txt.innerText);
        //        //if (count > 0) {
        //        //    count--;
        //        //    txt.innerText = count;
        //        //}
        //    }
        //});
    };

    //let upi = document.getElementById('upi');
    //if (upi.checked) {

    //}

    cartcheckout();
</script>


