<template>
  <div class="app-lijaing">
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
          {id:1,title:"花海基地",img:"http://127.0.0.1:3000/img/city/lj1.jpg"},
          {id:2,title:"拉市海基地",img:"http://127.0.0.1:3000/img/city/lj2.jpg"},
          {id:3,title:"蓝月谷基地",img:"http://127.0.0.1:3000/img/city/lj3.jpg"},
          {id:4,title:"情人湖基地",img:"http://127.0.0.1:3000/img/city/lj4.jpg"},
          {id:5,title:"天堂角落基地",img:"http://127.0.0.1:3000/img/city/lj5.jpg"},
          {id:5,title:"束河古镇基地",img:"http://127.0.0.1:3000/img/city/lj6.jpg"}
        ]
      }
    },
    components:{"nav-box":nav}
  }
</script>
<style>
  .app-lijaing .h_tit{width: 100%; padding:130px 0 7px;}
  .app-lijaing .detail .title{font-weight: bold;font-size:18px;margin-top: 10px;text-align:center}
  .app-lijaing .detail .type{font-size: 8px;text-align:center;font-family: "microsoft yahei";margin-bottom: 10px;}
</style>