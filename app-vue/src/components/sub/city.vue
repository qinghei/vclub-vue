<template>
  <div class="app-citybox">
    <div class="tab">
      <ul>
        <li v-for="item in list" :key="item.id">
          <router-link to="/city">
            <span class="mui-icon mui-icon-location"></span>
            <p>{{item.cname}}</p>
          </router-link>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
  export default{
    data(){
      return{
        list:[
          {id:1,cname:"北京"},{id:2,cname:"沈阳"},{id:3,cname:"三亚"},{id:4,cname:"丽江"},
          {id:5,cname:"大理"},{id:6,cname:"大连"},{id:7,cname:"哈尔滨"},{id:8,cname:"长春"},
          {id:9,cname:"重庆"},{id:10,cname:"成都"},{id:11,cname:"厦门"},{id:12,cname:"普吉岛"},
          {id:13,cname:"巴厘岛"},{id:14,cname:"马尔代夫"},{id:15,cname:"全球旅拍"}         
        ]
      }
    }
  }
</script>
<style>
  .app-citybox .tab{width:80%;margin:16px 10%;overflow: hidden;}
  .app-citybox .tab ul li{margin:5px 3px;color: #fff;background: #333;width:54px;float: left;}
  .app-citybox .tab ul li a{color: #fff;}
  .app-citybox .tab ul li a span{margin-top:10px;font-size:15px;color: #fff;margin-left: 20px;}
  .app-citybox .tab ul li a p{display: block;font-size:9px;color: #fff;text-align:center;margin-bottom: 5px;}
</style>