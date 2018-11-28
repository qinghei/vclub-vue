import Vue from 'vue'
import App from './App.vue'
import router from './router'
//引入mint-ui css文件
import'mint-ui/lib/style.css'
Vue.config.productionTip = false
//引入mui css文件 大部分组件都要使用css
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'
//引入组件mintui库Header
//-引入指定组件
/*import {Button,Header,Swipe,SwipeItem,Lazyload} from "mint-ui"; 
//-注册当前项目中 <mt-header>    "tt-header"
Vue.component(Button.name,Button);
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);  //"mt-swipe"
Vue.component(SwipeItem.name,SwipeItem);
Vue.use(Lazyload);*/
//完整引用
import MintUI from "mint-ui";
Vue.use(MintUI);
import VueResource from "vue-resource";
Vue.filter("dateFilter",function(val){
  var date = new Date(val);//创建日期对象
  var y = date.getFullYear();
  var m = date.getMonth()+1;
  var d = date.getDate();
  m<10&&(m="0"+m)
  d<10&&(d="0"+d)
  return `${y}-${m}-${d}`
})
Vue.filter("dateTimeFilter",function(val){
  var date = new Date(val);
  var y = date.getFullYear();
  var m = date.getMonth()+1;
  var d = date.getDate();
  var h = date.getHours();
  var min =date.getMinutes();
  var s = date.getSeconds();
  m<10&&(m="0"+m)
  d<10&&(d="0"+d)
  
  return `${y}-${m}-${d} ${h}:${min}:${s}`
})
Vue.use(VueResource)
//配置VueResource服务器根目录
Vue.http.options.root="http://127.0.0.1:3000/"
//修改请求头 POST
Vue.http.options.emulateJSON=true

//4.创建Vuex实例对象
//4.1下载安装Vuex
//4.2引入Vuex
import Vuex from "vuex"
//4.3注册Vuex
Vue.use(Vuex)
//4.4创建Vuex实例对象
var store=new Vuex.Store({
  state:{color:0},
/*  mutations:{
    add(state,c){state.count+=parseInt(c)},
    desc(state){state.count--}
  }, //修改共享数据的两个方法，参数共享数据属性
  getters:{
    optCount:function(state){
      return state.count  //返回共享数据
    }
  }  */
});
//5.注册Vuex实例
new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')
