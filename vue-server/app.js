const express=require("express");
const pool=require("./pool");
const bodyParser=require("body-parser");
var app=express();
const cors=require("cors");
app.use(cors({
  origin:["http://127.0.0.1:3001","http://localhost:3001"],
  credentials:true
}))
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static(__dirname+"/public"));
app.listen(3000);
//功能1：获取图片列表
app.get("/imagelist",(req,res)=>{
  var obj=[
    {id:1,img_url:"http://127.0.0.1:3000/img/home/banner1.jpg"},
    {id:2,img_url:"http://127.0.0.1:3000/img/home/banner2.jpg"},
    {id:3,img_url:"http://127.0.0.1:3000/img/home/banner3.jpg"}
  ];
  res.send(obj)
});

//城市列表显示
app.get("/citylist",(req,res)=>{
  var sql = "SELECT * FROM city"; 
  pool.query(sql,[],(err,result)=>{
      if(err) throw err;
        res.send(result);
  })
})
//城市客片显示
app.get("/city",(req,res)=>{
   var sql = "SELECT * FROM citylist"; 
  pool.query(sql,[],(err,result)=>{
      if(err) throw err;
        res.send(result);
  })
})
//首页客片显示
app.get("/showpic",(req,res)=>{
  var sql = "SELECT * FROM showpic"; 
  pool.query(sql,[],(err,result)=>{
      if(err)throw err;
      var RES=result.slice(4,8);
        res.send(RES);
  })
})
//首页新闻列表
app.get("/newslist",(req,res)=>{
  var sql = "SELECT * FROM newslist"; 
  pool.query(sql,[],(err,result)=>{
      if(err)throw err;
      var RES=result.slice(0,4);
        res.send(RES);
  })
})
//新闻列表
app.get("/news",(req,res)=>{
  var sql = "SELECT * FROM newslist"; 
  pool.query(sql,[],(err,result)=>{
      if(err)throw err;
        res.send(result);
  })
})
//微电影列表
app.get("/filmlist",(req,res)=>{
  var sql = "SELECT * FROM filmlist"; 
  pool.query(sql,[],(err,result)=>{
      if(err)throw err;
      res.send(result);
  })
})
//品牌列表
app.get("/brand",(req,res)=>{
  var sql = "SELECT * FROM brand"; 
  pool.query(sql,[],(err,result)=>{
      if(err)throw err;
      res.send(result);
  })
})
//新作列表
app.get("/new",(req,res)=>{
  var sql = "SELECT * FROM new"; 
  pool.query(sql,[],(err,result)=>{
      if(err)throw err;
      res.send(result);
  })
})
//礼服列表
app.get("/dress",(req,res)=>{
  var sql = "SELECT * FROM dress"; 
  pool.query(sql,[],(err,result)=>{
      if(err)throw err;
      res.send(result);
  })
})
//功能2：分页显示:客片分页
app.get("/showlist",(req,res)=>{
  //1:参数  当前页码  页大小(一页显示几行数据)
  var pno = req.query.pno;            //2
  var pageSize = req.query.pageSize;  //5
  //2:sql
  //2.1:查找总记录数->转换总页数  15->3
  console.log(pno,pageSize);
  var sql = "SELECT count(id) as c FROM showpic";
  var obj = {};      //保存发送客户端数据
  var progress = 0;  //进度
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      var c = Math.ceil(result[0].c/pageSize);
      obj.pageCount = c;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  });
  //2.2:查找当前页内容           中间5行
  var sql = " SELECT id,img_url,ctime,stype";
     sql += " FROM showpic";
     sql += " LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);   //计算分页偏移量
  pageSize = parseInt(pageSize)
  pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err)throw err;
      obj.data = result;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  })
});

//绑定用户提交信息
app.post("/user",(req,res)=>{
  var uname = req.body.uname;
  console.log(uname)
  var phone = req.body.phone;
  var merrytime = req.body.merrytime;
  var sql = 'INSERT INTO user (uname,phone,merrytime) VALUES(?,?,?)';
  pool.query(sql,[uname,phone,merrytime],(err,result)=>{
    if(err) console.log(err);
    if(result.affectedRows>0){
      res.send({
        code:1
      })
    }
  })
})
