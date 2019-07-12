const Service = require('egg').Service;

class NewsService extends Service {
  
  async list(channel='头条',page=1) {

let url='http://api.wangshuwen.com/getNews?channel='+channel+'&page='+page;

let response=await this.ctx.curl(url);

let data=JSON.parse(response.data);

    //console.log(data);

       return data.data;
  }
}

module.exports = NewsService;