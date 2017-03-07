<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Inner Explorer</title>
 

</head>

<body onload="submitpay();">


<form action="https://www.paypal.com/cgi-bin/webscr" method="post" name="paypalForm" id="paypalForm" target="_self">

<!-- Identify your business so that you can collect the payments. -->
<input type="hidden" name="business" value="accounting@innerexplorer.org">

<!-- Specify a Buy Now button. -->
<input type="hidden" name="cmd" value="_xclick">

<!-- Specify details about the item that buyers will purchase. -->
<input type="hidden" name="item_name" value="Contribution for campaign">
<input type="hidden" name="amount" value="100" id="amountPayable">
<input type="hidden" name="currency_code" value="USD">

<!-- Display the payment button. -->
<input type="image" style="display:none" name="submit" border="0"
src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif"
alt="PayPal - The safer, easier way to pay online">
<img alt="" border="0" width="1" height="1"
src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" >

</form>
 </body>
 
 <script type="text/javascript">
 function submitpay()
 {
	 document.getElementById("paypalForm").submit();
	 
 }
 </script>
 
</html>
