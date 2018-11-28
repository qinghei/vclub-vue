<template>
    <div class="app-container">
        <header class="fixed">
            <img src="http://127.0.0.1:3000/img/home/logo.png">
            <div>
                <span class="mui-icon mui-icon-weixin" @click="vc"></span>
                <a target="_blank" href="https://m.weibo.cn/u/6504246465"><span class="mui-icon mui-icon-weibo"></span></a>
            </div>
        </header>
        <div v-show="wechat">
            <div class="mask"></div>
            <div class="layer">
                <div class="k_tac"><img src="http://127.0.0.1:3000/img/home/wechat_code.jpg"></div>
                <h5 class="l_bar"><span>关注我们了解更多资讯</span></h5>
                <button type="button" @click="hide()">确定</button>
            </div>
        </div>
        <!--2.容器显示不同组件-->
        <router-view></router-view>
        <!--3.底部导航栏-->
        <div class="footer">
            <div class="f-top">
                <img src="http://127.0.0.1:3000/img/home/logo.png" alt="">	
                <div class="f-type">
                    <a href="#">高端&nbsp;&nbsp;|</a>
                    <a href="#">&nbsp;&nbsp;定制&nbsp;&nbsp;|</a>
                    <a href="#">&nbsp;&nbsp;明星&nbsp;&nbsp;|</a>
                    <a href="#">&nbsp;&nbsp;幸福感</a>
                </div>	
                <div class="chi_tex">网络预约享优惠</div>
                <div class="eng_tex">Online booking discount</div>
            </div>
            <div class="f-row"><input type="text" placeholder="姓名" v-model="uname"></div>
            <div class="f-row"><input type="text" placeholder="手机" v-model="phone"></div>
            <div class="f-row f-row-last">
                <input type="text" placeholder="婚期" v-model="merrytime">&nbsp;</div>
            <div class="f-row">
                <input class="recevie" type="submit" value="马上免费领取专属优惠" @click="PostInfo">
            </div>
            <div class="up_call">提交预约信息后您的专属客服将尽快与您联系！</div>
            <div class="rexian">全国统一客户服务热线</div>
            <div class="sma_text">—— NATIONAL TOLL- FREE HOTLINE ——</div>
            <div class="tel_text">400-001-0520</div>
            <div class="copyright">Copyright &copy; 唯映像 | 辽宁唯会所文化产业有限公司  辽ICP备14004535号</div>
        </div>
        <div class="topfix"><a href="#" id="top"><img src="http://127.0.0.1:3000/img/home/fix2.png" alt=""></a></div>
        <div class="bottombox">
            <div class="tel"><a href="tel:4000010520">
                <i><img src="http://127.0.0.1:3000/img/home/tel.png"></i>
                <p>点击咨询</p><h6>400-001-0520</h6></a>
            </div>
        </div> 
    </div>

</template>
<script>
    import {Toast} from "mint-ui"
    export default{
        data(){
            return{
                wechat:false,
                uname:"",
                phone:"",
                merrytime:""
            }
        },
        methods:{
            vc(){this.wechat=true},
            hide(){this.wechat=false},
            PostInfo(){
                if(this.uname.trim().length==0){
                    Toast("请填写您的姓名")
                    return;
                }else if(this.phone.trim().length==0){
                    Toast("请填写您的手机号码")
                    return;
                }else{
                    var reg=/^1[34578]\d{9}$/;
                    var test=reg.test(this.phone);
                    if(!test){Toast("请检查您的手机号码格式")}else{
                        this.$http.post("http://127.0.0.1:3000/user",{uname:this.uname,phone:this.phone,merrytime:this.merrytime}).then(result=>{
                            if(result.body.code==1){Toast("恭喜您报名成功");}
                        })
                    }  
                }
                
            }
        }
  }
</script>
<style>
    *{margin:0;padding:0}
    li{list-style: none;}
    .app-container{padding-bottom:0;overflow-x:hidden;background: #fff ;}
        header{height: 52px;color: #fff;background-color: #000;width: 100%;position:fixed;top:0;z-index:999;}
        header img{margin-left:48px;margin-top:10px;width:150px;height:30px;}
        header div{float:right;margin-right:20px;margin-top:15px;}
        header div span{margin-left:15px;color:#fff}
        /**底部悬浮框 */ 
        .bottombox {width:100%; max-width:640px; height:65px;background: rgba(0,0,0,0.7);position: fixed;bottom:0; z-index: 99;      border-top: 1px #afafaf solid;}
        .bottombox .tel{ overflow:hidden; text-align:center;margin-top:-15px;}
        .bottombox .tel a i{ display:inline-block; margin-top: 20px;}
        .bottombox .tel a p {display:inline-block;height:16px; color:#fff; margin-left:6px;padding-top:6px}
        .bottombox .tel a h6 { clear:left; display:block;font-size:20px;line-height: 1.4;font-weight: normal; color:#fff; text-align:center;}
        /**底部样式 */
        .app-container .footer{padding:29px 51px 45px;background: #282828;}
        .footer .f-top{margin-bottom: 32px;text-align: center;}
        .footer .f-top img{width:88px}
        .footer .f-type{text-align:center;margin-top:10px;}
        .footer .f-type a{display: inline-block;height:8px;color: #fff;font-size:8px;}
        .footer .f-top .chi_tex{font-size:16px;margin-top:24px;color:#fff}
        .footer .f-top .eng_tex{font-size:13px;color:#fff;}
        .footer .f-row input{display: block;width: 100%;height:45px;padding:8px;font-size:16px;border: 0;color: #ccc; background-color: #1a1a1a;}
        .footer .f-row .recevie{background-color: #bdab87;color: #fff;}
        .footer .up_call{font-size: 8px;color: #919191;text-align: center;margin-top: 10px;}
        .rexian {font-size:16px;color: #fff;text-align: center;margin-top:32px;}
        .footer .sma_text{font-size: 8px;color: #fff;text-align: center}
        .footer .tel_text{font-size:30px;color:#bdab87;font-weight:bold;text-align:center;margin-top:16px;}
        .footer .copyright{font-size: 6px;color: #919191;text-align: center;margin-top:10px;}
        .fix{display:block;position: fixed;right:10px;bottom: 8%;}
        .fix a{display: block; margin-bottom: 10px;}
    .topfix img{width:43px;height:43px;}
    .mask{position:fixed;z-index:8;width:100%;height:100%;background:rgba(0, 0, 0, 0.7);}
    .layer {position:fixed;z-index:9;top:50%;left:50%;width:220px;padding:30px;background:#fff;
    transform: translate(-50%, -50%);}
    .k_tac {text-align: center;}
    .layer .l_bar{margin-top: 16px;margin-bottom: 8px;color: #000;font-size: 12px;}
    .layer button{background: #1a1a1a;width: 100%;padding:8px 12px;border: 0;color: #fff;}
</style>
