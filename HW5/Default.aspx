<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div id="container">
    
            <div id="menu">

            <div id="navcontainer">
                 <ul id="navlist">
                 <li><a href="./Default.aspx">Home</a></li>
                 <li><a href="./Recipe.aspx">View Recipes</a></li>
                 <li><a href="./NewRecipe.aspx">New Recipe</a></li>
                 <li><a href="./AboutUs.aspx">About Us</a></li>
                 <li><a href="./Contact.aspx">Contact</a></li>
                 </ul>
            </div>
            </div>
            <div id="date">
                <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>

            </div>

                <div id="content">

                   <h1 class="centered"> Welcome to Wicked Easy Recipes </h1>
       
                   <h2 class="centeredd"> Using 5 Ingredients or Less!</h2>
           
                   <p class="centered">

                        <img alt="Recipe Book" title="Recipe Book" src="./images/recipe_book.gif" />
                    </p>
                </div>

            <div id="footer">
            Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
            </div>

            
        </div>
    </div>
    </form>
</body>
</html>
