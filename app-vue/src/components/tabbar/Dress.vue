<template>
  <div class="app-About">
    <nav-box class="Fix"></nav-box>
    <div class="dress">
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
      getImage(){
        this.$http.get("dress").then(result=>{
          this.list=result.body; //获取返回数据，保存到list属性中
        })
      }
    },
    created() {
      this.getImage();
    },
    //2.注册子组件
    components:{"nav-box":nav}
  }
</script>
<style>
.dress{padding-top:105px}
  .brand{width:100%}
  .brand img{width: 100%;padding-bottom: 0!important;}
</style>