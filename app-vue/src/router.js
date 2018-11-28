import Vue from 'vue'
import Router from 'vue-router'
//1.引入自定义组件
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import Show from "./components/tabbar/Show.vue"
import Movie from "./components/tabbar/Movie.vue"
import Style from "./components/tabbar/Style.vue"
import New from "./components/tabbar/New.vue"
import About from "./components/tabbar/About.vue"
import Dress from "./components/tabbar/Dress.vue"
import news from "./components/news/news.vue"
import city from "./components/city/city.vue"
import lijiang from "./components/city/lijiang.vue"
import sanya from "./components/city/sanya.vue"
import beijing from "./components/city/beijing.vue"
import shenyang from "./components/city/shenyang.vue"
import dali from "./components/city/dali.vue"
import dalian from "./components/city/dalian.vue"
import haerbin from "./components/city/haerbin.vue"
import chongqing from "./components/city/chongqing.vue"

Vue.use(Router)
//2.配置访问自定义组件路径
export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path:'/home',component:HomeContainer},
    {path:'/show',component:Show},
    {path:'/movie',component:Movie},
    {path:'/style',component:Style},
    {path:'/new',component:New},
    {path:'/about',component:About},
    {path:'/dress',component:Dress},
    {path:'/news',component:news},
    {path:'/city',component:city},
    {path:'/city/lijiang',component:lijiang},
    {path:'/city/sanya',component:sanya},
    {path:'/city/beijing',component:beijing},
    {path:'/city/shenyang',component:shenyang},
    {path:'/city/dali',component:dali},
    {path:'/city/dalian',component:dalian},
    {path:'/city/haerbin',component:haerbin},
    {path:'/city/chongqing',component:chongqing},
  ]
})
