<template>
  <div class="app-New">
    <nav-box class="Fix"></nav-box>
    <div class="h_tit"><img src="http://127.0.0.1:3000/img/new/01.jpg"></div>
    <div class="new">
      <router-link to="/new" v-for="item in list" :key="item.id">
        <img :src="item.img">
          <h2>唯映像·{{item.city}}</h2>
      </router-link>
    </div>
  </div>
</template>
<script>
  import nav from "../sub/nav.vue"
  export default{
    data(){
      return{
        list:[]
      }
    },
    methods:{
      getnew(){
        this.$http.get("new").then(result=>{
          this.list=result.body;
        })
      }
    },
    created() {
      this.getnew();
    },
    //2.注册子组件
    components:{"nav-box":nav}
  }
</script>
<style >
.app-New .h_tit{width: 100%; padding:130px 0 7px;}
.new{width:96%;margin:0 auto;overflow:hidden;}
.new a h2{width: 100%;margin:9px 0 16px 0;height:14px;font-size:9px;color:#666;font-weight:normal;text-align:center;}
.new a{width:48%;display:block;float:left;margin:0 3px}
.new a:first-child{display:block;width:100%;margin:0 3px}
.new a img{display:block;width:100%;}
</style>