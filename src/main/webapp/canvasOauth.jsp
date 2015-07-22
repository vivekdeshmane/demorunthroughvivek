<html>
<head>
<script type="text/javascript" src="/sdk/js/canvas-all.js"></script>
</head>
<body>
<script>
function loginHandler(e) {
var uri;
if (! Sfdc.canvas.oauth.loggedin()) {
uri = Sfdc.canvas.oauth.loginUrl();
Sfdc.canvas.oauth.login(
{uri : uri,
params: {
response_type : "token",

client_id : "3MVG9Y6d_Btp4xp5.8rxMgsAYhFKebyWfqGa3w9A0QEM6cl9HDaRXj3Zts0F2.I2usan63PRFwKPguMSQvt6N",
redirect_uri : encodeURIComponent(
"https://demorunthroughvivek.herokuapp.com/sdk/callback.html")
}});
}
else {
Sfdc.canvas.oauth.logout();
login.innerHTML = "Login";
Sfdc.canvas.byId("oauth").innerHTML = "";
}
return false;
}
// Bootstrap the page once the DOM is ready.
Sfdc.canvas(function() {
// On Ready...
var login = Sfdc.canvas.byId("login"),
loggedIn = Sfdc.canvas.oauth.loggedin(),
token = Sfdc.canvas.oauth.token()
login.innerHTML = (loggedIn) ? "Logout" : "Login";
if (loggedIn) {
// Only displaying part of the OAuth token for better formatting.
Sfdc.canvas.byId("oauth").innerHTML = Sfdc.canvas.oauth.token()
.substring(1,40) + "…";
var ctxlink = Sfdc.canvas.byId("ctxlink");
var client = Sfdc.canvas.oauth.client();
ctxlink.onclick=function() {
Sfdc.canvas.client.ctx(callback, client)};
}
}
login.onclick=loginHandler;
});
function callback(msg) {
if (msg.status !== 200) {
alert("Error: " + msg.status);
return;
}
alert("Payload: ", msg.payload);
}


</script>
<h1 id="header">Force.com Canvas OAuth App</h1>
<div>
access_token = <span id="oauth"></span>
</div>
<div>
<a id="ctxlink" href="#">Get Context</a>

<a id="login" href="#">Login</a><br/>
</div>
</body>
</html>
