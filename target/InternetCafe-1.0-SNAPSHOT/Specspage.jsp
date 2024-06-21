<%-- 
    Document   : Specspage
    Created on : Jun 17, 2024, 1:47:34 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
        <link rel="stylesheet" type="text/css" href="specs.css">
        <title>Specs page</title>
    </head>
    <body class="Specspage">
        <div class="headerbox">
            <a href="Homepage.jsp"><img class ="Logo" src="image/logo.png"></a>
            <div class="Header">
                <nav>
                    <ul>
                        <li><a href="Homepage.jsp">HOME</a></li>
                        <li><a href="AboutUspage.jsp">ABOUT</a></li>
                        <li><a href="Specspage.jsp">SPECS</a></li>
                        <li><a href="Menupage.jsp">MENU</a></li>
                        <li><a href="Bookingpage.jsp">BOOKING</a></li>
                        <li><a href="Accountpage.jsp">ACCOUNT</a></li>
                        <a href="Login.jsp" class="log"><svg xmlns="http://www.w3.org/2000/svg" height="4.3vh" viewBox="-10 -1010 960 960" width="4.3vh" fill="#fff"><path d="M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h280v80H200v560h280v80H200Zm440-160-55-58 102-102H360v-80h327L585-622l55-58 200 200-200 200Z"/></svg></a>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="Specs">
            <label class="title">Specs</label>
            <div class="contain gaming">
                <div class="tit">
                    <label class="big">Gaming Area</label>
                    <label class="small">Price: $10/hour</label>
                    <p>Step into the ultimate gaming paradise with our Gaming Level, tailored specifically for gamers and eSports enthusiasts. Our setup includes top-tier gaming PCs, high-end gaming chairs, and professional-grade peripherals, all designed to offer an immersive gaming experience. Enjoy ultra-fast internet, access to a vast library of popular games, and participate in exciting tournaments. Competitive hourly rates and special group packages make this the go-to destination for serious gamers seeking top performance and thrilling gameplay.</p>
                </div>
                <div class="spec">
                    <ul>
                        <li> 
                            <div class="first" onclick="showbox(event, 'gaming-screen')">
                                <label>Screen</label>
                                <span>+</span>
                            </div>
                            <div class="second gaming-screen">
                                <label>Gaming Gigabyte GS27F</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-cast"></i></td>
                                        <td>Flat Screen, 27 inches, 1920 x 1080 Pixels, FHD, 300 nits, IPS</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-hdmi"></i></td>
                                        <td>HDMI 2.0 2, DisplayPort 1.4 1</td>
                                    </tr>
                                </table>
                                <p>With the Gigabyte GS27F monitor, the gaming experience of eSports enthusiasts will be taken to the next level. Not only does it impress with its crisp 27-inch IPS panel, but it also features an inspiring design and support for leading gaming technologies such as AMD FreeSync Premium and HDR Ready.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'gaming-PC')">
                                <label>PC</label>
                                <span>+</span>
                            </div>
                            <div class="second gaming-PC">
                                <label>PC Gaming E-Power Crystal White</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-cpu"></i></td>
                                        <td>Intel, Core i7, 12700F</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined" style="transform: rotate(90deg); text-align: left;">memory_alt</span></td>
                                        <td>32 GB (4 8GB sticks), DDR4, 3200 MHz</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-device-ssd"></i></td>
                                        <td>SSD 500 GB</td>
                                    </tr>
                                </table>
                                <p>A PC that is "quality" from the inside out, striking pure white in every component and unparalleled configuration, PC Gaming E-Power Crystal White shows you the true value of a gaming PC, inspiring every day.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'gaming-mouse')">
                                <label>Mouse</label>
                                <span>+</span>
                            </div>
                            <div class="second gaming-mouse">
                                <label>Steelseries Aerox 3 Wireless</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-mouse"></i></td>
                                        <td>Gaming Mouse</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-usb-plug"></i></td>
                                        <td>Wireless</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-brightness-low"></i></td>
                                        <td>Led RGB</td>
                                    </tr>
                                </table>
                                <p>Aerox 3 Wireless is a wireless gaming mouse line of Steelseries - a brand specializing in manufacturing gaming accessories in the world. This product possesses a number of outstanding characteristics and features such as IP54 water and dust resistance, TrueMove Core sensor, battery life up to 200 hours,... In particular, the super beautiful mouse shape along with the vibrant colors of Aerox 3 Wireless will make your working and gaming corner more attractive.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'gaming-keyboard')">
                                <label>KeyBoard</label>
                                <span>+</span>
                            </div>
                            <div class="second gaming-keyboard">
                                <label>Razer Huntsman V2 Linear Optical Switch PUBG BATTLEGROUNDS Edition</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">switch_access</span></td>
                                        <td>Razer™ Linear Optical Switches Gen-2</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">switch</span></td>
                                        <td>Doubleshot ABS keycaps</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-highlights"></i></td>
                                        <td>Sound Dampening Foam</td>
                                    </tr>
                                </table>
                                <p>The Razer Huntsman V2 series keyboard has impressive performance, equipped with an exclusive set of Switches that provide an extremely smooth typing experience. It doesn't stop there, thanks to the design inspired by PUBG BATTLEGROUNDS Edition, it makes players excited when typing and helps the camera angle be more unique.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'gaming-headphone')">
                                <label>Headphone</label>
                                <span>+</span>
                            </div>
                            <div class="second gaming-headphone">
                                <label>HyperX Cloud Orbit S</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">headphones</span></td>
                                        <td>Audeze™ 100mm planar magnetic drivers</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">hearing</span></td>
                                        <td>Waves Nx™ head tracking technology, fully immersive 3D audio</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-noise-reduction"></i></td>
                                        <td>Noise cancellation</td>
                                    </tr>
                                </table>
                                <p>HyperX Cloud Orbit S is an exceptional headset with impressive 3D audio technology, high-res audio support, and a wide range of compatibility options.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'gaming-chair')">
                                <label>Chair</label>
                                <span>+</span>
                            </div>
                            <div class="second gaming-chair">
                                <label>Cougar Armor Titan Pro</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">weight</span></td>
                                        <td>Less than 160kg</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">chair</span></td>
                                        <td>Body-embracing High Back Design</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">thermostat_carbon</span></td>
                                        <td>Memory Head Pillow & Lumbar Pillow</td>
                                    </tr>
                                </table>
                                <p>ARMOR TITAN PRO is the perfect gaming throne for those who want to enjoy their games in absolute comfort while enjoying a visually attractive gaming chair. Endowed an extra-large build and with support for up to 160kg, plenty of adjustment options and top-quality materials, if you’re looking for the best gaming chair, you’re looking for ARMOR TITAN PRO!</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="contain vip">
                <div class="spec">
                    <ul>
                        <li> 
                            <div class="first" onclick="showbox(event, 'vip-screen')">
                                <label>Screen</label>
                                <span>+</span>
                            </div>
                            <div class="second vip-screen">
                                <label>Gaming Gigabyte GS27F</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-cast"></i></td>
                                        <td>Flat Screen, 27 inches, 1920 x 1080 Pixels, FHD, 300 nits, IPS</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-hdmi"></i></td>
                                        <td>HDMI 2.0 2, DisplayPort 1.4 1</td>
                                    </tr>
                                </table>
                                <p>With the Gigabyte GS27F monitor, the gaming experience of eSports enthusiasts will be taken to the next level. Not only does it impress with its crisp 27-inch IPS panel, but it also features an inspiring design and support for leading gaming technologies such as AMD FreeSync Premium and HDR Ready.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'vip-PC')">
                                <label>PC</label>
                                <span>+</span>
                            </div>
                            <div class="second vip-PC">
                                <label>PC Gaming E-Power Crystal White</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-cpu"></i></td>
                                        <td>Intel, Core i7, 12700F</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined" style="transform: rotate(90deg); text-align: left;">memory_alt</span></td>
                                        <td>32 GB (4 8GB sticks), DDR4, 3200 MHz</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-device-ssd"></i></td>
                                        <td>SSD 500 GB</td>
                                    </tr>
                                </table>
                                <p>A PC that is "quality" from the inside out, striking pure white in every component and unparalleled configuration, PC Gaming E-Power Crystal White shows you the true value of a gaming PC, inspiring every day.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'vip-mouse')">
                                <label>Mouse</label>
                                <span>+</span>
                            </div>
                            <div class="second vip-mouse">
                                <label>Steelseries Aerox 3 Wireless</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-mouse"></i></td>
                                        <td>Gaming Mouse</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-usb-plug"></i></td>
                                        <td>Wireless</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-brightness-low"></i></td>
                                        <td>Led RGB</td>
                                    </tr>
                                </table>
                                <p>Aerox 3 Wireless is a wireless gaming mouse line of Steelseries - a brand specializing in manufacturing gaming accessories in the world. This product possesses a number of outstanding characteristics and features such as IP54 water and dust resistance, TrueMove Core sensor, battery life up to 200 hours,... In particular, the super beautiful mouse shape along with the vibrant colors of Aerox 3 Wireless will make your working and gaming corner more attractive.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'vip-keyboard')">
                                <label>KeyBoard</label>
                                <span>+</span>
                            </div>
                            <div class="second vip-keyboard">
                                <label>Razer Huntsman V2 Linear Optical Switch PUBG BATTLEGROUNDS Edition</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">switch_access</span></td>
                                        <td>Razer™ Linear Optical Switches Gen-2</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">switch</span></td>
                                        <td>Doubleshot ABS keycaps</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-highlights"></i></td>
                                        <td>Sound Dampening Foam</td>
                                    </tr>
                                </table>
                                <p>The Razer Huntsman V2 series keyboard has impressive performance, equipped with an exclusive set of Switches that provide an extremely smooth typing experience. It doesn't stop there, thanks to the design inspired by PUBG BATTLEGROUNDS Edition, it makes players excited when typing and helps the camera angle be more unique.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'vip-headphone')">
                                <label>Headphone</label>
                                <span>+</span>
                            </div>
                            <div class="second vip-headphone">
                                <label>HyperX Cloud Orbit S</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">headphones</span></td>
                                        <td>Audeze™ 100mm planar magnetic drivers</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">hearing</span></td>
                                        <td>Waves Nx™ head tracking technology, fully immersive 3D audio</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-noise-reduction"></i></td>
                                        <td>Noise cancellation</td>
                                    </tr>
                                </table>
                                <p>HyperX Cloud Orbit S is an exceptional headset with impressive 3D audio technology, high-res audio support, and a wide range of compatibility options.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'vip-chair')">
                                <label>Chair</label>
                                <span>+</span>
                            </div>
                            <div class="second vip-chair">
                                <label>Cougar Armor Titan Pro</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">weight</span></td>
                                        <td>Less than 160kg</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">chair</span></td>
                                        <td>Body-embracing High Back Design</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">thermostat_carbon</span></td>
                                        <td>Memory Head Pillow & Lumbar Pillow</td>
                                    </tr>
                                </table>
                                <p>ARMOR TITAN PRO is the perfect gaming throne for those who want to enjoy their games in absolute comfort while enjoying a visually attractive gaming chair. Endowed an extra-large build and with support for up to 160kg, plenty of adjustment options and top-quality materials, if you’re looking for the best gaming chair, you’re looking for ARMOR TITAN PRO!</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="tit">
                    <label class="big">VIP Area</label><br>
                    <label class="small">Price: $5/hour</label>
                    <p>Experience luxury and exclusivity at our VIP Level, designed for professionals and users who desire a premium environment. Featuring high-performance computers, ergonomic seating, and high-quality peripherals, this level provides enhanced comfort and privacy. Benefit from priority internet access, advanced software suites, and a selection of premium snacks and beverages. With personalized assistance and flexible membership packages, our VIP Level ensures a superior experience tailored to your needs.</p>
                </div>
            </div>
            <div class="contain normal">
                <div class="tit">
                    <label class="big">Normal Area</label><br>
                    <label class="small">Price: $2/hour</label>
                    <p>Our Normal Level offers a comfortable and efficient environment for everyday internet users. Equipped with standard desktop computers, high-speed internet, and essential peripherals, this level caters to casual browsers, students, and anyone needing reliable online access. Enjoy basic refreshments and affordable hourly rates, making it the perfect choice for those who seek a straightforward, no-frills experience.</p>
                    </div>
                <div class="spec">
                    <ul>
                        <li> 
                            <div class="first" onclick="showbox(event, 'normal-screen')">
                                <label>Screen</label>
                                <span>+</span>
                            </div>
                            <div class="second normal-screen">
                                <label>Gaming Gigabyte GS27F</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-cast"></i></td>
                                        <td>Flat Screen, 27 inches, 1920 x 1080 Pixels, FHD, 300 nits, IPS</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-hdmi"></i></td>
                                        <td>HDMI 2.0 2, DisplayPort 1.4 1</td>
                                    </tr>
                                </table>
                                <p>With the Gigabyte GS27F monitor, the gaming experience of eSports enthusiasts will be taken to the next level. Not only does it impress with its crisp 27-inch IPS panel, but it also features an inspiring design and support for leading gaming technologies such as AMD FreeSync Premium and HDR Ready.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'normal-PC')">
                                <label>PC</label>
                                <span>+</span>
                            </div>
                            <div class="second normal-PC">
                                <label>PC Gaming E-Power Crystal White</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-cpu"></i></td>
                                        <td>Intel, Core i7, 12700F</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined" style="transform: rotate(90deg); text-align: left;">memory_alt</span></td>
                                        <td>32 GB (4 8GB sticks), DDR4, 3200 MHz</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-device-ssd"></i></td>
                                        <td>SSD 500 GB</td>
                                    </tr>
                                </table>
                                <p>A PC that is "quality" from the inside out, striking pure white in every component and unparalleled configuration, PC Gaming E-Power Crystal White shows you the true value of a gaming PC, inspiring every day.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'normal-mouse')">
                                <label>Mouse</label>
                                <span>+</span>
                            </div>
                            <div class="second normal-mouse">
                                <label>Steelseries Aerox 3 Wireless</label>
                                <table>
                                    <tr>
                                        <td class="col1"><i class="bi bi-mouse"></i></td>
                                        <td>Gaming Mouse</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-usb-plug"></i></td>
                                        <td>Wireless</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-brightness-low"></i></td>
                                        <td>Led RGB</td>
                                    </tr>
                                </table>
                                <p>Aerox 3 Wireless is a wireless gaming mouse line of Steelseries - a brand specializing in manufacturing gaming accessories in the world. This product possesses a number of outstanding characteristics and features such as IP54 water and dust resistance, TrueMove Core sensor, battery life up to 200 hours,... In particular, the super beautiful mouse shape along with the vibrant colors of Aerox 3 Wireless will make your working and gaming corner more attractive.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'normal-keyboard')">
                                <label>KeyBoard</label>
                                <span>+</span>
                            </div>
                            <div class="second normal-keyboard">
                                <label>Razer Huntsman V2 Linear Optical Switch PUBG BATTLEGROUNDS Edition</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">switch_access</span></td>
                                        <td>Razer™ Linear Optical Switches Gen-2</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">switch</span></td>
                                        <td>Doubleshot ABS keycaps</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-highlights"></i></td>
                                        <td>Sound Dampening Foam</td>
                                    </tr>
                                </table>
                                <p>The Razer Huntsman V2 series keyboard has impressive performance, equipped with an exclusive set of Switches that provide an extremely smooth typing experience. It doesn't stop there, thanks to the design inspired by PUBG BATTLEGROUNDS Edition, it makes players excited when typing and helps the camera angle be more unique.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'normal-keyboard')">
                                <label>Headphone</label>
                                <span>+</span>
                            </div>
                            <div class="second normal-headphone">
                                <label>HyperX Cloud Orbit S</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">headphones</span></td>
                                        <td>Audeze™ 100mm planar magnetic drivers</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">hearing</span></td>
                                        <td>Waves Nx™ head tracking technology, fully immersive 3D audio</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><i class="bi bi-noise-reduction"></i></td>
                                        <td>Noise cancellation</td>
                                    </tr>
                                </table>
                                <p>HyperX Cloud Orbit S is an exceptional headset with impressive 3D audio technology, high-res audio support, and a wide range of compatibility options.</p>
                            </div>
                        </li>
                        <li> 
                            <div class="first" onclick="showbox(event, 'normal-chair')">
                                <label>Chair</label>
                                <span>+</span>
                            </div>
                            <div class="second normal-chair">
                                <label>Cougar Armor Titan Pro</label>
                                <table>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">weight</span></td>
                                        <td>Less than 160kg</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">chair</span></td>
                                        <td>Body-embracing High Back Design</td>
                                    </tr>
                                    <tr>
                                        <td class="col1"><span class="material-symbols-outlined">thermostat_carbon</span></td>
                                        <td>Memory Head Pillow & Lumbar Pillow</td>
                                    </tr>
                                </table>
                                <p>ARMOR TITAN PRO is the perfect gaming throne for those who want to enjoy their games in absolute comfort while enjoying a visually attractive gaming chair. Endowed an extra-large build and with support for up to 160kg, plenty of adjustment options and top-quality materials, if you’re looking for the best gaming chair, you’re looking for ARMOR TITAN PRO!</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <script>
                let status = 0;
                function showbox(event, classname){
                    if (status ===0){
                        event.preventDefault();
                        hiddenbox(event, 'second');
                        var elements = document.getElementsByClassName(classname);
                        for (var i = 0; i < elements.length; i++) {
                            elements[i].style.display = 'block';
                        }
                        status = 1;
                    } else {
                        hiddenbox(event, classname);
                        status = 0;
                    }                    
                }

                function hiddenbox(event, classname){
                    event.preventDefault();
                    var elements = document.getElementsByClassName(classname);
                    for (var i = 0; i < elements.length; i++) {
                        elements[i].style.display = 'none';
                    }
                }
            </script>
        </div>
        <div class="Footer">
            <div class="Contact">
                <p><u>Contact</u></p>
                <p class="Phone">📞 Phone: (+84) 88888888</p>
                <p class="Email">✉️ Email: internetcafe@gmail.com</p>
                <p class="Office">📍 Office: 123 Street 2, Direct 2, Ho Chi Minh City, VietNam</p>
            </div>
            <div class="Support">
                <p><u>Support</u></p>
                <p class="Feedback">Feedback</p>
                <p class="PrivacyPolicy">Privacy Policy</p>
            </div>
            <div class="Acc">
                <p><u>Account</u></p>
                <p class="MyAccount">My account</p>
                <p class="ViewAllOrders">View all orders</p>
            </div>
        </div>
        <script>
            window.addEventListener('scroll', function() {
                    const header = document.getElementsByClassName("headerbox");
                    if (window.scrollY > 0) {
                        document.body.classList.add('scrolled');
                    } else {
                        document.body.classList.remove('scrolled');
                    }
                });
        </script>
    </body>
</html>
