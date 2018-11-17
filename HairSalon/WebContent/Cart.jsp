<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>



<style>
body { 
  background: black;
  
}
h1 {

	color: white;
	text-align: center;
	font-family:Jokerman;
	font-weight: bolder;
	margin-top: 20px;
}
p{

font-size: 20px;
color: white;
}


</style>

</head>
<body>
<script language="JavaScript">
<!-- hide contents from old browsers
        var Cost, GST, PST, Grand_Total;

function tally()
        {
        Cost = 0;
        if (document.orderform.Item1.checked) { Cost = Cost + 600;    }
        if (document.orderform.Item2.checked) { Cost = Cost + 410;    }
        if (document.orderform.Item3.checked) { Cost = Cost + 420;               }
        if (document.orderform.Item4.checked) { Cost = Cost + 580;               }
        if (document.orderform.Item5.checked) { Cost = Cost + 650;    }
        if (document.orderform.Item6.checked) { Cost = Cost + 1000;    }
        if (document.orderform.Item7.checked) { Cost = Cost + 1200;               }
        if (document.orderform.Item8.checked) { Cost = Cost + 950;               }
       if (document.orderform.Item9.checked) {  Cost = Cost + 500;               }
if (document.orderform.Item10.checked) {  Cost = Cost + 1250;               }
if (document.orderform.Item11.checked) {  Cost = Cost + 1500;               }
if (document.orderform.Item12.checked) {  Cost = Cost + 600;               }


        GST = (Cost * 0.07);
        PST = (Cost * 0.07);

        Cost = dollar(Cost);
        GST = dollar(GST);
        PST = dollar(PST);
        Grand_Total = parseFloat(Cost) + parseFloat(GST) + parseFloat(PST);
        Grand_Total = dollar(Grand_Total);

        document.orderform.Total.value = "Rs" + Cost;
        document.orderform.GST.value = "Rs" + GST;
        document.orderform.PST.value = "Rs" + PST;
        document.orderform.GrandTotal.value = "Rs" + Grand_Total;
        }

function dollar (amount)
{
        amount = parseInt(amount * 100);
        amount = parseFloat(amount/100);
        if (((amount) == Math.floor(amount)) && ((amount - Math.floor (amount)) == 0))
        {
                amount = amount + ".00"
                return amount;
        }
        if ( ((amount * 10) - Math.floor(amount * 10)) == 0)
        {
                amount = amount + "0";
                return amount;
        }
        if ( ((amount * 100) - Math.floor(amount * 100)) == 0)
        {
                amount = amount;
                return amount;
        }
        return amount;
}

//-->
</script>
<center><h1>Buy Products</h1></center>

<form method="post" name="orderform" action="Order.jsp" enctype="text/plain">
<table border="0" align="center">
    <tr><p>
<td ><img src="css/serum.jpg" ><p><input type="checkbox" name="Item1" value="Item1_chosen" onclick="tally()"> Serum (600Rs)</td >
<td ><img src="css/cleanser.jpg" ><p><input type="checkbox" name="Item2" value="Item2_chosen" onclick="tally()"> Cleanser  (400Rs)</td >
<td ><img src="css/suncream.jpg" ><p><input type="checkbox" name="Item3" value="Item3_chosen" onclick="tally()"> SunScreen  (420Rs)</td >
<td ><img src="css/shampoo.jpg" ><p><input type="checkbox" name="Item4" value="Item4_chosen" onclick="tally()"> Shampoo (580Rs)</td ></tr ><tr >
<td ><img src="css/cream.jpg" ><p><input type="checkbox" name="Item5" value="Item5_chosen" onclick="tally()"> Cream  (650Rs)</td >
<td ><img src="css/toner.jpg" ><p><input type="checkbox" name="Item6" value="Item6_chosen" onclick="tally()"> Toner  (1000Rs)</td >
<td ><img src="css/eyecare.jpg" ><p><input type="checkbox" name="Item7" value="Item7_chosen" onclick="tally()"> Eyecare  (1200Rs)</td >
<td ><img src="css/lotions.jpg" ><p><input type="checkbox" name="Item8" value="Item8_chosen" onclick="tally()"> Lotions  (950Rs)</td ></tr ><tr >
<td ><img src="css/Conditioners.jpg" ><p><input type="checkbox" name="Item9" value="Item9_chosen" onclick="tally()">Conditioners  (500Rs)</td >
<td ><img src="css/moisturizer.jpg" ><p><input type="checkbox" name="Item10" value="Item10_chosen" onclick="tally()"> Moisturizer  (1250Rs)</td >
<td ><img src="css/hair and scalp treatments.jpg" ><p><input type="checkbox" name="Item11" value="Item11_chosen" onclick="tally()"> Hair and Scalp Treatments  (1500Rs)</td >
<td ><img src="css/hair oil.jpg" ><p><input type="checkbox" name="Item12" value="Item12_chosen" onclick="tally()">Hair Oil (600Rs)</p>
    </td></tr></table >
<form >
  <fieldset>
    <legend align="center"><p>Details</p></legend>
  
<table align="center" >
<tr>


<td><p> Total:</p></td> <td><input type="text" name="Total" value="$0" size="7"></td></p>
</tr>

    <tr>
      
      <td ><p>First Name:</p></td><td><input type="Text" name="FirstName" size="15"
      maxlength="20"><td> </tr>
 <tr>
      
      <td><p>Last Name:</p></td><td><input type="Text" name="LastName" size="15" maxlength="20"></td>
    </tr>


    <tr>
      <td><p>Address:</p></td>
      <td><input type="Text" name="Street" size="20" maxlength="40"></td>
    </tr>
    <tr>
      <td><p>City:</p></td>
      <td><input type="Text" name="City" size="20" maxlength="20"> </td>
      <td><p>State:</p></td>
      <td><input type="Text" name="Province" size="20" maxlength="40"></td>
    </tr>
    <tr>
      <td><p>Country:</p></td>
      <td><input type="Text" name="Country" size="20" maxlength="20"></td>
      </tr>
    <tr>
      <td><p>Phone:</p></td>
      <td><input type="Text" name="phone" size="9" maxlength="10"></td>
    </tr>
    <tr>
      <td><p>Email Address:</p></td>
      <td colspan=2><input type="Text" name="Email" size="30" maxlength="30"></td>
    </tr>
      <tr><td colspan="4" height="3"><hr></td></tr>
      <tr><td colspan="2" align="center"><input type="Submit" value="Send Order"></td>
<td colspan="2" align="center"><input type="RESET" value="Reset Order"></td></p></tr>
  </table>
  </fieldset>
</form>

</form>

</body>
	</html>
