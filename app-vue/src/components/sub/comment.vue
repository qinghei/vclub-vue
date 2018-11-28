<template>
    <div class="app-comment">
        <h1>评论子组件</h1>
        <hr>
        <textarea placeholder="请吐槽最多120个字" maxlength="120" v-model="msg"></textarea>
        <mt-button size="large" @click="postComment">发表评论</mt-button>
        <div class="cmt-list">
            <div class="cmt-item" v-for="(item,i) in list" :key="item.id">
                <div class="cmt-info">第{{i+1}}楼 用户：{{item.user_name}}
                发表时间：{{item.ctime | dateFilter}}</div>
                <div class="cmt-body">
                    {{item.content}}
                </div>
            </div>
        </div>
        <mt-button size="large" @click="getMore">加载更多</mt-button>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default{
        data(){
            return {
                msg:"",    //双向绑定用户的评论
                pageIndex:0,
                pageSize:5,
                list:[]
            }
        },
        created(){
            this.getMore();
        },
        methods:{
            getMore(){
                //1.页码自增
                this.pageIndex++;
                //2.发送ajax   /getComment
                //3.参数 id pno pageSize
                var p=this.pageIndex;
                var s=this.pageSize;
                var id=this.id;
                var url="getComment?id="+id+"&pno="+p+"&pageSize="+s;
                //console.log(p+":"+s+":"+id);
                console.log(url);
                //4.获取返回数据保存list属性
                this.$http.get(url).then(result=>{
                  var row=this.list.concat(result.body.data)
                  this.list=row;
                })
                //5.显示模板中
            },
            postComment(){
                //console.log(123);
                //1.获取新闻编号
                var nid=this.id;
                //2.获取评论内容
                var pmsg=this.msg;
                //3.判断新闻评论内容不能为空
                if(pmsg.trim().length==0){
                    Toast("评论内容不能为空")
                    return;
                }
                //4.发送post请求
                var url="http://127.0.0.1:3000/postcomment";
                this.$http.post(url,{nid:nid,msg:pmsg}).then(result=>{
                    //5.获取服务器程序返回
                    //6.提示用户 "评论成功"
                    Toast("发表成功");
                    //考虑当前页码，清空pageIndex
                    this.pageIndex=0;
                    this.list=[];
                    this.getMore();
                })
            }
        },
        props:["id"],
        created(){
          this.getMore();
        }
    }
</script>
<style>
    .app-comment h1{
        font-size:18px;
    }
    .app-comment textarea{
        font-size:14px;
        height:85px;
        margin:0;
    }
    .app-comment .cmt-list{
        margin:5px 0;
    }
    .app-comment .cmt-list .cmt-info{
        line-height:30px;
        background:#ccc;
    }
    .app-comment .cmt-list .cmt-body{
        line-height:35px;
        text-indent:2em;
    }
</style>