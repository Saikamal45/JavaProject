<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
.nav
{
	height:50px;
	width:100%;
	background-color:green;
	display: flex;
	justify-content:space-around;
	float: left; 
	position:sticky;
	top:0px;
}
.navbar
{
font-size: 20px;
    list-style-type:none;
    font-weight: bold;
    text-transform: uppercase;
    display:flex;
    justify-content: space-around;   
}
.nav li
{
 padding-right: 15px;
 position: relative;
 left:500px;
}
body
{
margin:0px;
 }
#bro
{
    height:50px;
    width:50px;
    position:relative;
    left:550px;
    top:15px;
}
#heading
{
position: absolute;
top:0px;
left:600px;
}
/* Modal Styles */
.modal {
  display: none;
    position: fixed;
    left:500px;
    top:150px;
    width:30%;
    height:500px;
    overflow: auto;
    z-index:1;
    font-size: 20px;
}

.modal-content {
  background-color: #f7f7f7;
  margin: 10% auto;
  padding:20px;
  border:1px solid #888;
  width:80%;
  border-radius: 10px;
  box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
  padding: 20px;
  position: relative;
  overflow: auto;
  max-height: 100vh;
}
input[type="text"],[type="submit"],[type="file"]{
    width: 80%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    margin-bottom: 15px;
  }
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
}

#sub:hover
{
 background-color:green;
}
#sub
{
background-color: grey;
}
.filedata
{
  position:relative;
  top:20px;
  }
.filedata input
{
   margin:10px;
   font-size:15px;
}
#upload
{
  position: relative;
  top:10px;
  color:green;
}
#search
{
  position:relative;
  top:18px;
  color:green;
  padding:3px;
}
.images{
display:flex;
justify-content: space-between;
}
.div1{
text-align: center;
margin: 0 30px;
}
.div1 img {
            width: 400px; /* Set a fixed width for the images */
            height:400px; /* Maintain the aspect ratio */
            border-radius:30px;
        }
</style>
<script>
function openModal(modalId) {
	  const modal = document.getElementById(modalId);
	  modal.style.display = 'block';
	}

	function closeModal(modalId) {
	  const modal = document.getElementById(modalId);
	  modal.style.display = 'none';
	  const searchForm = document.getElementById('searchForm');
	    searchForm.reset();
	}
	

</script>
</head>
<body  style="background-color:#FFEEEE">
<img src="https://play-lh.googleusercontent.com/4RmwPGmLo8-wy7vhiI4PWupkjcZx8fW8B-GXW4uotskN5LSwuceoOJftIq1nrX2few" id="bro"><h1 style="text-align: center;" id="heading">BROCHILL</h1>
<div class="nav">
  <ul class="navbar">
    <!-- Home Link -->
    <li><a href="Home.jsp" onclick="openModal('modal-home')">Home</a></li>

    <!-- AddImage Link -->
    <li><a href="#" onclick="openModal('modal-add-image')">UploadImage</a></li>

    <!-- DisplayImage Link -->
    <li><a href="#" onclick="openModal('modal-display-image')">DisplayImage</a></li>
  </ul>
</div>

<!-- Upload Image Modal -->
<div id="modal-add-image" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal-add-image')">&times;</span>
  <form action="AddImage" method="post" enctype="multipart/form-data">
  <h1 id="upload">Upload Your Image</h1>
  <div id="upload-message"></div>
<table class="filedata">
<tr>
<td><input type="text" placeholder="Enter your tag name" name="tagname" required="required"></td>
</tr>
<tr>
<td><input type="file"  name="pic" required="required"></td>
</tr>
<tr>
<td><input type="submit" value="Upload" id="sub"></td>
</tr>
</table>
</form>
  </div>
</div>

<!-- DisplayImage Modal -->
<div id="modal-display-image" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal-display-image')">&times;</span>
    <h1 id="search">Search your image</h1>
    <form action="DisplayImage" method="post" class="display" id="searchForm">
      <!-- Your DisplayImage form content goes here -->
      <input type="text" placeholder="Enter your tag name" name="tag" required="required"><br><br>
<input type="submit" value="Search" id="sub">
    </form>
  </div>
</div>


<h1>Image Gallery</h1>
<div class="images">
<div class="div1"><img src="https://i.pinimg.com/564x/07/02/a2/0702a2c37ab5ac92248ce86c2ee839cf.jpg"><h2>Rohit</h2></div>
<div class="div1"><img src="https://i.pinimg.com/564x/b4/f5/82/b4f58295b6c72def068836b6682f4b71.jpg"><h2>Virat</h2></div>
<div class="div1"><img src="https://i.pinimg.com/564x/a9/52/9d/a9529d032dca49bfc3dc488c1fcd19c7.jpg"><h2>Surya</h2></div>
</div>
<div class="images">
<div class="div1"><img src="https://i.pinimg.com/564x/90/a2/29/90a22904e7d4e0bdf21f1869f6bfa049.jpg"><h2>Prabhas</h2></div>
<div class="div1"><img src="https://i.pinimg.com/564x/2a/07/69/2a076903fb9f3a5b8cf7f9bfa5d1f6c4.jpg"><h2>RaviTeja</h2></div>
<div class="div1"><img src="https://i.pinimg.com/564x/e8/93/07/e893079f6c0029018f143c0eff8a7aed.jpg"><h2>Dhanush</h2></div>
</div>
<div class="images">
<div class="div1"><img src="https://i.pinimg.com/564x/fe/37/a4/fe37a42b549ab0b61b0082617c486f9a.jpg"><h2>Dog</h2></div>
<div class="div1"><img src="https://i.pinimg.com/564x/87/e2/f0/87e2f0e3ab3a2f719da1ee3db638d71e.jpg"><h2>Cat</h2></div>
<div class="div1"><img src="https://i.pinimg.com/564x/a3/21/94/a3219474934052109a7e90b06ac92c9a.jpg"><h2>Tiger</h2></div>
</div>
</body>
</html>