﻿<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="searchImplementation.aspx.cs" Inherits="WebApplication4.searchImplementation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavContent" runat="server">
     <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="False" />
        <div>
            <asp:Menu ID="Menu1"  style="text-decoration-color:snow" runat="server" Orientation="Horizontal" DataSourceID="SiteMapDataSource1"></asp:Menu>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ChildContent" runat="server">

     <div>
       <asp:Label ID="LblMessage" runat="server" Text=""></asp:Label>
    </div>
    <hr  style="background-color:black;background-size:contain; height: 4px;
        width: 1200px;
        margin-left: 0px;
        margin-top: 0px;"/>
    
     <div>
            <asp:DataList ID="DlProd" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"  >
                <ItemTemplate>
                    <div>
                        <asp:Image  Width="295" Height="280" ID="ImgProduct" runat="server" AlternateText="Image" ImageUrl='<%#"~/ImageHandler1.ashx?id="+Eval("id") %>' />
                    </div>
                      
                    <div>
                        <label>Name:</label>
                       
                        <asp:Label ID="LblName" runat="server" Text='<%#Eval("Name") %>'/>
                    </div>
                    <div>
                        <label>Description:</label>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Description") %>'/>
                    </div>
                    <div>
                       <label>Price:</label>
                        <asp:Label ID="LblPrice" runat="server" Text='<%#Eval("Price") %>'/>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
