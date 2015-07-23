
<html>
    <head>
        <title>Force.com Canvas Java Quick Start</title>
 <title>Force.com Canvas Java Quick Start</title>

        <link rel="stylesheet" type="text/css" href="/sdk/css/canvas.css" />

        <script type="text/javascript" src="/sdk/js/canvas-all.js"></script>
        <script type="text/javascript" src="/scripts/json2.js"></script>
        <script type="text/javascript" src="/scripts/chatter-talk.js"></script>
<script type="text/javascript" defer="defer">
   
 if (self === top) {
                // Not in Iframe
                alert("This canvas app must be included within an iframe");
            }

            window.onload=function() {
			alert('hhhhhh');
   var signedRequest = request.getParameter("hdnSignedRequest").value;
alert('signedRequest'+signedRequest);
   
        sr = JSON.parse(signedRequest);
        Sfdc.canvas.client.publish(sr.client, { 
            name: 'myns.sendVal', 
            payload: { value : 'vvvvv'} });
    }
</script>
   </head>
    <body>
    <div id="page">
        <div id="content">
            <div id="header">
                <!--<h1 >Hello <span id='fullname'></span>!</h1>
                <h2>Welcome to the Force.com Canvas Java Quick Start Template!</h2>-->
            </div>
			<div id="OrderContent">
                <h1>Quote products</h1>
				<br/><br/>
				<table border="1">
				<tr>
				<TH>Link</TH><TH>Postcode or CLI </TH><TH> Reference ID</TH>	
				<TH> Access Type</TH><TH> No.Of Services</TH>
				<TH> Price</TH><TH>Status</TH><TH>Progress</TH>
				</tr>
				<tr>
				<td/><td> OL8 3EU</td><td>491</td><td>EAD</td><td>1</td><td>£6775.00</td><td>1d</td><td>Quoted</td>
				</tr>
				</table>
				    
            </div> 
		</div>
     </div>
	</body>
</html>	