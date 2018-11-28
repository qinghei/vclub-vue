<template>
  <div class="app-haerbin">
    <nav-box class="Fix"></nav-box>
    <div class="h_tit"><img src="http://127.0.0.1:3000/img/city/h_tit5.jpg"></div>
    <div>Lunbo</div>
    <div class="p_tit"><img src="http://127.0.0.1:3000/img/city/h_tit6.jpg"></div>
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
      <!--微电影-->
      <div class="film">
	      <video controls loop playsinline="true" poster="http://127.0.0.1:3000/img/city/video2.jpg" src="http://127.0.0.1:3000/img/home/film.mp4" x5-video-player-type="h5" x-webkit-airplay="allow"></video>
      </div>
      <div class="p_tit"><img src="http://127.0.0.1:3000/img/city/h_tit12.jpg"></div>
      <div class="style">
        <ul>
          <li v-for="item in pic" :key="item.id">
            <img :src="item.img">
              <div class="det">
                <div class="dtitle">{{item.title}}</div><div class="dtype">V·CLUB WEDDING PHOTOGRAPHY</div>
              </div>
          </li>
        </ul>
        <div class="p_tit"><img src="http://127.0.0.1:3000/img/city/h_tit13.jpg"></div>
        <ul>
          <li v-for="item in clist" :key="item.id">
            <img :src="item.img">
              <div class="det">
                <div class="dtitle">{{item.name}}</div><div class="dtype">{{item.intro}}</div>
              </div>
          </li>
        </ul>
      </div>
    </div>  
  </div>
</template>
<script>
  import nav from '../sub/nav.vue'
  export default{
    data(){
      return{
        list:[
          {id:1,title:"拉菲庄园夜景",img:"http://127.0.0.1:3000/img/city/heb1.jpg"},
          {id:2,title:"天空之境",img:"http://127.0.0.1:3000/img/city/heb2.jpg"},
          {id:3,title:"凡尔赛皇家马场",img:"http://127.0.0.1:3000/img/city/heb3.jpg"}
        ],
        pic:[
          {id:1,title:"国家大剧院",img:"http://127.0.0.1:3000/img/city/6.jpg"},
          {id:2,title:"枫叶小镇",img:"http://127.0.0.1:3000/img/city/14.jpg"},
          {id:3,title:"索菲亚教堂",img:"http://127.0.0.1:3000/img/city/11.jpg"},
          {id:4,title:"中央大街",img:"http://127.0.0.1:3000/img/city/9.jpg"},
        ],
        clist:[
          {id:1,name:"三亚",intro:"新人首选海景圣地",img:"http://127.0.0.1:3000/img/city/05.jpg"},
          {id:2,name:"丽江",intro:"文艺青年向往的天上人间",img:"http://127.0.0.1:3000/img/city/06.jpg"},
          {id:3,name:"大理",intro:"让人陶醉的风花雪月之地",img:"http://127.0.0.1:3000/img/city/07.jpg"},
          {id:4,name:"大连",intro:"北方明珠",img:"http://127.0.0.1:3000/img/city/08.jpg"},
          {id:5,name:"巴厘岛",intro:"风情万种的旖旎之岛",img:"http://127.0.0.1:3000/img/city/09.jpg"},
          {id:6,name:"普吉岛",intro:"色彩艳丽的东南亚岛屿",img:"http://127.0.0.1:3000/img/city/010.jpg"},
        ]
      }
    },
    components:{"nav-box":nav}
  }
</script>
<style>
  .app-haerbin .h_tit{width: 100%; padding:130px 0 7px;}
  .app-haerbin .p_tit{width: 100%; padding:24px 0 7px;}
  .app-haerbin .detail .title{font-weight: bold;font-size:18px;margin-top: 10px;text-align:center}
  .app-haerbin .dtitle{font-weight: normal !important;margin-top: 10px;}
  .app-haerbin .detail .type{font-size: 8px;text-align:center;font-family: "microsoft yahei";margin-bottom: 10px;}
</style>