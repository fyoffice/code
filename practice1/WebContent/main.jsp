<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title></title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,intal-scale=1.0">
		<title></title>
		<link href="code/css/bootstrap.min.css" rel="stylesheet">
		<script src="code/js/jquery.min.js"></script>
		<script src="code/js/bootstrap.min.js"></script>
		<style type="text/css">
			body{
				font-family: "新宋体";
			}
			h3{
				font-weight: bolder;
			}
		video{  
            position: fixed; 
            top: 30px; 
            right: 0px;  
            bottom: 0px;  
            min-width: 100%;  
            min-height: 100%;  
            height: auto;  
            width: auto;   
            z-index:-11
        }  
        .cebian a:link{
				font color: #EAE8E9;
			}
			.cebian a:visited{
				font color: #EAE8E9;
			}
			.cebian a:hover{
				font color: #EAE8E9;
			}
        source{  
            min-width: 100%;  
            min-height: 100%;  
            height: auto;  
            width: auto;  
			}
			
			.navbar{
			font-size: 15px !important ;
			background-color: black;
			font color: white;
			letter-spacing: 6px;
			padding:5px ;	
		}
		.navbar-nav ul li{
			text-decoration: none;
			font color: white;
			font-family: "微软雅黑";
		}
		.navbar-nav li a:link{
			font-size: 15px;
			color: white ;
			text-decoration: none;
			font-family: "微软雅黑";
		}
		.navbar-nav li a:hover{
			font-size: 15px;
			color: white ;
			text-decoration: none;
			font-family: "微软雅黑";
			
		}
		.navbar-nav li a:active{
			color: white ;
			font-size: 15px;
			text-decoration: none;
			font-family: "微软雅黑";
		}
		.navbar-nav button{
			color: white ;
			font-size: 15px;
			text-decoration: none;
			font-family: "微软雅黑";
		}
		.gonglue{
			padding-top: 150px; 
		}
		.lanxia{
			font-size: 20px;
			padding-bottom: 80px;
			font color: white;
			text-align: center;
		}
		.zhuyao{
			background-color:white ;
		}
		.box1{
			width: 120px;
			height: 150px;
			text-align: center;
			font-size: 15px;
		}
		.box2{
			width: 60px;
			height: 60px;
			text-align: center;
			font-size: 15px;
		}
		 .subscript{
        color: #fff;
        height: 15px;
        width: 50px;
        position: absolute;
        right: -10px;
        font-size: 12px;
        text-align: center;
        line-height: 15px;
        font-family: "黑体";
        background-color: limegreen;
        -moz-transform:rotate(45deg);
        -webkit-transform:rotate(45deg);
        -o-transform:rotate(45deg);
        -ms-transform:rotate(45deg);
        transform:rotate(45deg);
      }
      .renwujieshao{
      	padding-top: 30px;
      }
      footer{
    			background-color:white ;
    			padding-top:50px ;
    			padding-bottom:50px ;
    			opacity: 0.9;
    		}
    		footer .glyphicon{
				font-size: 20px;
				margin-bottom:20px ;

				color: #F4511E;
			}
			footer p{
				color:#818181;
				font-size: 12px;
				line-height: 12px;
				text-decoration: none;
			}
			.yishu{
				
				font-family: arial,"Hiragino Sans GB","Microsoft Yahei",sans-serif;
				color: orange;
				font-weight: bolder;
			}
			.yishu2{
				font-family: "黑体";
			}
			
		</style>
	</head>
	<body>
		<video preload autoplay loop muted>  
    <source src="img/lux.webm" type="video/mp4">
