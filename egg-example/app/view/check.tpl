<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
  <script>
           function submit(text){

                let value=document.getElementById('check').value
                     
                     if(value==text){
                         
                         document.cookie="username=agent;";

                         window.location.href=window.location.href;}

                     else alert('验证码输入错误');
            }
 </script>
</head>
<body>
    <img src="{{ img_path }}" onclick="window.location.href=window.location.href"/>

    <span> 请输入验证码</span> <input type="text" id="check" /><input type="button" onclick="submit('{{text}}')" value="确定"  /> 
    
    
</body>
</html>