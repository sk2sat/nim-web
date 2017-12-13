import strutils
import dom

var app = document.getElementById("app")
var html = ["<h1>Hello from Nim !!!</h1>", 
"<h2>hoge</h2>"]
app.innerHTML = html.join
