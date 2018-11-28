<template>
  <div class="app-nav">
     <ul class="nav" >
        <li v-for="(nav,i) in navs" :key="nav.id" @click="select(i)" :class="$store.state.color==navs[i].id?'li-bg':''">
         <p class="cn">{{nav.title}}</p><p class="en">{{nav.en}}</p>
          <!--<router-link :to="navs[i].path">{{nav.title}}<small class="small">{{nav.subtitle}}</small></router-link>-->
        </li>
      </ul>
  </div>
</template>
<script>
  export default{
    data(){
      return{
        navs:[
          {id:1,title:"首页",en:"HOME",path:"/home"},
          {id:2,title:"客片",en:"SHOW",path:"/show"},
          {id:3,title:"微电影",en:"MOVIE",path:"/movie"},
          {id:4,title:"系列",en:"STYLE",path:"/style"},
          {id:5,title:"新作",en:"NEW",path:"/new"},
          {id:6,title:"礼服",en:"DRESS",path:"/dress"},
          {id:7,title:"品牌",en:"ABOUT",path:"/about"}
        ]
      }
    },
    methods:{
      select(i){ 
        this.$store.state.color=i+1; 
        this.$router.push(this.navs[i].path);
      }
    }
    
  }
</script>
<style>
  /*导航栏*/
  .app-nav{margin-top:50px}
   ul.nav{background-color: #444;color:#fff;height:55px;display:flex;justify-content:space-around;}
   ul.nav li{width:54px;}
   ul.nav li p.cn{color:#fff;font-size: 15px;text-align: center;margin-top: 5px;}
   ul.nav li p.en{color:#fff;height:9px;line-height:1;font-size:6px;text-align: center;}
   ul.nav .li-bg{background:#bdab87;}
</style>