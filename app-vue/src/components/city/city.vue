<template>
  <div class="app-city">
    <nav-box></nav-box>
    <div class="p_tit"><img src="http://127.0.0.1:3000/img/home/h_tit1.jpg"></div>
    <city-box></city-box>
    <div class="p_hit"><img src="http://127.0.0.1:3000/img/home/h_tit3.jpg"></div>
    <div class="city">     
      <ul>
        <li v-for="item in list" :key="item.id">
          <router-link to="#">
            <img :src="item.img_url">
            <div class="text">
              <div class="ke_title">{{item.title}}</div>
              <div class="ke_type">V·CLUB WEDDIN PHOTOGRAPHY</div>
            </div>
          </router-link>
        </li>
      </ul>
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
       getCitypic(){//新闻资讯
        this.$http.get("city").then(result=>{
          this.list=result.body; //获取返回数据，保存到list属性中
          console.log(result.body)
        })
      }
     },
     created() {
       this.getCitypic()
     },
     components:{"nav-box":nav,"city-box":city}
  }
</script>
<style>
  .app-city .p_tit{width: 100%; padding:25px 0 7px;} 
  .app-city .h_tit{width: 100%; padding:0 0 7px;} 
  .app-city .city ul li .text{margin: 16px 0; text-align: center;}
  .app-city .city ul li .text .ke_title{font-size:15px;font-weight: bold;color:#000}
  .app-city .city ul li .text .ke_type {font-size:8px;line-height:11px;font-family: "microsoft yahei";color:#000}
</style>