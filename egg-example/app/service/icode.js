const Service = require('egg').Service;

class IcodeService extends Service {
  
  async code() {

let url='http://route.showapi.com/26-4?showapi_appid=99801&showapi_sign=dd0bce933a3e4fab93aa4333a96e5258';

let response=await this.ctx.curl(url);

let data=JSON.parse(response.data);


      console.log(data);
      
      
      await this.ctx.render('check.tpl',{img_path:data.showapi_res_body.img_path,text:data.showapi_res_body.text})
  }
   

   
}
 
 

module.exports = IcodeService;