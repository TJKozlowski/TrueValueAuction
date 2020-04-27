﻿<%@ Page Language="C#" Inherits="truevalueauction.Pages.Home" CodeBehind="~/Pages/Home.aspx.cs" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <link href="../Theme/bootstrap.min.css" rel="stylesheet" />
    <link href="../Theme/home.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-static-top nav-main" style="background-color: #e0e0e0">
            <div class="row" style="margin: 10px 10px 0px 10px">
                <div class="col-sm-6">
                    <h1><strong>True Value Auction</strong></h1>
                </div>
                <div class="col-sm-6" style="margin-top: 10px">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-lg btn-primary pull-right" OnClick="btnLogout_Click" />
                    <asp:Button ID="btnProfile" runat="server" Text="Profile" CssClass="btn btn-lg btn-primary pull-right" Style="margin-right: 5px" />
                    <asp:Button ID="btnAddNewItem" runat="server" Text="Add Item" CssClass="btn btn-lg btn-primary pull-right" Style="margin-right: 5px" OnClick="btnAddNewItem_Click" />
                    <a class="btn btn-lg btn-primary pull-right" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="margin-right: 5px">Search
                    </a>
                </div>
            </div>
            <%--Collapsable search--%>
            <div class="collapse" id="collapseExample">
                <div class="row" id="well1">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-6">
                        <input id="txtSearch" type="text" placeholder="Search..." class="form-control" style="width: 100%" />
                    </div>
                    <div class="col-sm-2">
                        <input id="btnSearch" type="button" value="Search" class="btn btn-primary" style="width: 100%" />
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </div>

        <div class="container main-container">
            <asp:ListView ID="ListItems" runat="server" DataSourceID="UsersDB">
                <ItemTemplate>
                    <div class="container">
                        <div class="list-group">
                            <div class="list-group-item">
                                <strong><asp:Label ID="ItemNameLabel" runat="server" CssClass="h1" Text='<%# Eval("ItemName") %>' /></strong>
                            </div>
                            <div class="list-group-item">
                                <asp:Label ID="DescriptionLabel" CssClass="h3" runat="server" Text='<%# Eval("Description") %>' />
                            </div>
                            <div class="list-group-item">
                                <asp:Label ID="StartingPriceLabel" runat="server" Text='<%# Eval("StartingPrice") %>' />
                            </div>
                            <div class="list-group-item">
                                <asp:Label ID="AuctionLengthLabel" runat="server" Text='<%# Eval("AuctionLength") %>' />
                            </div>
                            <div class="list-group-item">
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:Literal ID="isAuthLiteral" runat="server"></asp:Literal>
            <asp:Literal ID="userIdLiteral" runat="server"></asp:Literal>
            <asp:SqlDataSource ID="UsersDB" runat="server" ConnectionString="<%$ ConnectionStrings:Users %>" SelectCommand="SELECT [ItemName], [Description], [StartingPrice], [AuctionLength] FROM [Items] ORDER BY [DateAdded] DESC, [AuctionLength]"></asp:SqlDataSource>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../Theme/bootstrap.min.js"></script>
</body>
</html>
