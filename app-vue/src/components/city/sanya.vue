<template>
  <div class="app-sanya">
    <nav-box class="Fix"></nav-box>
    <div class="h_tit"><img src="http://127.0.0.1:3000/img/city/h_titx6.jpg"></div>
    <div class="detail">
      <ul>
        <li v-for="item in list" :key="item.id">
          <img :src="item.img" >
          <div class="text">
            <div class="title">{{item.title}}</div>
            <div class="type">V·CLUB PHOTO</div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
  import nav from '../sub/nav.vue'
  export default{
    data(){
      return{
        list:[
          {id:1,title:"亚龙湾基地",img:"http://127.0.0.1:3000/img/city/sy1.jpg"},
          {id:2,title:"三亚湾基地",img:"http://127.0.0.1:3000/img/city/sy2.jpg"},
          {id:3,title:"清水湾基地",img:"http://127.0.0.1:3000/img/city/sy3.jpg"},
          {id:4,title:"分界洲基地",img:"http://127.0.0.1:3000/img/city/sy4.jpg"},
          {id:5,title:"大小洞天基地",img:"http://127.0.0.1:3000/img/city/sy5.jpg"},
          {id:5,title:"凤凰岛基地",img:"http://127.0.0.1:3000/img/city/sy6.jpg"}
        ]
      }
    },
    components:{"nav-box":nav}
  }
</script>
<style>
  .app-sanya .h_tit{width: 100%; padding:130px 0 7px;}
  .app-sanya .detail .title{font-weight: bold;font-size:18px;margin-top: 10px;text-align:center}
  .app-sanya .detail .type{font-size: 8px;text-align:center;font-family: "microsoft yahei";margin-bottom: 10px;}
</style>