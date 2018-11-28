<template>
  <div class="app-news">
    <nav-box></nav-box>
    <div class="news">
        <div class="p_tit"><img src="http://127.0.0.1:3000/img/home/h_tit1.jpg"></div>
        <city-box></city-box>
        <div class="h_tit"><img src="http://127.0.0.1:3000/img/home/h_tit4.png"></div>
        <div class="mui-card" v-for="item in list" :key="item.id">
          <div class="mui-card-header mui-card-media" style="height:60vw" :style="{'background':'url('+item.img_url +')','background-size':'100% 100%'}"></div>
          <div class="mui-card-content">
            <div class="mui-card-content-inner">
              <p>{{item.title}}</p>
              <p>{{item.content}}</p>
            </div>
          </div>
          <div class="mui-card-footer">
            <span>Vclub PHOTO</span>
            <p>TIME:2018-04-25</p>
          </div>
        </div>
    </div>
  </div>
</template>
<script>
  import nav from "../sub/nav.vue"
  import city from "../sub/city.vue"
  export default {
     data(){
       return {
         list:[],
       }
     },
     methods:{
       getNews(){//新闻资讯
        this.$http.get("news").then(result=>{
          this.list=result.body; //获取返回数据，保存到list属性中
          console.log(result.body)
        })
      }
     },
     created() {
       this.getNews()
     },
     components:{"nav-box":nav,"city-box":city}
  }
</script>
<style>
  .app-news{background:#282828;margin-bottom:-10px}
  .app-news .p_tit{width: 100%; padding:25px 0 7px;} 
  .app-news .h_tit{width: 100%; padding:0 0 7px;} 
  .app-news .news .mui-card-content-inner>p:first-child{font-size:16px;color:#000}
</style>