<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 222px; width: 815px">
    
        <asp:SqlDataSource ID="ReceipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_ReceipeWebSite %>" DeleteCommand="DELETE FROM [Table] WHERE [RecipeId] = @RecipeId" InsertCommand="INSERT INTO [Table] ([RecipeName], [RecipeSubmittedBy], [RecipeIngredient1], [RecipeIngredient2], [RecipeIngredient3], [RecipeIngredient4], [RecipeIngredient5], [RecipePreperation], [RecipeNotes]) VALUES (@RecipeName, @RecipeSubmittedBy, @RecipeIngredient1, @RecipeIngredient2, @RecipeIngredient3, @RecipeIngredient4, @RecipeIngredient5, @RecipePreperation, @RecipeNotes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [RecipeName] = @RecipeName, [RecipeSubmittedBy] = @RecipeSubmittedBy, [RecipeIngredient1] = @RecipeIngredient1, [RecipeIngredient2] = @RecipeIngredient2, [RecipeIngredient3] = @RecipeIngredient3, [RecipeIngredient4] = @RecipeIngredient4, [RecipeIngredient5] = @RecipeIngredient5, [RecipePreperation] = @RecipePreperation, [RecipeNotes] = @RecipeNotes WHERE [RecipeId] = @RecipeId">
            <DeleteParameters>
                <asp:Parameter Name="RecipeId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="RecipeSubmittedBy" Type="String" />
                <asp:Parameter Name="RecipeIngredient1" Type="String" />
                <asp:Parameter Name="RecipeIngredient2" Type="String" />
                <asp:Parameter Name="RecipeIngredient3" Type="String" />
                <asp:Parameter Name="RecipeIngredient4" Type="String" />
                <asp:Parameter Name="RecipeIngredient5" Type="String" />
                <asp:Parameter Name="RecipePreperation" Type="String" />
                <asp:Parameter Name="RecipeNotes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="RecipeSubmittedBy" Type="String" />
                <asp:Parameter Name="RecipeIngredient1" Type="String" />
                <asp:Parameter Name="RecipeIngredient2" Type="String" />
                <asp:Parameter Name="RecipeIngredient3" Type="String" />
                <asp:Parameter Name="RecipeIngredient4" Type="String" />
                <asp:Parameter Name="RecipeIngredient5" Type="String" />
                <asp:Parameter Name="RecipePreperation" Type="String" />
                <asp:Parameter Name="RecipeNotes" Type="String" />
                <asp:Parameter Name="RecipeId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

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

       
        
        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="RecipeId" 
            DataSourceID="ReceipeDataSource" 
            PageSize="5"
            Gridlines="None"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr"

        >

            <Columns>
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                <asp:BoundField DataField="RecipeSubmittedBy" HeaderText="Submitted By" SortExpression="RecipeSubmittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="RecipeId" DataNavigateUrlFormatString="RecipeDetails.aspx?RecipeId={0}" HeaderText="View Details" Text="Select" />
            </Columns>

        </asp:GridView>
  
        </div>

        <div id="footer">
            Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
        </div>

        </div>
    
    </div>
    </form>
</body>
</html>
