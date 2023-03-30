<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TodoApp</title>

<style>
	#group{
	background-color: yellow;
	margin: auto;
	margin-top: 5%;
	padding: 5%;
	width: 75%;
	box-shadow: 10px 10px 5px grey;
	border-radius: 4px
}
	#todolist{
	
	background-color:#FFFFCC;
	list-style:none;
	padding-left:10px;
	font-size:30px;
	color: orange;
	border-radius: 4px;

	}
	#close{
	display:inline-block;
	float: right;
	width:40px;
	height:40px;
	background-color:transparent;
	border-color:transparent;
	color : brown;
	font-size: 20px;
	}
	#close:after{
	content: "X";
	}
	#input-button{
	background-color: skyblue;
	bordor:none;
	border-radius: 4px
	}
	#item{
	background: white;
	flex: 10;
  	height: 35px;
  	padding: 0 4px;
  	border: 0;
  	border-radius: 4px
	}
	.input-group{
	display: flex; 
	border: none; 
	border-radius: 4px
	
	}
	
</style>

<script>
	function addItem(){
		let todo = document.getElementById("item");
		let list = document.getElementById("todolist");
		let listitem = document.createElement("li");
		
		listitem.setAttribute("id","list-item");
		let xbtn = document.createElement("button");
		
		xbtn.setAttribute("id","close");
		
		
		xbtn.onclick = function(e) {
			let pnode = e.target.parentNode;
			list.removeChild(pnode);
		}
		listitem.innerText = todo.value;
		listitem.appendChild(xbtn);
		list.appendChild(listitem);
		
		todo.value = "";
		todo.focus();
	}
</script>
</head>
<body>
	<div id = "group" >
		<h2>My ToDo App</h2>
		<hr>
		<div class = "input-group" >
			<input id="item" class="form-control" type = "text" placeholder="할일을 입력하세요..">
			<button id="input-button" type="button" class="btn btn-primary" onclick="addItem()">할일 추가</button>
		</div>
		<hr>
		<ul id="todolist" class="list-group"></ul>
	</div>
</body>
</html>