
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (ddlProduct.SelectedItem.Value.ToString() <> "") Then
            PriceLabel.Text = "This cost " + ddlProduct.SelectedItem.Value.ToString() + "$ per item"
        Else
            PriceLabel.Text = ""
        End If

    End Sub
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        OrderSubmitted.Visible = False
        txtAddress.Text = ""
        txtName.Text = ""
        txtCity.Text = ""
        txtPhoneNum.Text = ""
        txtZip.Text = ""
        txtState.Text = ""
        lstSummary.Items.Clear()
        QuantityBox.Text = ""
        txtEmail1.Text = ""
        txtEmail2.Text = ""

        lbShipping.ClearSelection()
        ddlProduct.ClearSelection()


        txtName.Focus()

    End Sub
    Protected Sub CalculateButton_Click(sender As Object, e As EventArgs) Handles CalculateButton.Click
        OrderSubmitted.Visible = False
        lstSummary.Items.Clear()

        Dim taxrate As Double = 0.07

        Dim ProductCost As Double = QuantityBox.Text * ddlProduct.SelectedValue

        Dim taxTotal As Decimal = (ProductCost + lbShipping.SelectedValue) * taxrate

        Dim GrandTotal As Decimal = (taxTotal + ProductCost + lbShipping.SelectedValue)

        'add to the listbox
        lstSummary.Items.Add("Order Summary")
        lstSummary.Items.Add("***********")
        lstSummary.Items.Add("Name: " & txtName.Text)
        lstSummary.Items.Add("Email: " & txtEmail1.Text)
        lstSummary.Items.Add("Phone Number: " & txtPhoneNum.Text)
        lstSummary.Items.Add("Address: " & txtAddress.Text + ", " + txtCity.Text + ", " + txtState.Text + " " + txtZip.Text)
        lstSummary.Items.Add("***********")
        lstSummary.Items.Add("Product Ordered: " & ddlProduct.SelectedItem.Text)
        lstSummary.Items.Add("Quanity Ordered: " & QuantityBox.Text.ToString)
        lstSummary.Items.Add("***********")
        lstSummary.Items.Add("Total Cost of KSU Gear: " & ProductCost.ToString("c"))
        lstSummary.Items.Add("Shipping Cost: $" & lbShipping.SelectedValue.ToString)
        lstSummary.Items.Add("7% Tax: " + taxTotal.ToString("c"))
        lstSummary.Items.Add("***********")
        lstSummary.Items.Add("TOTAL: " + GrandTotal.ToString("c"))








    End Sub
    Protected Sub lbShipping_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lbShipping.SelectedIndexChanged

        If (lbShipping.SelectedItem.Value.ToString() <> "") Then
            ShippingLabel.Text = "This shipping will add " + lbShipping.SelectedItem.Value.ToString() + "$ to your total."
        Else
            ShippingLabel.Text = ""
        End If

    End Sub
    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click

        OrderSubmitted.Visible = True




    End Sub
End Class
