<template>
  <div  class="app-homeContainer">
      <!--轮播图  -->
      <mt-swipe  :auto="2000">
        <mt-swipe-item v-for="item in list" :key="item.id">
           <img :src="item.img_url">
        </mt-swipe-item>
      </mt-swipe>
      <!--导航栏 -->
      <nav-box></nav-box>
      <div class="p_tit"><img src="http://127.0.0.1:3000/img/home/h_tit1.jpg"></div>
      <!--城市列表-->
      <div class="pic">
        <ul><li v-for="item in clist" :key="item.id">
          <router-link :to="item.cpath"><img :src="item.img_url"><div>{{item.cname}}</div></router-link>
        </li></ul>
      </div>
      <!--微电影-->
      <div class="h_tit"><img src="http://127.0.0.1:3000/img/home/h_tit2.jpg"></div>
      <div class="film"  >	
	      <video controls loop playsinline="true" poster="http://127.0.0.1:3000/img/home/cover.jpg" src="http://127.0.0.1:3000/img/home/film.mp4" x-webkit-airplay="allow" x5-video-player-type="h5"></video>
      </div>
      <!--最美客片-->
      <div class="h_tit"><img src="http://127.0.0.1:3000/img/home/h_tit3.jpg"></div>
      <div class="showpic">
        <ul><li v-for="item in slist" :key="item.id">
		      <router-link to="/show">
            <img :src="item.img_url">
            <div class="text">
              <div class="ke_time">{{item.ctime}}</div>
              <div class="ke_type">{{item.stype}}</div>
            </div>
			    </router-link>
        </li></ul>
        <div class="more_pic"><router-link to="/show">+VIEWMORE</router-link></div>
      </div>
      <!--新闻资讯-->
      <div class="information">
        <div class="h_tit"><img src="http://127.0.0.1:3000/img/home/h_tit4.png"></div>
        <div class="mui-card" v-for="item in nlist" :key="item.id">
          <router-link to="/news">
            <div class="mui-card-header mui-card-media" style="height:30vw" :style="{'background':'url('+item.img_url +')','background-size':'100% 100%'}"></div>
            <div class="mui-card-content">
              <div class="mui-card-content-inner">
                <p>{{item.title}}</p>
                <p>{{item.content}}</p>
              </div>
            </div>
            <div class="mui-card-footer">
              <span>Vclub PHOTO</span>
              <p>TIME:2018-04-25</p>
            </div>
          </router-link>
        </div>
        <div class="more_pic"><router-link to="/news">+VIEWMORE</router-link></div>
      </div>
      <div class="end">
        <img src="http://127.0.0.1:3000/img/home/bo_tex.jpg">
        <img src="http://127.0.0.1:3000/img/home/bo_pic.jpg">
      </div>
  </div>
</template>
<script>
  import nav from "../sub/nav.vue"
  export default {
    data(){return {
      list:[],  //轮播图
      clist:[],  //城市列表
      slist:[], //最美客片
      nlist:[]  //新闻资讯
    }},
    methods:{
      getImage(){//轮播图
        this.$http.get("imagelist").then(result=>{
          this.list=result.body; //获取返回数据，保存到list属性中
        })
      },
      getCitylist(){//城市列表
        this.$http.get("citylist").then(result=>{
          this.clist=result.body; //获取返回数据，保存到list属性中
        })
      },
      getShowpic(){//最美客片
        this.$http.get("showpic").then(result=>{
          this.slist=result.body; //获取返回数据，保存到list属性中
        })
      },
      getNewslist(){//新闻资讯
        this.$http.get("newslist").then(result=>{
          this.nlist=result.body; //获取返回数据，保存到list属性中
        })
      }
    },
    created(){
      this.getImage();
      this.getCitylist();
      this.getShowpic();
      this.getNewslist();
    },
    components:{"nav-box":nav}
  }
</script>
<style>
  img{width: 100%;border-style: none;vertical-align: middle;}
/*图片轮播设置高度*/
  .app-homeContainer .mint-swipe{height:225px;margin-top:50px;margin-bottom: -50px;}
  .app-homeContainer .mint-swipe img{width:100%;}
  .app-homeContainer .p_tit,.h_tit,h_tit{width: 100%; padding: 24px 0 7px;} 
/*城市列表*/
  .app-homeContainer div.pic{width: 100%;margin: 16px 0;}
  .app-homeContainer div.pic ul{overflow: hidden;}
  div.pic ul li{float: left; width:25%;height: auto;border-top: 1px solid #cfcfcf;border-left: 1px solid #cfcfcf;}
  div.pic ul li:first-child{border-left: 1px solid transparent;}
  div.pic ul li:nth-child(13),div.pic ul li:nth-child(14),div.pic ul li:nth-child(15),div.pic ul li:nth-child(16){border-bottom: 1px solid #cfcfcf;}
  div.pic ul li img{width:60px;border-radius: 50%;margin:13px 20% 3px}
  div.pic ul li div{font-size: 8px;color: #000;text-align: center; margin-bottom: 6px;}
/*微电影*/
  .film{text-align:center;width:100%}
  video{display: inline-block;height:100%;width:100%;}
/*最美客片*/
  .showpic{margin:8px 0 3px;}
  .showpic ul li a {color: #333;text-decoration: none; background-color: transparent;}
  .showpic ul li .text{margin: 16px 0; text-align: center;}
  .showpic ul li .text .ke_time{font-size:15px;font-weight: bold;}
  .showpic ul li .text .ke_type {font-size:8px;line-height:11px;font-family: "microsoft yahei";}
  .more_pic{width:80%;margin:8px auto 16px;height:30px;background:#bdab87;color:#fff;text-align:center;line-height:30px;}
  .more_pic>a{letter-spacing:5px;color: #fff;}
/*新闻资讯 */
  .information{width:100%;height: auto;background: #282828;padding-top:35px;}
  .information .mui-card{width:45%;height:80;display: inline-block;margin:9px !important;}
  .information .mui-card .mui-card-content{margin-bottom: -15px;}
  .information .mui-card .mui-card-content .mui-card-content-inner p{display:-webkit-box;-webkit-box-orient:vertical;overflow:hidden}
  .information .mui-card .mui-card-content .mui-card-content-inner p:first-child{margin-bottom: 5px;color:#000;
  -webkit-line-clamp:1;}
  .information .mui-card .mui-card-content .mui-card-content-inner p:last-child{font-size: 12px;-webkit-line-clamp:5;}
  .information .mui-card .mui-card-footer{display:block !important;height:50px;font-size: 12px;}
  .information .mui-card .mui-card-footer span{color: #8f8f94;}
  .information .mui-card .mui-card-footer p {margin-left:45px;font-size: 12px;}
  .app-homeContainer .end{width:100%;margin-top: -16px;}
  .app-homeContainer .end img{width:100%;}
</style>