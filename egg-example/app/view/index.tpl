<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script>
             
             function next(){
                let page=Number(getParmeter('page'))+1;

                let channel=getParmeter('channel');
             
                window.location.href='?channel='+channel+'&page='+page;
             }
             
             function getParmeter(variable){
             let query = window.location.href.split('?')[1];  
             let vars = query.split('&'); 
                for (let i = 0; i < vars.length; i++) {
                   let pair = vars[i].split('='); 
                   if(pair[0] === variable){  
                   return pair[1];   
                }
             }
               return '';
          };
             function  change(value){

              let page=Number(getParmeter('page'));

               if(value==='请选择合适主题');
               
               else window.location.href='?channel='+value+'&page=1';
             }         
    

             function previous(){
                  let page=Number(getParmeter('page'))-1;

                  let channel=getParmeter('channel');
                  
                  if(page>=1){
                      
                  window.location.href='?channel='+channel+'&page='+page;}

                  else{

                    window.location.href='?channel='+channel+'&page=1';
                  }

        }
              </script>
</head>
<body>
        <ul class="news-view view">
                {% for item in list %}
                  <li class="item">
                    <a href="{{ item.url }}">{{ item.title }}</a>
                  </li>
                {% endfor %}
        </ul>

        
                <select name="channel" onchange="change(value)" >
                <option value="请选择合适主题">请选择</option>
                <option value="头条">头条</option>
                <option value="财经">财经</option>
                <option value="体育">体育</option>
                <option value="娱乐">娱乐</option>
                <option value="军事">军事</option>
                <option value="教育">教育</option>
                <option value="科技">科技</option>
                </select><button onclick="previous()">上一页</button> <button onclick="next()">下一页</button>
         

        


</body>
</html>