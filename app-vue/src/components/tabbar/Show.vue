<template>
  <div class="app-Show">
    <nav-box class="Fix"></nav-box>
    <div class="p_tit"><img src="http://127.0.0.1:3000/img/home/h_tit1.jpg"></div>
    <city-box></city-box>
    <div class="p_hit"><img src="http://127.0.0.1:3000/img/home/h_tit3.jpg"></div>
    <div class="show">
      <ul>
        <li v-for="item in list" :key="item.id"><router-link to="/show" class="">
        <img :src="item.img_url">
        <div class="text">
          <div class="ke_time">November.11.2018</div>
          <div class="ke_type">V·CLUB WEDDIN PHOTOGRAPHY</div>
        </div>
        </router-link></li>
      </ul>
      <mt-button size="large" @click="getMore">加载更多</mt-button>
    </div>
  </div>
</template>
<script>
  import nav from "../sub/nav.vue"
  import city from "../sub/city.vue"
  export default{
    data(){
      return{
        list:[],
        pageIndex:0,     //属性显示当前页数
        pageSize:5,       //页大小
        hasMore:true,
        pageCount:6
      }
    },
    methods:{
      getMore(){
         this.pageIndex++;
         this.hasMore=this.pageIndex <= this.pageCount;
         if(!this.hasMore){return}
         var url = "http://127.0.0.1:3000/showlist";
         url+="?pno="+this.pageIndex+"&pageSize="+this.pageSize;
         this.$http.get(url).then(result=>{
           var rows=this.list.concat(result.body.data);
           this.list = rows;
           this.pageCount=result.body.pageCount
         })
       }
    },
    created(){
      this.getMore();
      document.body.scrollTop = document.documentElement.scrollTop = 0;
     },
    components:{"nav-box":nav,"city-box":city}
  }
</script>
<style>
  .app-Show .h_tit{width: 100%; padding: 24px 0 7px;}
  .app-Show .p_tit{width: 100%; padding: 130px 0 7px;}
  .Fix{position:fixed;z-index:99;top:0;} 
  .show{margin:8px 0 3px;}
  .show ul li a {color: #333;text-decoration: none; background-color: transparent;}
  .show ul li .text{margin: 16px 0; text-align: center;}
  .show ul li .text .ke_time{font-size:15px;font-weight: bold;}
  .show ul li .text .ke_type {font-size:8px;line-height:11px;font-family: "microsoft yahei";}
</style>