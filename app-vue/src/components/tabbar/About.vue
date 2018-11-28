<template>
  <div class="app-About">
    <nav-box class="Fix"></nav-box>
    <div class="brand">
      <img :src="item.img" v-for="item in list" :key="item.id">
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
      getImg(){
        this.$http.get("brand").then(result=>{
          this.list=result.body; //获取返回数据，保存到list属性中
        })
      }
    },
    created() {
      this.getImg();
    },
    //2.注册子组件
    components:{"nav-box":nav}
  }
</script>
<style>
  .brand{padding-top:105px}
  .brand{width:100%}
  .brand img{width: 100%;padding-bottom: 0!important;}
</style>