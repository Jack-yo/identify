'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
  /*  ctx.body = 'hi, egg';*/
    let query=this.ctx.query;

    const result=await this.ctx.service.news.list(query.channel,query.page);

     console.log('---------');

   // console.log(result);

    await this.ctx.render('index.tpl',{list:result});//.ejs
  }
}

module.exports = HomeController;
