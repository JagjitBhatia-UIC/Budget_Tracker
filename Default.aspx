<!--- directives --->
<% @Page Language="C#" %>

<!---Server Side Code--->
<script runat="server">
    protected void firstView(object sender, EventArgs e)
    {
        Multiview1.ActiveViewIndex = 0; 
    }

    protected void secondView(object sender, EventArgs e)
    {
        Multiview1.ActiveViewIndex = 1;
    }

    protected void thirdView(object sender, EventArgs e)
    {
        Multiview1.ActiveViewIndex = 2; 
    }

    protected void fourthView(object sender, EventArgs e)
    {
        Multiview1.ActiveViewIndex = 3;
    }

    protected void fifthView(object sender, EventArgs e)
    {
        Multiview1.ActiveViewIndex = 4; 
    }
</script>

<!--Page Layout --->
<html>
    <head>
        <title>Budget Tracker</title>
    </head>

    <body>
       <form id="form1" runat="server">
           <h1>Budget Tracker</h1>



        <asp:Button ID="button_income" runat="server" Text="Add Income" OnClick="firstView" />
        <asp:Button ID="button_expenses" runat="server" Text="Add Expense" OnClick="secondView" style="position:relative; left:20px;"/>

        <br />

        <asp:Button runat="server" id="button_deposit" Text="Deposit" style="position:relative; top:10px; " OnClick="thirdView"/>
        <asp:Button runat="server" id="button_withdraw"  Text="Withdraw" style="position:relative; top:10px; left: 45px;" OnClick="fourthView"/>
        <h3 style="position:relative;padding-left:25em; bottom:40px;">Balance = $</h3>
        <span runat="server" id="balance" />

        <asp:Button runat="server" id="button_view"  Text="View Budget Sheet" style="position:relative; bottom:40px;" OnClick="fifthView"/>
        &nbsp; &nbsp;
        <asp:Button runat="server" id="button_update" Text="Update Balance" style="position:relative; bottom:55px; left:300px;"/>

        <asp:MultiView ID="Multiview1" runat="server" ActiveViewIndex ="4" >
            <asp:View ID="income_view" runat="server" >
                <h2>Add Income View</h2>
                f
            </asp:View>

            <asp:View ID="expense_view" runat="server">
                <h2>Add Expense View</h2>
            </asp:View>
            <asp:View ID="deposit_view" runat="server">
                <h2>Deposit View</h2>
            </asp:View>

            <asp:View ID="withdraw_view" runat="server">
                <h2>Withdraw View</h2>
            </asp:View>

            <asp:View ID="balance_sheet" runat="server">
                <h2>Balance Sheet</h2>
            </asp:View>
        </asp:MultiView>
       
       </form>
        

    </body>
</html>
