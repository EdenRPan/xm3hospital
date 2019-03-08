<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/1
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>重庆华西妇产医院</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shouye.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.42.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.1.js" ></script>
  </head>
  <body>
  <!--公共页开始-->
  <div class="header">
    <div class="top-bar">
      <ul>
        <li>重庆大学附属中心医院技术指导医院</li>
        <li>重庆市生殖保健指导咨询中心</li>
        <li>重庆医科大学分子遗传学合作实验室</li>
        <li>九龙坡区未成年意外妊娠援助指定医院</li>
      </ul>
    </div>
    <div class="logo">
      <div class="logo-l">
        <a href="shouye.html">
          <b>重庆华西妇产医院</b>
          <p>重庆市急救医疗中心医联体医院</p>
        </a>

      </div>
      <div class="logo-center fl">
        <form action="#" method="get">
          <input class="logo-search" id="logo-search" type="text" name="" placeholder="有健康问题？点此获取帮助">
          <input class="logo-search-bot" type="submit" value="">
        </form>
        <a href="www.baidu.com"></a>
      </div>
      <div class="logo-r fl">
        <a href="#">
          <b>重庆市急救医疗中心</b>
          <p>医疗联合体建设优秀单位</p></a>
      </div>
    </div>
    <div class="nav" style="z-index: 9999;">
      <div class="nav-warp" style="z-index: 9999;">
        <a class="a-first fl" href="home.jsp">
          <span></span>
          <span class="span-middle"></span>
          <span></span>
        </a>
        <ul class="fl">
          <li><a href="#" target="_self">
            <b>华西概况</b>
            <p>Introduction</p>
          </a>
            <div class="child-menu" style="z-index: 9999;">
              <span class="top-boder"></span>
              <ul style="z-index: 9999;">

                <c:forEach items="${ulList7}" var="lis">
                  <li class="long hvr-rectangle-out"><a href="${lis.href}">${lis.li}</a></li>
                </c:forEach>

              </ul>
            </div>
          </li>
          <li>
            <a href="javascript:void(0);" target="_self">
              <b>科室导航</b>
              <p>Department</p>
            </a>
            <div class="child-menu">
              <span class="top-boder"></span>
              <ul style="z-index: 9999;">

                <c:forEach items="${limit7_7}" var="lis">
                  <li class="hvr-rectangle-out"><a href="${lis.href}">${lis.li}</a></li>
                </c:forEach>

              </ul>
            </div></li>
          <li>
            <a href="doctor-team.html" >
              <b>医生团队</b>
              <p>Doctor Team</p>
            </a>
          </li>
          <li>
            <a href="javascript:void(0);" target="_self">
              <b>院务公开</b>
              <p>Hospital Affairs</p>
            </a>
            <div class="child-menu">
              <span class="top-boder"></span>
              <ul style="z-index: 9999;">
                <li class="long hvr-rectangle-out"><a href="XueShu.html">学术研究</a></li>
                <li class="long hvr-rectangle-out"><a href="JianDang.html">党建工作</a></li>
                <li class="long hvr-rectangle-out"><a href="/columns/gonghuihuodong/">工会活动</a></li>
              </ul>
            </div>
          </li>
          <li>
            <a href="javascript:void(0);" target="_self">
              <b>就医指南</b>
              <p>Medical Guide</p>
            </a>
            <div class="child-menu">
              <span class="top-boder"></span>
              <ul style="z-index: 9999;">
                <li class="long hvr-rectangle-out"><a href="Guides.html">门诊预约</a></li>
                <li class="long hvr-rectangle-out"><a href="/post/159.html">医保指南</a></li>
                <li class="long hvr-rectangle-out"><a href="/post/162.html">就医流程</a></li>
                <li class="long hvr-rectangle-out"><a href="/post/175.html">就诊误区</a></li>
                <li class="long hvr-rectangle-out"><a href="/post/168.html">出入院须知</a></li>
                <li class="long hvr-rectangle-out"><a href="/post/229.html">交通路线</a></li>
              </ul>
            </div>
          </li>

        </ul>
        <a class="a-last  fr" href="ZiXun.html" target="_self" id="a_last_fr">
          免费咨询
          <span><i></i>寻医问药，有问必答</span>
        </a>
      </div>
    </div>

  </div>
  <!--	<div style="width: 100%;height: 500px;color: red;"></div>-->

  <!--中部广告部分-->
  <div class="banner">
    <div class="banner-bar">
      <ul>
        <li>

          <c:forEach items="${ratation}" var="pics">
            <img src="${pics.src}" alt="${pics.alt}">
          </c:forEach>

        </li>
      </ul>
    </div>
    <div class="banner-tab">
      <ul>

        <c:forEach items="${ratation}" var="pics">
          <li class="">${pics.alt}<span>${pics.eng}</span></li>
        </c:forEach>

      </ul>
    </div>
  </div>

  <script type="text/javascript">
      $('.banner').slide({
          mainCell:'.banner-bar ul li',
          titCell:'.banner-tab ul li',
          autoPlay:true,
          trigger:'click'
      });
  </script>


  <!--导航服务/今日喜报栏-->

  <div class="mix-nav">
    <div class="mixnav-left">
      <ul>
        <li class="mix-left-one">
          <a href="#"></a>
          <span>
								<b>准妈妈学院</b>
								<p>Maternal School</p>
							</span>
        </li>
        <li class="mix-left-lone">
          <span></span>
          <b>VIP服务</b>
        </li>
        <li class="mix-left-mone">
          <span></span>
          <b>产后维养</b>
        </li>
      </ul>
      <ul>
        <li class="mix-left-one">
          <a class="a1-style" href="#"></a>
          <span>
								<b>医保指南</b>
								<p>Medical Insurance</p>
							</span>
        </li>
        <li class="mix-left-lone">
          <span></span>
          <b>就医流程</b>
        </li>
        <li class="mix-left-mone">
          <span></span>
          <b>注意事项</b>
        </li>
      </ul>
      <ul>
        <li class="mix-left-one">
          <a class="a2-style href=" ></a>
          <span>
								<b>交通路线</b>
								<p>Traffic Routes</p>
							</span>
        </li>
        <li class="mix-left-lone">
          <span></span>
          <b>楼层分布</b>
        </li>
        <li class="mix-left-mone">
          <span></span>
          <b>医院环境</b>
        </li>
      </ul>
    </div>
    <div class="mixnav-right">
      <div class="xb-box">
        <span>今日喜报</span>
        <div class="xb-box-b">
          <div class="xb-list">
            <ul>

              <c:forEach items="${newsList}" var="news">
                <li>
                  <a href="${news.infohref}">恭喜 ${news.parents} 夫妇</a>
                  <b>喜得${news.sex.sex} 重${news.weight}KG</b>
                </li>
              </c:forEach>

            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="nbsp"></div>
  <!--新闻内容部分——华西新闻中心-->
  <div class="news-h">
    <div class="news-title">
      <h3>项目交流中心</h3>
      <p>以项目为中心，持续改进组员关系与项目质量</p>
    </div>
    <div class="news-top">
      <div class="news-list">
        <ul>

          <c:forEach items="${three}" var="parts">
            <li>
              <figure>
                <div>
                  <img src="${parts.src}">
                  <em>推荐</em>
                </div>
                <div class="figcaption-list">
                  <h3>${parts.alt}</h3>
                  <figcaption>${parts.eng}</figcaption>
                </div>
              </figure>
            </li>
          </c:forEach>

        </ul>
      </div>
    </div>
    <div class="news-bottom" style="height: auto">
      <div class="news-bottom-bor">
        <i class="h1"></i>
        <i class="h2"></i>
        <div class="news-bottom-web">

          <c:forEach items="${p9List}" var="p9s">
            <div>
              <em></em>
              <p>${p9s.title}</p>
              <span>${p9s.content}</span>
              <i>${p9s.time}</i>
            </div>
          </c:forEach>

        </div>
      </div>
    </div>
  </div>

  </div>

  <div id="hbox" style="clear: both"></div>
  <div class="news-foot"><a id="more">查看更多</a></div>

  <script type="text/javascript">
      $(function () {
          $("#more").click(function () {
              var box = $(".news-bottom-web");
              $("#hbox").height(150);
              $(".news-foot").hide();
              if(box.height >= 600){
                  box.height(600);
              }else{
                  box.height(box.width() + 200);
              }
          })
      })
  </script>

  <!--新闻图文部分——华西名医堂 -->
  <div class="arzt">
    <p>华西名医堂</p>
    <i>汇聚三甲妇产专家 造福重庆妇婴健康</i>
  </div>
  <div class="arzt-list">
    <div class="arzt-tu">
      <ul>
        <li>
          <img src="img/artz-t1.jpg">
          <b>卞度宏&nbsp;&nbsp;教授<a>坐诊时间：星期一（上午)</a></b>
        </li>
        <li>
          <img src="img/artz-t2.jpg">
          <b>吴锦华&nbsp;&nbsp;教授<a>坐诊时间：星期二、三（上午)</a></b>
        </li>
        <li>
          <img src="img/artz-t3.jpg">
          <b>郭春燕&nbsp;&nbsp;教授<a>坐诊时间：星期六（上午)</a></b>
        </li>
        <li>
          <img src="img/artz-t4.jpg">
          <b>邱伟修&nbsp;&nbsp;博士<a>坐诊时间：9月17日-9月18日</a></b>
        </li>
      </ul>
    </div>
    <div class="arzt-tu-list">
      <ul>
        <li>
          <img src="img/artz-t5.jpg">
          <a>卞度宏教授是我国著名妇产专家、国务院特殊津贴专家、西南地区妇产科泰斗、重医附一院名老专家，
            常年支持华西妇产医院发展，每周坚持来院查房会诊，并于2017年起，每周一上午坐诊华西名医门诊，
            为市民提供妇产科疑难杂症的诊治。
            <i></i>
            <em>咨询预约</em></a>
        </li>
        <li>
          <img src="img/artz-t6.jpg">
          <a class="list-2">景锦华教授是我国知名妇产专家、西南腹腔镜手术带头人、市急救中心妇产科原主任，
            每周二、三上午坐诊华西名医门诊
            <i></i>
            <em>咨询预约</em></a>
        </li>
        <li>
          <img src="img/artz-t7.jpg">
          <a class="list-2">郭春燕主任是我市知名妇产专家，市急救中心妇产科主任、华西妇产疑难病会诊专家，每周六上午坐诊华西名医门诊
            <i></i>
            <em>咨询预约</em></a>
        </li>
      </ul>
      <ul class="twlist-2">
        <li>
          <img src="img/artz-t8.jpg">
          <a>邱伟修博士是我国著名妇产超声专家、台北中山医院超声主任、明星小S御用专家，每月坐诊华西超声影像中心
            <i></i>
            <em>咨询预约</em></a>
        </li>
        <li>
          <img src="img/artz-t9.jpg">
          <a>黄堂菊主任现为华西产科住院部主任,Fotona私密维养中心主任,专家技术委员会主任,
            擅长妇产危、急、重病人诊治
            <i></i>
            <em>咨询预约</em></a>
        </li>
        <li>
          <img src="img/artz-t10.jpg">
          <a class="list-3">龚倩主任是我市知名不孕不育专家,目前担任华西不孕不育科门诊主任,华西不孕不育研究所主任,
            华西妈妈俱乐部主任.从医20年,经其诊治并成功怀孕的患者近万人，多次应重庆电视台邀请开展健康电视讲座，
            擅长诊治各类不孕症和内分泌疾病。
            <i></i>
            <em>咨询预约</em></a>
        </li>
      </ul>
    </div>
  </div>
  <!--各项医院介绍/预约系统-->
  <div class="mix-count">
    <div class="mix-count-left">
      <div class="mix-count-left-tab">
        <ul>
          <li>
            <i> </i>
            <a>华西不孕不育研究所</a>
          </li>
          <li>
            <i> </i>
            <a>华西内分泌医学研究院</a>
          </li>
          <li>
            <i> </i>
            <a>德国FOTONA私密维养中心</a>
          </li>
          <li>
            <i> </i>
            <a>华西临床医学检验中心</a>
          </li>
          <li>
            <i> </i>
            <a>华西台式月子养护中心</a>
          </li>
        </ul>
      </div>
      <div class="mix-count-left-tw">
        <ul>
          <li id="wm">
            <img src="img/mix-t1.jpg">
            <a>详细了解 &gt;&gt;</a>
          </li>
          <li>
            <img src="img/mix-t2.jpg">
            <a>详细了解 &gt;&gt;</a>
          </li>
          <li>
            <img src="img/mix-t3.jpg">
            <a>详细了解 &gt;&gt;</a>
          </li>
          <li>
            <img src="img/mix-t4.jpg">
            <a>详细了解 &gt;&gt;</a>
          </li>
          <li>
            <img src="img/mix-t5.jpg">
            <a>详细了解 &gt;&gt;</a>
          </li>
        </ul>
      </div>
    </div>

    <script type="text/javascript">
        $('.mix-count-left').slide({
            mainCell:'.mix-count-left-tw ul',
            titCell:'.mix-count-left-tab ul li',
            autoPlay:true,

        });

    </script>





    <div class="mix-count-right">
      <div class="mix-count-right-box">
        <div class="ksyy">
          <i></i>
          <h2>快速预约系统</h2>
        </div>
        <form class="form-list">
          <input type="text" placeholder="您的姓名" required="">
          <input type="tel" placeholder="您的手机号" required="">
          <select>
            <option>请选择科室</option>
            <option value="妇科">妇科</option>
            <option value="产科">产科</option>
            <option value="儿科">儿科</option>
            <option value="计划生育">计划生育</option>
            <option value="私密整形">私密整形</option>
            <option value="不孕不育">不孕不育</option>
            <option value="内分泌科">内分泌科</option>
            <option value="乳腺科">乳腺科</option>
            <option value="泌尿外科">泌尿外科</option>
            <option value="肛肠科">肛肠科</option>
            <option value="中医科">中医科</option>
            <option value="康复理疗科">康复理疗科</option>
            <option value="内科">内科</option>
          </select>
          <!--<input type="datetime-local" name="date-name">-->
          <select class="date-name">
            <option>年</option>
            <option value="2018">2018</option>
            <option value="2017">2017</option>
            <option value="2016">2016</option>
            <option value="2015">2015</option>
            <option value="2014">2014</option>
            <option value="2013">2013</option>
            <option value="2012">2012</option>
            <option value="2011">2011</option>
            <option value="2010">2010</option>
          </select>
          <select class="date-name">
            <option>月</option>
            <option value="12">12</option>
            <option value="11">11</option>
            <option value="10">10</option>
            <option value="9">9</option>
            <option value="8">8</option>
            <option value="7">7</option>
            <option value="6">6</option>
            <option value="5">5</option>
            <option value="4">4</option>
            <option value="3">3</option>
            <option value="2">2</option>
            <option value="1">1</option>
          </select>
          <select class="date-name">
            <option>日</option>
            <option value="30">30</option>
            <option value="29">29</option>
            <option value="28">28</option>
            <option value="27">27</option>
            <option value="26">26</option>
            <option value="25">25</option>
            <option value="24">24</option>
            <option value="23">23</option>
            <option value="22">22</option>
            <option value="21">21</option>
            <option value="20">20</option>
            <option value="19">19</option>
            <option value="18">18</option>
            <option value="17">17</option>
            <option value="16">16</option>
            <option value="15">15</option>
            <option value="14">14</option>
            <option value="13">13</option>
            <option value="12">12</option>
            <option value="11">11</option>
            <option value="10">10</option>
            <option value="9">9</option>
            <option value="8">8</option>
            <option value="7">7</option>
            <option value="6">6</option>
            <option value="5">5</option>
            <option value="4">4</option>
            <option value="3">3</option>
            <option value="2">2</option>
            <option value="1">1</option>
          </select>
          <input class="btn" type="submit" value="一健预约">
        </form>
        <a>*稍后工作人员将与您联系确认预约结果，请保持电话畅通。</a>
      </div>
    </div>
  </div>
  <!--专题栏目-->
  <div class="special">
    <div class="special-column">
      <ul>
        <li>
          <i></i>
          <p>学习贯彻<em>十九大精神</em></p>
          <span>党建专题</span>
          <img src="img/special_p1.jpg">
        </li>
        <li>
          <i></i>
          <p>努力让百姓<em>好看病    看好病</em></p>
          <span>医改专题</span>
          <img src="img/special_p2.jpg">
        </li>
        <li>
          <i></i>
          <p>争先创优<em>全心为民</em></p>
          <span>创优专题</span>
          <img src="img/special_p3.jpg">
        </li>
      </ul>
    </div>
  </div>





  <!--
      come footer start
  -->
  <div class="footer">
    <div class="footer_nav">
      <ul>
        <li class="hvr-shutter-out-horizontal"><a href="JianJie.html">华西简介</a></li>
        <li class="hvr-shutter-out-horizontal"><a href="doctor-team.html">医生团队</a></li>
        <li class="hvr-shutter-out-horizontal"><a href="JianDang.html">党建工作</a></li>
        <li class="hvr-shutter-out-horizontal"><a href="Guides.html">医保指南</a></li>
        <li class="hvr-shutter-out-horizontal"><a href="Guides.html">门诊预约</a></li>
      </ul>

    </div>
    <div class="footer-center">
      <div class="logo_fl"><img src="img/QQ图片20180921120140.jpg"><b>重庆华西妇产医院</b><p>重庆市急救医疗中心医联体医院</p></div>
      <div class="info_fl">
        <p>健康热线：023/68067777　　QQ咨询：8008888120</p>
        <p>医院地址：重庆市九龙坡区渝州路37号（彩电中心对面）</p>
        <p>温馨提醒：本网站信息仅供健康参考，具体诊疗请遵照经治医师的建议。</p>
        <p>渝公安网备：50010702500800 渝ICP备12004139号-2</p>
      </div>
      <div class="clear"></div>
      <div class="footer-bottom">
        <img class="footer_logo" src="img/footerlogo.png" usemap="#footerlogo">
        <map name="footerlogo" id="footerlogo" class="footerlogo">
          <area shape="rect" coords="0,0,185,65" href="http://www.nhfpc.gov.cn/" target="_blank">
          <area shape="rect" coords="185,0,360,65" href="http://www.nhfpc.gov.cn/" target="_blank">
          <area shape="rect" coords="360,0,570,65" href="http://www.cqcdc.org/Index.shtml" target="_blank">
          <area shape="rect" coords="570,0,750,65" href="http://www.nhfpc.gov.cn/" target="_blank">
          <area shape="rect" coords="750,0,930,65" href="http://www.cmwa.org.cn/" target="_blank">
          <area shape="rect" coords="930,0,1100,65" href="http://www.cqma.cn/" target="_blank">
        </map>

      </div>

    </div>
    <div class="right_slide_nav">
      <ul>
        <li><a class="ico_yygh" href="ZiXun.html">在线咨询</a></li>
        <li><a class="ico_yygh" href="ZiXun.html">预约挂号</a></li>
        <li><a class="ico_yygh" href="#">免费电话</a></li>
        <li><a class="ico_yygh" href="ZiXun.html">QQ咨询</a></li>
        <li><a class="ico_yygh" href="#">官方微信</a></li>
        <li><a class="ico_yygh" href="#">院长信箱</a></li>
        <li><a class="ico_yygh" href="#">意见调查</a></li>

      </ul>
    </div>



  </div>
  </body>
</html>
