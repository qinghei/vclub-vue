<template>
  <div class="app-Style">
    <nav-box class="Fix"></nav-box>
    <div class="h_tit"><img src="http://127.0.0.1:3000/img/style/h_tit8.jpg"></div>
    <div class="style">
      <ul>
        <li v-for="item in list" :key="item.id">
          <img :src="item.img">
          <div class="det">
            <div class="dtitle">{{item.title}}</div>
            <div class="dtype">V·CLUB WEDDING PHOTOGRAPHY</div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
  import nav from "../sub/nav.vue"
  export default{
    data(){
      return{
        list:[
          {id:1,title:"浪漫婚礼岛系列",img:"http://127.0.0.1:3000/img/style/2.jpg"},
          {id:2,title:"城与海系列",img:"http://127.0.0.1:3000/img/style/7.jpg"},
          {id:3,title:"Master Pic.系列",img:"http://127.0.0.1:3000/img/style/1.jpg"},
          {id:4,title:"城市轻旅拍系列",img:"http://127.0.0.1:3000/img/style/3.jpg"},
          {id:5,title:"施华洛世奇系列",img:"http://127.0.0.1:3000/img/style/4.jpg"},
          {id:6,title:"六大风格系列",img:"http://127.0.0.1:3000/img/style/5.jpg"},    
        ]
      }
    },
    //2.注册子组件
    components:{"nav-box":nav}
  }
</script>
<style>
  .app-Style .h_tit{width: 100%; padding:130px 0 7px;}
  .style{margin:8px auto 16px;width:95%}
  .style ul{overflow:hidden}
  .style ul li{float:left;width:48%;margin:0 1%;}
  .style ul li img{width:100%}
  .style .det{margin:6px 0 16px;}
  .style .det .dtitle{font-size:13px;font-weight:bold}
  .style .det .dtype{font-size:6px;line-height:1;}
</style>