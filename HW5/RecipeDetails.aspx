<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/Style.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_ReceipeWebSite %>" DeleteCommand="DELETE FROM [Table] WHERE [RecipeId] = @RecipeId" InsertCommand="INSERT INTO [Table] ([RecipeName], [RecipeSubmittedBy], [RecipeIngredient1], [RecipeIngredient2], [RecipeIngredient3], [RecipeIngredient4], [RecipeIngredient5], [RecipePreperation], [RecipeNotes]) VALUES (@RecipeName, @RecipeSubmittedBy, @RecipeIngredient1, @RecipeIngredient2, @RecipeIngredient3, @RecipeIngredient4, @RecipeIngredient5, @RecipePreperation, @RecipeNotes)" SelectCommand="SELECT * FROM [Table] WHERE ([RecipeId] = @RecipeId)" UpdateCommand="UPDATE [Table] SET [RecipeName] = @RecipeName, [RecipeSubmittedBy] = @RecipeSubmittedBy, [RecipeIngredient1] = @RecipeIngredient1, [RecipeIngredient2] = @RecipeIngredient2, [RecipeIngredient3] = @RecipeIngredient3, [RecipeIngredient4] = @RecipeIngredient4, [RecipeIngredient5] = @RecipeIngredient5, [RecipePreperation] = @RecipePreperation, [RecipeNotes] = @RecipeNotes WHERE [RecipeId] = @RecipeId">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="RecipeId" QueryStringField="RecipeId" Type="Int32" />
            </SelectParameters>
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
        <br />

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

                <asp:Label ID="Lbl_delstate" runat="server" Text=""></asp:Label> 
                
                <asp:DetailsView 
                    ID="DetailsView1" 
                    runat="server" 
                    AutoGenerateRows="False" 
                    DataKeyNames="RecipeId" 
                    DataSourceID="SqlDataSource1"
                    HeaderText="Recipe Details"
                    CssClass="cssdetailsview"
                    HeaderStyle-CssClass="header"
                    FieldHeaderStyle-CssClass="fieldheader"
                    ItemStyle-CssClass="item"
                    AlternatingRowStyle-CssClass="altrow"
                    CommandRowStyle-CssClass="command"
                    PagerStyle-CssClass="pager"
                    
                    
                    >
                    <Fields>
                        <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                        <asp:BoundField DataField="RecipeSubmittedBy" HeaderText="Submitted By" SortExpression="RecipeSubmittedBy" />
                        <asp:BoundField DataField="RecipeIngredient1" HeaderText="Ingredient 1" SortExpression="RecipeIngredient1" />
                        <asp:BoundField DataField="RecipeIngredient2" HeaderText="Ingredient 2" SortExpression="RecipeIngredient2" />
                        <asp:BoundField DataField="RecipeIngredient3" HeaderText="Ingredient 3" SortExpression="RecipeIngredient3" />
                        <asp:BoundField DataField="RecipeIngredient4" HeaderText="Ingredient 4" SortExpression="RecipeIngredient4" />
                        <asp:BoundField DataField="RecipeIngredient5" HeaderText="Ingredient 5" SortExpression="RecipeIngredient5" />
                        <asp:BoundField DataField="RecipePreperation" HeaderText="Preperation" SortExpression="RecipePreperation" />
                        <asp:BoundField DataField="RecipeNotes" HeaderText="Notes" SortExpression="RecipeNotes" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <br />
                <br />
        
         </div>
        <div id="footer">
            Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Eric Kroll - 6k:183:Systems Design &amp; Development 
        </div>

        </div>
    
    </div>
    </form>
</body>
</html>