</video>
		<nav class="navbar navbar-inverse navbar-fixed-top">
	 	<div class="navbar-header">
	 		<button type="button" class="navbar-toggle" >
	 			<span class="icon-bar"></span>
	 			<span class="icon-bar"></span>
	 			<span class="icon-bar"></span>
	 		</button>
	 		<div class="navbar-brand brand-img" href="#new_file.html">
	 			<img src="img/logo.png" width="100" class="img-responsive" />
	 		</div>
	 	</div>
	 	<div class="collapse navbar-collapse">
	 		<ul class="nav navbar-nav ">
	 			<li><a href="zhuye.html">主页</a></li>
	 			<li><a href="getDownloadList.do">下载</a></li>
	 			<li><a href="laowanjia.html"><span class="glyphicon glyphicon-search"></span>联系</a></li>
	 			
	 			
	 		</ul>
	 		<ul class="nav navbar-nav navbar-right">
	 			<li><a href="laowanjia.html"><span class="glyphicon glyphicon-user"></span>注册</a></li>
	 			<li>当前用户：<span>${currentUser.chrName}</span> &nbsp;[<a href="logout.do">安全退出</a>]</li>
	 		</ul>
	 	</div>
	 		
	 </nav>
	 <div class="container-fluid">
	 	<div class="row">
	 		<p><img class="img-responsive center-block gonglue" src="img/gonglue.png" width="350"></p>
	 		<form class="form-inline text-center">
					<input type="search" class="form-control" size="70" placeholder="搜索一下" >
					<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-search"></span></button>
				</form>
				<br><br>
				<p class="lanxia">可搜索所有英雄，技能，道具装备及相关攻略玩法</p>
	 	</div>
	 	<div class="row zhuyao">
	 		<div class="col-sm-push-1 col-sm-7">
	 			<h2 style="font-family: '微软雅黑';">本周星玩法</h2>
	 			<br />
	 			<ul class="nav nav-tabs">
	 			<li class="active"><a href="#shangdan" id="tabNav" data-toggle="tab"><div class="box1"><div class="subscript">上单</div><img src="img/shangdan.png" width="100%">诺克萨斯之手<br />德莱厄斯</div></a></li>
	 			<li><a href="#zhongdan" data-toggle = "tab"><div class="box1"><div class="subscript">中单</div><img src="img/zhongdan.png" width="100%">诡术妖姬<br />乐芙兰</div></a></li>
	 			<li><a href="#daye" data-toggle = "tab"><div class="box1"><div class="subscript">打野</div><img src="img/daye.png" width="100%">虚空掠夺者<br />卡兹克</div></a></li>
	 			<li><a href="#adc" data-toggle = "tab"><div class="box1"><div class="subscript">adc</div><img src="img/adc.png" width="100%">赏金猎人<br />厄运小姐</div></a></li>
	 			<li><a href="#fuzhu" data-toggle = "tab"><div class="box1"><div class="subscript">辅助</div><img src="img/fuzhu.png" width="100%">万花通灵<br />妮蔻</div></a></li>
	 			</ul> <br />
	 			<div class="tab-content">
	 			<div class="tab-pane active fade in" id="shangdan">
	 					<h3>诺克萨斯之手</h3>
	 			<ul class="nav nav-tabs">
	 			<li class="active"><a href="#liuxue" id="tabNav" data-toggle="tab"><div class="box2"><img src="img/jineng/liuxue.png" width="100%"></div></a></li>
	 			<li><a href="#waiquangua" data-toggle = "tab"><div class="box2"><img src="img/jineng/dashasifang.png" width="100%"></div></a></li>
	 			<li><a href="#zhican" data-toggle = "tab"><div class="box2"><img src="img/jineng/zhicandaji.png" width="100%"></div></a></li>
	 			<li><a href="#wuqing" data-toggle = "tab"><div class="box2"><img src="img/jineng/wuqingtieshou.png" width="100%"></div></a></li>
	 			<li><a href="#duantoutai" data-toggle = "tab"><div class="box2"><img src="img/jineng/duantoutai.png" width="100%"></div></a></li>
	 			</ul> <br />
	 			<div class="tab-content">
	 				<div class="tab-pane active fade in" id="liuxue">
	 					<h4><strong>出血</strong><small> 被动技能</small></h4><br/>
	 					<p>德莱厄斯策略性地运用他的攻击，让目标流血不止。这个效果最多可叠加5次。敌人身上的【出血】效果到达最大层数时，会让德莱厄斯获得【诺克萨斯之力】，极大地提升他的伤害。</p>
	 				</div>
	 				<div class="tab-pane fade" id="waiquangua">
	 					<h4><strong>大杀四方</strong><small> 快捷键：Q</small></h4><br/>
	 					<p>在短暂的延迟后，德莱厄斯环绕自身挥舞斧头，打击附近的敌人。被斧刃（技能指示器外环）命中的敌人会受到40/70/100/130/160(+1.05)物理伤害。被斧柄（技能指示器内环）命中的敌人只会受到前者35%的伤害(不会施加【出血】效果)。</p>
	 					<br /><p>德莱厄斯每用斧刃命中一名敌方英雄，就会治疗自身12%的已损失生命值(最大值：36%)。</p>
	 					<br /><p>伤害：40/70/100/130/160</p>
	 					<p>总攻击力收益：100/110/120/130/140</p>
	 					<p>冷却时间：9/8/7/6/5</p>
	 					<p>消耗：30/35/40/45/50</p>
	 				</div>
	 				<div class="tab-pane fade" id="zhican">
	 					<h4><strong>致残打击</strong><small> 快捷键：W</small></h4><br/>
	 					<p>德莱厄斯的下次普攻造成物理伤害，并使目标减速90%，持续1秒。</p>
	 					<br /><p>如果【致残打击】击杀了目标，那么会返还此技能的法力消耗和50%的冷却时间。</p>
	 					<br /><p>消耗：30法力</p>
	 					<p>冷却时间：7/6.5/6/5.5/5</p>
	 				</div>
	 				<div class="tab-pane fade" id="wuqing">
	 					<h4><strong>无情铁手</strong><small> 快捷键：E</small></h4><br/>
	 					<p>被动：德莱厄斯获得15/20/25/30/35%护甲穿透。</p>
	 					<br /><p>主动：将锥形范围内的所有敌人都拉到德莱厄斯的面前，并使这些敌人减速40%，持续1秒。</p>
	 					<br /><p>百分比护甲穿透：15/20/25/30/35</p>
	 					<p>冷却时间：24/21/18/15/12</p>
	 				</div>
	 				<div class="tab-pane fade" id="duantoutai">
	 					<h4><strong>诺克萨斯断头台</strong><small> 快捷键：R</small></h4><br/>
	 					<p>跃向目标英雄并进行致命打击，造成100/200/300(+0.75)点真实伤害。 目标身上的每层【出血】效果，都会使【诺克萨斯断头台】额外造成20%的伤害。</p>
	 					<br /><p>最大伤害值：100,200,300</p>
	 					<br /><p>如果【诺克萨斯断头台】击杀了目标，那么它可以在秒内无消耗地再次施放。</p>
	 					<br /><p>在3级时，【诺克萨斯断头台】会解除封印——它的冷却时间会在击杀时完全重置，并且不再耗费法力。</p>
	 					<br /><p>冷却时间：120/100/80</p>
	 					<p>消耗：100/100/0法力</p>
	 				</div>
	 			</div>
	 			<div class="renwujieshao">
	 				<h3>使用技巧</h3>
	 				<br /><p><strong>当你使用诺克萨斯之手</strong></p>
	 				<p>- 【大杀四方】是一个非常强力的压制技能。用它的最大作用距离打击敌人时，效果是最好的 。</p>
	 				<p>- 你对目标施加的【出血】效果越多，【诺克萨斯断头台】的伤害越高。使用【诺克萨斯之力】来造成最大伤害。</p>
	 				<p>- 提高生存能力可以让德莱厄斯获得极大的收益。战斗持续得越久，他就变得越强力。</p>
	 				<br />
	 				<hr />
	 				<br />
	 				<p><strong>敌人使用诺克萨斯之手</strong></p>
	 				<p>- 当德莱厄斯的无情铁手处于冷却过程中时，你可以轻易地对他进行压制。</p>
	 				<p>- 德莱厄斯的脱战能力极度有限。如果你在对抗他时占据了优势，就将他拖进你的节奏吧。</p><br><br><br><br><br>
	 			</div>
	 				</div>
	 				<div class="tab-pane fade" id="zhongdan">
	 					<h3>诡术妖姬</h3>
	 			<ul class="nav nav-tabs">
	 			<li class="active"><a href="#jing" id="tabNav" data-toggle="tab"><div class="box2"><img src="img/jineng/jinghuashuiyue.png" width="100%"></div></a></li>
	 			<li><a href="#biaoji" data-toggle = "tab"><div class="box2"><img src="img/jineng/eyimoyin.png" width="100%"></div></a></li>
	 			<li><a href="#cai" data-toggle = "tab"><div class="box2"><img src="img/jineng/moyiingmizong.png" width="100%"></div></a></li>
	 			<li><a href="#lianzi" data-toggle = "tab"><div class="box2"><img src="img/jineng/huanyingsuolian.png" width="100%"></div></a></li>
	 			<li><a href="#fuzhi" data-toggle = "tab"><div class="box2"><img src="img/jineng/gujichongshi.png" width="100%"></div></a></li>
	 			</ul> <br />
	 			<div class="tab-content">
	 				<div class="tab-pane active fade in" id="jing">
	 					<h4><strong>镜花水月</strong><small> 被动技能</small></h4><br/>
	 					<p>当乐芙兰跌至40%最大生命值以下时，她会隐形1秒并创造一个幻像（不能造成伤害），幻像最多可持续8秒。</p>
	 					<br /><p>【镜花水月】有1分钟的冷却时间。</p>
	 					<br /><p>可以通过按住alt键的同时使用鼠标右键或再次施放此技能来控制【镜花水月】生成的幻像。</p>
	 				</div>
	 				<div class="tab-pane fade" id="biaoji">
	 					<h4><strong>恶意魔印</strong><small> 快捷键：Q</small></h4><br/>
	 					<p>乐芙兰投出一个魔印，造成55/80/105/130/155(+0.4)魔法伤害并标记目标3.5秒。</p>
	 					<br /><p>用任一其它技能对被标记的目标造成伤害时，都会引爆魔印并造成55/80/105/130/155 (+0.4)魔法伤害。</p>
	 					<br /><p>魔印伤害：55/80/105/130/155</p>
	 					<p>引爆伤害：55/80/105/130/155</p>
	 					<p>法力消耗：50/60/70/80/90</p>
	 				</div>
	 				<div class="tab-pane fade" id="cai">
	 					<h4><strong>魔影迷踪</strong><small> 快捷键：W</small></h4><br/>
	 					<p>乐芙兰位移至目标区域，对目标区域附近的敌人造成75/115/155/195/235(+0.6)魔法伤害。</p>
	 					<br /><p>在接下来的4秒内，她可以再次激活【魔影迷踪】来回到乐芙兰的初始位置。</p>
	 					<br /><p>伤害：75/115/155/195/235</p>
	 					<p>冷却时间：18/16/14/12/10</p>
	 					<p>法力消耗：60/75/90/105/120</p>
	 				</div>
	 				<div class="tab-pane fade" id="lianzi">
	 					<h4><strong>幻影锁链</strong><small> 快捷键：E</small></h4><br/>
	 					<p>乐芙兰抛出一个锁链来束缚命中的第一个敌人，造成40/60/80/100/120(+0.3)魔法伤害并提供目标的真实视野。</p>
	 					<br /><p>如果目标持续被束缚1.5秒，则乐芙兰会将其禁锢1.5秒，并造成附加的60/90/120/150/180(+0.7)魔法伤害。</p>
	 					<br /><p>锁链伤害：40/60/80/100/120</p>
	 					<p>禁锢伤害：60/90/120/150/180</p>
	 					<p>冷却时间：14/13.25/12.5/11.75/11</p>
	 				</div>
	 				<div class="tab-pane fade" id="fuzhi">
	 					<h4><strong>故技重施</strong><small> 快捷键：R</small></h4><br/>
	 					<p>乐芙兰故技重施，将她放过的上一个技能再施放一次。</p>
	 					<br /><p>故技重施版【恶意魔印】和【幻影锁链】造成70/140/210(+0.4AP)魔法伤害</p>
	 					<p>相应地，它们的印记和禁锢效果造成70/140/210(+0.4AP)伤害。</p>
	 					<p>故技重施版【魔影迷踪】造成150/300/450(+0.75AP)魔法伤害。</p>
	 				</div>
	 			</div>
	 			<div class="renwujieshao">
	 				<h3>使用技巧</h3>
	 				<br /><p><strong>当你使用诡术妖姬</strong></p>
	 				<p>- 魔影谜踪和故技重施一起释放，可以让对方难以猜出你要回到哪一个魔影谜踪的法阵上。</p>
	 				<p>- 使用魔影迷踪可以帮助你有好的站位来施放幻影锁链。</p>
	 				<p>- 你可以用恶意魔印与幻影锁链来防止有闪现技能的角色逃跑，最多持续4秒。</p>
	 				<br />
	 				<hr />
	 				<br />
	 				<p><strong>敌人使用诡术妖姬</strong></p>
	 				<p>- 乐芙兰的大招可以在她的技能施放期间，或是，少见地在一个遥远的位置创造一个假的乐芙兰。</p>
	 				<p>- 在远处创造的假乐芙兰将会跑向距它最近的敌方英雄，施放一个无害的技能，随后立刻消失。</p>
	 				<p>- 要先对乐芙兰发起攻击，来规避她的大部分小诡计，尤其是她在近期用过她的位移技能【魔影迷踪】时。</p>
	 				<p>- 晕眩或沉默乐芙兰将阻止她激活【魔影迷踪】返回。</p><br><br><br><br><br>
	 			</div>
	 				</div>
	 				<div class="tab-pane fade" id="daye">
	 					<h3>虚空掠夺者</h3>
	 			<ul class="nav nav-tabs">
	 			<li class="active"><a href="#jiansu" id="tabNav" data-toggle="tab"><div class="box2"><img src="img/jineng/wuxingweixie.png" width="100%"></div></a></li>
	 			<li><a href="#kou" data-toggle = "tab"><div class="box2"><img src="img/jineng/pinchangkongju.png" width="100%"></div></a></li>
	 			<li><a href="#ci" data-toggle = "tab"><div class="box2"><img src="img/jineng/xukongtuci.png" width="100%"></div></a></li>
	 			<li><a href="#tiao" data-toggle = "tab"><div class="box2"><img src="img/jineng/yueji.png" width="100%"></div></a></li>
	 			<li><a href="#yinshen" data-toggle = "tab"><div class="box2"><img src="img/jineng/xukonglaixi.png" width="100%"></div></a></li>
	 			</ul> <br />
	 			<div class="tab-content">
	 				<div class="tab-pane active fade in" id="jiansu">
	 					<h4><strong>无形威胁</strong><small> 被动技能</small></h4><br/>
	 					<p>当卡兹克没有在敌方队伍的视野内时，他会获得无形威胁，使他的下次对敌方英雄发动的普通攻击会造成额外的魔法伤害和减速效果。</p>
	 				</div>
	 				<div class="tab-pane fade" id="kou">
	 					<h4><strong>品尝恐惧</strong><small> 快捷键：Q</small></h4><br/>
	 					<p>造成50/75/100/125/150(+1.3)物理伤害。如果目标处于孤立无援状态，伤害会提升100%()。</p>
	 					<br /><p>进化收割利爪：此技能和卡兹克的普攻的距离提升50。如果目标处于孤立无援状态，返还此技能45%冷却时间。</p>
	 					<br /><p>伤害：50/75/100/125/150</p>
	 				</div>
	 				<div class="tab-pane fade" id="ci">
	 					<h4><strong>虚空突刺</strong><small> 快捷键：W</small></h4><br/>
	 					<p>发射爆炸性的尖刺，对命中的敌人造成85/115/145/175/205(+1)物理伤害。如果卡兹克处在爆炸范围内，则会回复60/85/110/135/160(+0.5)生命值。</p>
	 					<br /><p>进化刺鞘：虚空突刺会呈锥形发射三个尖刺并使被命中的目标减速60%，持续2秒。使被命中的敌方英雄显形2秒。孤立无援的目标所受的减速幅度会替换为90%。</p>
	 					<br /><p>伤害：85/115/145/175/205</p>
	 					<p>治疗效果：60/85/110/135/160</p>
	 					<p>消耗：55/60/65/70/75</p>
	 				</div>
	 				<div class="tab-pane fade" id="tiao">
	 					<h4><strong>跃击</strong><small> 快捷键：E</small></h4><br/>
	 					<p>卡兹克跳向目标区域，在着陆时造成65/100/135/170/205(+0.2)物理伤害。</p>
	 					<br /><p>进化虫翼：跃击的距离会提升200，并且在获得击杀和助攻时重置冷却时间。</p>
	 					<br /><p>伤害：65/100/135/170/205</p>
	 					<p>冷却时间：20/18/16/14/12</p>
	 				</div>
	 				<div class="tab-pane fade" id="yinshen">
	 					<h4><strong>虚空来袭</strong><small> 快捷键：R</small></h4><br/>
	 					<p>被动：提升虚空来袭的等级，会允许卡兹克进化他的技能。</p>
	 					<br /><p>主动：卡兹克变为隐形状态，持续秒并再次激活【无形威胁】。在隐形状态下时，他会获得{{ bonusmovementspeedpercent*100 }}%移速加成并无视单位的碰撞体积。</p>
	 					<br /><p>【虚空来袭】能在初段施放后的秒内再次施放，最多可至次。</p>
	 					<br /><p>进化动态遮蔽：【虚空来袭】的使用次数提升至秒内次，并且它的潜行时长提升至秒。</p>
	 					<br /><p>潜行—隐形：卡兹克只能被附近的敌方防御塔或真实视野所显形。</p>
	 					<br /><p>法力消耗：100</p>
	 					<p>冷却时间：100/85/70</p>
	 				</div>
	 			</div>
	 			<div class="renwujieshao">
	 				<h3>使用技巧</h3>
	 				<br /><p><strong>当你使用虚空掠夺者</strong></p>
	 				<p>- 在身旁一段距离内没有任何友军的敌人可以被视为孤立无援。【Q品尝恐惧】会显著提升对这些目标的伤害。</p>
	 				<p>- 【无形恐惧】会在卡兹克不被敌方队伍看见时激活。可以利用草丛或者【R虚空来袭】重复激活它。别忘了用普通攻击来给敌方英雄施加【无形恐惧】的效果。</p>
	 				<p>- 卡兹克在选择作战地点和作战时机方面有着极大的自由。谨慎地参加团战，从而获取胜利。</p>
	 				<br />
	 				<hr />
	 				<br />
	 				<p><strong>敌人使用虚空掠夺者</strong></p>
	 				<p>- 【Q品尝恐惧】会对孤立无援的目标造成额外伤害。在友军小兵，英雄或防御塔附近战斗，以获取优势。</p>
	 				<p>- 【E跃击】和【R虚空来袭】的冷却时间很长。在它们尚未冷却完毕时，卡兹克的逃生能力会大减。</p><br><br><br><br><br>
	 			</div>
	 				</div>
	 				<div class="tab-pane fade" id="adc">
	 					<h3>赏金猎人</h3>
	 			<ul class="nav nav-tabs">
	 			<li class="active"><a href="#juangu" id="tabNav" data-toggle="tab"><div class="box2"><img src="img/jineng/eyundejuangu.png" width="100%"></div></a></li>
	 			<li><a href="#shuangdiao" data-toggle = "tab"><div class="box2"><img src="img/jineng/yijianshuangdiao.png" width="100%"></div></a></li>
	 			<li><a href="#dabu" data-toggle = "tab"><div class="box2"><img src="img/jineng/dabuliuxing.png" width="100%"></div></a></li>
	 			<li><a href="#xiayu" data-toggle = "tab"><div class="box2"><img src="img/jineng/qianglindanyu.png" width="100%"></div></a></li>
	 			<li><a href="#danmu" data-toggle = "tab"><div class="box2"><img src="img/jineng/danmushijian.png" width="100%"></div></a></li>
	 			</ul> <br />
	 			<div class="tab-content">
	 				<div class="tab-pane active fade in" id="juangu">
	 					<h4><strong>厄运的眷顾</strong><small> 被动技能</small></h4><br/>
	 					<p>在攻击一个新目标时，厄运小姐会造成额外物理伤害。</p>
	 				</div>
	 				<div class="tab-pane fade" id="shuangdiao">
	 					<h4><strong>一箭双雕</strong><small> 快捷键：Q</small></h4><br/>
	 					<p>厄运小姐向敌方目标发射一次弹跳射击，对每个目标造成20/40/60/80/100(+1)(+0.35)物理伤害。每段射击都能施加攻击特效。</p>
	 					<br /><p>第二段射击可以暴击，造成%伤害，并且如果第一段攻击杀死了它的目标，那么第二段攻击就必定暴击。</p>
	 					<br /><p>消耗：43/46/49/52/55</p>
	 					<p>冷却时间：7/6/5/4/3</p>
	 					<p>伤害：20/40/60/80/100</p>
	 				</div>
	 				<div class="tab-pane fade" id="dabu">
	 					<h4><strong>大步流星</strong><small> 快捷键：W</small></h4><br/>
	 					<p>被动：如果5秒内没有受到直接伤害，厄运小姐就会获得25移动速度。再过5秒后，这个加成会提升至60/70/80/90/100。</p>
	 					<br /><p>主动：全额激活【大步流星】的移动速度加成并提供40/55/70/85/100%攻击速度加成，持续4秒。</p>
	 					<br /><p>每触发一次【厄运的眷顾】会使此技能的冷却时间减少1秒。</p>
	 					<p>移动速度：60/70/80/90/100</p>
	 					<p>攻击速度：40/55/70/85/100</p>
	 				</div>
	 				<div class="tab-pane fade" id="xiayu">
	 					<h4><strong>枪林弹雨</strong><small> 快捷键：E</small></h4><br/>
	 					<p>厄运小姐发射一阵弹雨来获得目标区域的视野，在2秒里持续对敌人造成共80/115/150/185/220 (+0.8)伤害，并减缓命中敌人28/36/44/52/60%移动速度。</p>
	 					<br /><p>伤害：80/115/150/185/220</p>
	 					<p>移动减速：28/36/44/52/60</p>
	 					<p>冷却时间：18/16/14/12/10</p>
	 				</div>
	 				<div class="tab-pane fade" id="danmu">
	 					<h4><strong>弹幕时间</strong><small> 快捷键：R</small></h4><br/>
	 					<p>厄运小姐向前方锥形地带扫射出持续秒的强力弹幕，每波弹幕造成(+0.75)(+0.2)物理伤害(总波数：12/14/16)。</p>
	 					<p>【弹幕时间】可以暴击并造成120%伤害。</p>
	 					<p>冷却时间：120/110/100</p>
	 				</div>
	 			</div>
	 			<div class="renwujieshao">
	 				<h3>使用技巧</h3>
	 				<br /><p><strong>当你使用赏金猎人</strong></p>
	 				<p>- 厄运小姐如果近期没有受到伤害，就会提高速度。避免受到攻击可以让她移动非常迅速。</p>
	 				<p>- 如果敌方英雄躲在小兵背后，则对最远处的敌方小兵使用一箭双雕；它会弹射到敌方英雄身上造成大量伤害。</p>
	 				<p>- 在【大步流星】尚未冷却时，要尽量利用【厄运的眷顾】来最大化攻击速度加成的持续时间。</p>
	 				<br />
	 				<hr />
	 				<br />
	 				<p><strong>敌人使用赏金猎人</strong></p>
	 				<p>- 厄运小姐的加速会被我方的伤害移除。</p>
	 				<p>- 如果你能追上厄运小姐，她很容易被击杀。在团队作战中先锁定她为目标。</p><br><br><br><br><br>
	 			</div>
	 				</div>
	 				<div class="tab-pane fade" id="fuzhu">
	 					<h3>万花通灵</h3>
	 			<ul class="nav nav-tabs">
	 			<li class="active"><a href="#bian" id="tabNav" data-toggle="tab"><div class="box2"><img src="img/jineng/bianshen.png" width="100%"></div></a></li>
	 			<li><a href="#tan" data-toggle = "tab"><div class="box2"><img src="img/jineng/shengkaihuazhong.png" width="100%"></div></a></li>
	 			<li><a href="#fen" data-toggle = "tab"><div class="box2"><img src="img/jineng/liangshenghuaying.png" width="100%"></div></a></li>
	 			<li><a href="#kun" data-toggle = "tab"><div class="box2"><img src="img/jineng/chanjiedaoci.png" width="100%"></div></a></li>
	 			<li><a href="#zha" data-toggle = "tab"><div class="box2"><img src="img/jineng/nufang.png" width="100%"></div></a></li>
	 			</ul> <br />
	 			<div class="tab-content">
	 				<div class="tab-pane active fade in" id="bian">
	 					<h4><strong>天生幻魅</strong><small> 被动技能</small></h4><br/>
	 					<p>冷却时间：25</p>
	 					<br /><p>妮蔻可以假扮成自己的队友。攻击敌人、受到伤害或是使用盛开花种以及缠结倒刺时会破除伪装，并增加技能的冷却时间。</p>
	 				</div>
	 				<div class="tab-pane fade" id="tan">
	 					<h4><strong>盛开花种</strong><small> 快捷键：Q</small></h4><br/>
	 					<p>妮蔻扔出一颗种子以造成伤害。如果种子击杀了一个单位或命中了一个英雄或大型野怪，那么它会再次盛开，造成伤害。最多可额外盛开2次。</p>
	 					<br /><p>用任一其它技能对被标记的目标造成伤害时，都会引爆魔印并造成55/80/105/130/155 (+0.4)魔法伤害。</p>
	 					<p>初始伤害：80/125/170/215/260(+0.5AP)魔法伤害</p>
	 					<p>次要伤害：造成40/60/80/100/120(+0.2AP)——至多两次</p>
	 					<p>消耗：50/60/70/80/90</p>
	 				</div>
	 				<div class="tab-pane fade" id="fen">
	 					<h4><strong>两生花影</strong><small> 快捷键：W</small></h4><br/>
	 					<p>被动：第三下普通攻击会造成额外50/80/110/140/170(+0.6AP)魔法伤害，并短暂地提高妮蔻的移动速度20/25/30/35/40%。</p>
	 					<br /><p>主动：妮蔻进入持续0.5秒的隐身状态，提升移动速度20/25/30/35/40% 2秒，同时根据自己当下的形象创造出一个暂时的分身，并向指定的方向移动，分身持续2秒。</p>
	 					<p>冷却时间：20/19/18/17/16</p>
	 				</div>
	 				<div class="tab-pane fade" id="kun">
	 					<h4><strong>缠结倒刺</strong><small> 快捷键：E</small></h4><br/>
	 					<p>妮蔻射出一道魔法漩涡，对途径的敌人造成80/115/150/185/220(+0.4AP)魔法伤害并禁锢他们0.5秒。最后命中的敌方英雄会被禁锢更长的时间。</p>
	 					<br /><p>如果目标持续被束缚1.5秒，则乐芙兰会将其禁锢1.5秒，并造成附加的60/90/120/150/180(+0.7)魔法伤害。</p>
	 					<br /><p>如果缠结倒刺命中了至少两名敌人，漩涡就会变得更大，速度更快，禁锢时间也会增加至0.7/0.9/1.1/1.3/1.5。</p>
	 				</div>
	 				<div class="tab-pane fade" id="zha">
	 					<h4><strong>怒放</strong><small> 快捷键：R</small></h4><br/>
	 					<p>妮蔻开始引导精神能量，1.25秒后跃上半空，获得50/80/110(+0.5AP)护盾，同时减速附近的敌人40%。</p>
	 					<br /><p>0.75秒后落下放出能量，对落点附近的敌人造成250/425/650(+1.3AP)魔法伤害以及1.25秒的眩晕效果。</p>
	 					<br /><p>当妮蔻处于天生幻魅状态下时，敌人不会看到她的引导动作。</p>
	 				</div>
	 			</div>
	 			<div class="renwujieshao">
	 				<h3>使用技巧</h3>
	 				<br /><p><strong>当你使用万花通灵</strong></p>
	 				<p>你可以在[选项]菜单中将她的被动设置到热键上。默认键位是[SHIFT]+[F1~F5]</p>
	 				<p>尽量选好你的【天生幻魅】的施放时机，没用好的话，就会引起敌人的警觉。</p>
	 				<br />
	 				<hr />
	 				<br />
	 				<p><strong>敌人使用万花通灵</strong></p>
	 				<p>在对抗妮蔻时，站在小兵后面是很危险的，因为【缠结倒刺】会变得更强力。</p>
	 				<p>在妮蔻处于假扮状态时，【怒放】的警告视觉效果是不可见的。</p><br><br><br><br><br>
	 			</div>
	 				</div>
	 			</div>
	 		</div>
	 		<div class="col-sm-push-1 col-sm-3">
	 			<div class="row">
	 			<div class=" col-sm-6">
	 				<h3>综合攻略</h3>
	 			</div>
	 			<div class="col-sm-push-4 col-sm-6">
	 				<h3><a href="laowanjia.html"><small><span class="glyphicon glyphicon-hand-right"></span>查看更多</small></a></h3>
	 			</div>
	 			</div>
	 				<h3>攻略排行 </h3>
	 				<ul class="nav nav-tabs" >
	 					<li class="active"><a href="#today" id="tabNav" data-toggle = "tab">今日</a></li>
	 					<li><a href="#week" data-toggle = "tab">本周</a></li>
	 					<li><a href="#month" data-toggle = "tab">本月</a></li>
	 					<li><a href="#all" data-toggle = "tab">总计</a></li>
	 				</ul>
	 				<br />
	 				<div class="tab-content">
	 					<div class=" tab-pane active fade in  cebian" id="today">
	 						<p><font class="yishu" size="7">1</font>&nbsp;<a href="#">万年中路见解 既有惯性与前中后期的浅谈</a></p>
	 						<p><font class="yishu" size="7">2</font>&nbsp;<a href="#">中单之神-亚索 史诗级攻略</a></p>
	 						<p><font class="yishu" size="7">3</font>&nbsp;<a href="#">永远不灭的意志——新版刀妹教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;4</font>&nbsp;<a href="#">玩辅助有奖励！S8辅助英雄上分首选排行</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;5</font>&nbsp;<a href="#">暗影下的刺客-中单阿卡丽攻略</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;6</font>&nbsp;<a href="#">LOL花式偷家大盘点！</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;7</font>&nbsp;<a href="#">樱花AD------皮城女警</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;8</font>&nbsp;<a href="#">疯狗养成计划——剑圣打野教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;9</font>&nbsp;<a href="#">恐怖移速的烬、享受虐杀的快感</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;10</font>&nbsp;<a href="#">后起之秀上单青钢影攻略</a></p>
	 					</div>
	 					<div class="tab-pane fade" id="week">
	 						<p><font class="yishu" size="7">1</font>&nbsp;<a href="#">永远不灭的意志——新版刀妹教学</a></p>
	 						<p><font class="yishu" size="7">2</font>&nbsp;<a href="#">中单之神-亚索 史诗级攻略</a></p>
	 						<p><font class="yishu" size="7">3</font>&nbsp;<a href="#">LOL花式偷家大盘点！</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;4</font>&nbsp;<a href="#">恐怖移速的烬、享受虐杀的快感</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;5</font>&nbsp;<a href="#">暗影下的刺客-中单阿卡丽攻略</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;6</font>&nbsp;<a href="#">感谢金克丝送的礼物</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;7</font>&nbsp;<a href="#">樱花AD------皮城女警</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;8</font>&nbsp;<a href="#">疯狗养成计划——剑圣打野教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;9</font>&nbsp;<a href="#">恐怖移速的烬、享受虐杀的快感</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;10</font>&nbsp;<a href="#">凌驾一切的武力！诺手上单教学</a></p>
	 					</div>
	 					<div class="tab-pane fade" id="month">
	 						<p><font class="yishu" size="7">1</font>&nbsp;<a href="#">LOL花式偷家大盘点！</a></p>
	 						<p><font class="yishu" size="7">2</font>&nbsp;<a href="#">光速QA不是极限！锐雯如何操作</a></p>
	 						<p><font class="yishu" size="7">3</font>&nbsp;<a href="#">新版本T1中单阿狸玩法功略</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;4</font>&nbsp;<a href="#">玩辅助有奖励！S8辅助英雄上分首选排行</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;5</font>&nbsp;<a href="#">暗影下的刺客-中单阿卡丽攻略</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;6</font>&nbsp;<a href="#">LOL花式偷家大盘点！</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;7</font>&nbsp;<a href="#">疯狗养成计划——剑圣打野教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;8</font>&nbsp;<a href="#">凌驾一切的武力！诺手上单教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;9</font>&nbsp;<a href="#">恐怖移速的烬、享受虐杀的快感</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;10</font>&nbsp;<a href="#">后起之秀上单青钢影攻略</a></p>
	 					</div>
	 					<div class="tab-pane fade" id="all">
	 						<p><font class="yishu" size="7">1</font>&nbsp;<a href="#">中单之神-亚索 史诗级攻略</a></p>
	 						<p><font class="yishu" size="7">2</font>&nbsp;<a href="#">疯狗养成计划——剑圣打野教学</a></p>
	 						<p><font class="yishu" size="7">3</font>&nbsp;<a href="#">永远不灭的意志——新版刀妹教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;4</font>&nbsp;<a href="#">凌驾一切的武力！诺手上单教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;5</font>&nbsp;<a href="#">光速QA不是极限！锐雯如何操作</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;6</font>&nbsp;<a href="#">国人竟成韩服第一剑豪 最强亚索攻略</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;7</font>&nbsp;<a href="#">从瞎子到盲僧的蜕变——盲僧打野</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;8</font>&nbsp;<a href="#">疯狗养成计划——剑圣打野教学</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;9</font>&nbsp;<a href="#">恐怖移速的烬、享受虐杀的快感</a></p>
	 						<p><font class="yishu2" size="5">&nbsp;10</font>&nbsp;<a href="#">可曾遗忘被剑圣支配的恐惧？无极之道</a></p>
	 					</div>
	 				</div>
	 			</div>
	 		</div>
	 	</div>
	 </div>
	 <footer class="container-fluid text-center">
				<a href="#myPage" title="To Top">
					<span class="glyphicon glyphicon-chevron-up"></span>
				</a>
				<div class="row">
					<div class="col-sm-5">
						<img src="img/tengxun.jpg" width="150"/>
						<img src="img/quantou.jpg" width="150"/>
					</div>
					<div class="col-sm-7" style="text-align: left;">
						<p><a href="#">腾讯互动娱乐</a> | <a href="#">服务条款</a> | <a href="#">隐私政策</a> | <a href="#">腾讯游戏招聘</a> | <a href="#">腾讯游戏客服</a> | <a href="#">游戏地图</a> | <a href="#">成长守护平台</a> | <a href="#">商务合作</a> | <a href="#">网站导航</a></p>
						<p><a href="#">腾讯公司版权所有</a></p>
						<p>COPYRIGHT © 1998 - 2018 TENCENT. ALL RIGHTS RESERVED.</p>
						<p>COPYRIGHT © 2012 Riot Games,Inc. ALL RIGHTS RESERVED.</p>
						<p>本网络游戏适合18+岁的用户使用；为了您的健康，请合理控制游戏时间。</p>
						<p><a href="#">粤网文[2017]6138-1456号</a> | <a href="#">新出网证（粤）字010号</a></p>
						<p>批准文号：新出审字[2011]310号 |文网进字[2011] 004号 | 出版物号：ISBN 978-7-89989-145-2|全国文化市场统一举报电话：12318</p>
					</div>
				</div>
			</footer>
	 <script>
	 	$("#tabNav a").click(function(e){
	 		e.preventDefault()
	 		$(this).tab("show");
	 	});
	 </script>
	</body>
	
</html>