module.exports=(options,app)=>{

    return async function identify(ctx,next){

       if(ctx.request.header.cookie){

       let block=ctx.request.header.cookie.split(';');
            
       let username='';

       for(let i=0;i<block.length;i++){

          let cookie=block[i].split('=');

          if(cookie[0]==' username'){
              
            username=cookie[1];

            
            break;}
            
            console.log('-------');
            
            console.log(cookie);          
       }

        if(username!='agent')

        await ctx.service.icode.code();

        else       

        await next();

        }

          else await ctx.service.icode.code();
    }} 