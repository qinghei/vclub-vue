<template>
  <div class="app-dali">
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
          {id:1,title:"洱海东畔基地",img:"http://127.0.0.1:3000/img/city/dl1.jpg"},
          {id:2,title:"洱海西畔基地",img:"http://127.0.0.1:3000/img/city/dl2.jpg"},
          {id:3,title:"天镜阁基地",img:"http://127.0.0.1:3000/img/city/dl3.jpg"},
          {id:4,title:"小普陀基地",img:"http://127.0.0.1:3000/img/city/dl4.jpg"},
          {id:5,title:"古城基地",img:"http://127.0.0.1:3000/img/city/dl5.jpg"},
          {id:5,title:"海舌公园基地",img:"http://127.0.0.1:3000/img/city/dl6.jpg"}
        ]
      }
    },
    components:{"nav-box":nav}
  }
</script>
<style>
  .app-dali .h_tit{width: 100%; padding:130px 0 7px;}
  .app-dali .detail .title{font-weight: bold;font-size:18px;margin-top: 10px;text-align:center}
  .app-dali .detail .type{font-size: 8px;text-align:center;font-family: "microsoft yahei";margin-bottom: 10px;}
</style>