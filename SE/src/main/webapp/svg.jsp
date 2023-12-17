<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="../CSS/navigationbar.css">
      <link rel="stylesheet" href="../CSS/sitemap.css">
      <title>Sitemap</title>
   </head>

   <body>
      <!--Logo-->
      <a href="Home.html"><img class="logo" src="../Images/logo.png"  width="110" height="27" alt="Website logo"></a>
      <!--Navigation bar-->
      <ul id="navigation">
         <li class="parts"><a href="buy_products.html">Products</a></li>
		 <li class="parts"><a href="gallery.html">Gallery</a></li>
		 <li class="parts"><a href="form.html">Query Form</a></li>
		 <li class="parts"><a href="svg.html">Sitemap</a></li>
		 <li class="parts"><a href="Quiz.html">Quiz</a></li>
		 <li class="parts"><a href="StudentDetails.html">About</a></li>
		 <li class="parts"><a href="News.html">News</a></li>
      </ul>
      <!--background image-->
      <img id="image" src="../Images/siteimage.jpg" alt="Sitemap background">
      <svg  width="1300" height="400">
         <!--rectangles and text inside are grouped with g tags-->
         <g class="group">
            <rect x="600" y="100" rx="20" ry="20" width="150" height="40" stroke="#aef359" stroke-width="2" fill="none"/>
            <text fill="#fff" font-size="14" x="645" y="125"><a href="Home.html" fill="white">EverGrow</a></text>
         </g>
         <g>
            <rect x="130" y="250" rx="20" ry="20" width="120" height="40" stroke="#aef359" stroke-width="2px" fill="none"/>
            <text fill="#000" font-size="14" x="160" y="275"><a href="#" fill="white">Products</a></text>
         </g>
         <g>
            <rect x="280" y="250" rx="20" ry="20" width="120" height="40" stroke="#aef359" stroke-width="2px" fill="none"/>
            <text fill="#000" font-size="14" x="317" y="275"><a href="gallery.html" fill="white">Gallery</a></text>
         </g>
         <g>
            <rect x="450" y="250" rx="20" ry="20" width="150" height="40" stroke="#aef359" stroke-width="2px" fill="none"/>
            <text fill="#000" font-size="14" x="485" y="275"><a href="#" fill="white">Query Form</a></text>
         </g>
         <g>
            <rect x="650" y="250" rx="20" ry="20" width="150" height="40" stroke="#aef359" stroke-width="2px" fill="none"/>
            <text fill="#000" font-size="14" x="700" y="275"><a href="svg.html" fill="white">Sitemap</a></text>
         </g>
         <g>
            <rect x="850" y="250" rx="20" ry="20" width="80" height="40" stroke="#aef359" stroke-width="2px" fill="none"/>
            <text fill="#000" font-size="14" x="876" y="275"><a href="#" fill="white">Quiz</a></text>
         </g>
         <g>
            <rect x="980" y="250" rx="20" ry="20" width="90" height="40" stroke="#aef359" stroke-width="2px" fill="none"/>
            <text fill="#000" font-size="14" x="1006" y="275"><a href="#" fill="white">About</a></text>
         </g>
         <g>
            <rect x="1120" y="250" rx="20" ry="20" width="80" height="40" stroke="#aef359" stroke-width="2px" fill="none"/>
            <text fill="#fff"  font-size="14" x="1144" y="275"><a href="News.html" fill="white">News</a></text>
         </g>
         <!--lines to connect the rectangles-->
         <polyline points="675 141,675 195,190 195,190 249,190 195,1160 195,1160 249" stroke="white" stroke-width="2" fill="transparent"/>
         <polyline points="340 195,340 249,340 195,525 195,525 249,525 195, 725 195,725 249,725 195,890 195,890 249,890 195,1025 195,1025 249" stroke="white" stroke-width="2" fill="transparent"/>

      </svg>
      <!--Page editor-->
      <a class="editor" href="Farwaiz.html"><img src="../Images/editor.jpg" alt="page editor" width="70" height="70"></a>
   </body>
</html>