<template>
  <div class="app-Movie">
    <nav-box class="Fix"></nav-box>
    <div class="p_tit"><img src="http://127.0.0.1:3000/img/home/h_tit1.jpg"></div>
    <city-box></city-box>
    <div class="h_tit"><img src="http://127.0.0.1:3000/img/film/h_tit10.jpg"></div>
    <div class="film" v-for="item in list" :key="item.id" >	
	    <video controls loop playsinline="true" :poster="item.img_url" :src="item.video"   x-webkit-airplay="allow" x5-video-player-fullscreen="true" x5-video-player-type="h5"></video>
      <div class="text"><div class="f_title">{{item.title}}</div><div class="f_type">V·CLUB WEDDIN PHOTOGRAPHY</div></div>
    </div>
  </div>
</template>
<script>
  import nav from "../sub/nav.vue"
  import city from "../sub/city.vue"
  export default{
    data(){
      return{
        list:[]
      }
    },
    methods:{
      getfilmlist(){
        this.$http.get("filmlist").then(result=>{
          this.list=result.body; //获取返回数据，保存到list属性中
        })
      }
    },
    created(){
      this.getfilmlist();
    },
    //2.注册子组件
    components:{"nav-box":nav,"city-box":city}
  }
</script>
<style>
  .app-Movie .p_tit{width: 100%; padding:130px 0 7px;} 
  .app-Movie .h_tit{width: 100%; padding:0 0 7px;} 
  .app-Movie .film .f_title{font-weight: bold;font-size:16px;margin-top: 10px;}
  .app-Movie .film .f_type{font-size: 8px;line-height: 11px;font-family: "microsoft yahei";margin-bottom: 10px;}
</style>