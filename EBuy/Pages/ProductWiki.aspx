<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductWiki.aspx.cs" Inherits="EBuy.Pages.ProductWiki" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProductWiki</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body style="background-color: #E2D2DF">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5 d-flex justify-content-center">
                    <div class="container mt-3" style="background-color: #E2D2DF">
                        <div class="container d-block mt-3 justify-content-center align-items-center" style="background-color: #E2D2DF">
                            <img src="about:blank" class="card-img mt-3" alt="Card image" />
                        </div>
                    </div>
                </div>
                <div class="col-md-7 text-md-start">
                    <p class="mt-5 h1"></p>
                    <p class="mt-3 wikicontent"></p>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            const params = new URLSearchParams(window.location.search);
            const categoryId = params.get('id');
            console.log(categoryId);
            const wiki = {
                "1": {
                    type: 'Smart Phone',
                    img: '../Assets/images/mobile.png',
                    content: "A mobile phone or cell phone is a portable wireless telephone that allows users to make and receive calls over a radio frequency link while moving within a designated telephone service area, unlike fixed-location phones (landline phones). This radio frequency link connects to the switching systems of a mobile phone operator, providing access to the public switched telephone network (PSTN). Modern mobile telephony relies on a cellular network architecture, which is why mobile phones are often referred to as 'cell phones' in North America."
                },
                "2": {
                    type: 'Laptop',
                    img: '../Assets/images/alllaptop.png',
                    content: "A laptop[a] is a portable personal computer (PC). Laptops typically have a clamshell form factor with a flat-panel screen on the inside of the upper lid and an alphanumeric keyboard and pointing device on the inside of the lower lid.[1][2] Most of the computer's internal hardware is in the lower part, under the keyboard, although many modern laptops have a built-in webcam at the top of the screen, and some even feature a touchscreen display. In most cases, unlike tablet computers which run on mobile operating systems, laptops tend to run on desktop operating systems, which were originally developed for desktop computers."
                },
                "3": {
                    type: 'Shirt',
                    img: '../Assets/images/allshirt.png',
                    content: "Originally an undergarment worn exclusively by men, it has become, in American English, a catch-all term for a broad variety of upper-body garments and undergarments. In British English, a shirt is more specifically a garment with a collar, sleeves with cuffs, and a full vertical opening with buttons or snaps (North Americans would call that a dress shirt, a specific type of collared shirt). A shirt can also be worn with a necktie under the shirt collar."
                },
                "4":{
                    type: 'Shoe',
                    img: '../Assets/images/menshoe.png',
                    content: "A shoe is an item of footwear normally found in pairs intended to protect and comfort the human foot, usually made in such a way that one is designed to fit the left foot and the other the right foot.Shoes are intended to provide further protection to the vulnerable human foot, though the foot is highly adaptable to various terrains.Form was originally tied to function, but over time, shoes also became fashion items.Some shoes are worn as safety equipment, such as steel- toe boots, which are required footwear at industrial worksites."
                },
                "5":{
                    type: 'Kitchen Products',
                    img: '../Assets/images/allkitchen.png',
                    content: "A kitchen is a room or part of a room used for cooking and food preparation in a dwelling or in a commercial establishment. A modern middle-class residential kitchen is typically equipped with a stove, a sink with hot and cold running water, a refrigerator, and worktops and kitchen cabinets arranged according to a modular design. Many households have a microwave oven, a dishwasher, and other electric appliances. The main functions of a kitchen are to store, prepare and cook food (and to complete related tasks such as dishwashing). The room or area may also be used for dining (or small meals such as breakfast), entertaining and laundry. The design and construction of kitchens is a huge market all over the world."
                },
                "6":{
                    type: 'Home appliances',
                    img: '../Assets/images/allhome.png',
                    content: 'The domestic application attached to home appliance is tied to the definition of appliance as "an instrument or device designed for a particular use or function".[3] Collins English Dictionary defines "home appliance" as: "devices or machines, usually electrical, that are in your home and which you use to do jobs such as cleaning or cooking".[4] The broad usage allows for nearly any device intended for domestic use to be a home appliance, including consumer electronics as well as stoves,[5] refrigerators, toasters[5] and air conditioners.'
                }
            };
            if (wiki[categoryId]) {
                $("img").attr("src", wiki[categoryId].img);
                $("img").attr("alt", wiki[categoryId].type);
                $("p").text(wiki[categoryId].type);
                $(".wikicontent").text(wiki[categoryId].content);
            }
        });

    </script>
</body>
</html>

