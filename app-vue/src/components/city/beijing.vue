<template>
  <div class="app-beijing">
    <nav-box class="Fix"></nav-box>
    <div class="h_tit"><img src="http://127.0.0.1:3000/img/city/h_tit5.jpg"></div>
    <!--轮播图-->
    <mt-swipe  :auto="5000" indicator="none">
      <mt-swipe-item v-for="item in swiper" :key="item.id"><img :src="item.img"></mt-swipe-item>
    </mt-swipe>
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
	      <video controls loop playsinline="true" poster="http://127.0.0.1:3000/img/city/video.jpg" src="http://127.0.0.1:3000/img/home/film.mp4" x5-video-player-type="h5" x-webkit-airplay="allow"></video>
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
        swiper:[
          {id:1,img:"http://127.0.0.1:3000/img/city/ban1.jpg"},
          {id:2,img:"http://127.0.0.1:3000/img/city/ban2.jpg"},
          {id:3,img:"http://127.0.0.1:3000/img/city/ban3.jpg"},
          {id:4,img:"http://127.0.0.1:3000/img/city/ban4.jpg"},
          {id:5,img:"http://127.0.0.1:3000/img/city/ban5.jpg"},
        ],
        list:[
          {id:1,title:"圣托里尼海岛庄园基地",img:"http://127.0.0.1:3000/img/city/a.png"},
          {id:2,title:"琥珀湾海岛庄园基地",img:"http://127.0.0.1:3000/img/city/b.png"},
          {id:3,title:"威廉北域基地",img:"http://127.0.0.1:3000/img/city/c.png"}
        ],
        pic:[
          {id:1,title:"微光情愫",img:"http://127.0.0.1:3000/img/city/01.jpg"},
          {id:2,title:"午后时光",img:"http://127.0.0.1:3000/img/city/02.jpg"},
          {id:3,title:"甜蜜时光",img:"http://127.0.0.1:3000/img/city/03.jpg"},
          {id:4,title:"梦回南锣",img:"http://127.0.0.1:3000/img/city/04.jpg"},
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
  /**轮播图*/
  .app-beijing .mint-swipe{height: 340px;width: 240px;margin:0 auto}
  .app-beijing .h_tit{width: 100%; padding:130px 0 7px;}
  .app-beijing .p_tit{width: 100%; padding:24px 0 7px;}
  .app-beijing .detail .title{font-weight: bold;font-size:18px;margin-top: 10px;text-align:center}
  .app-beijing .dtitle{font-weight: normal !important;margin-top: 10px;}
  .app-beijing .detail .type{font-size: 8px;text-align:center;font-family: "microsoft yahei";margin-bottom: 10px;}
</style>