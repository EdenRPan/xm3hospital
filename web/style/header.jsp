<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/3
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a class="a-first fl" href="shouye.html">
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

    <!--右侧*固定*导航开始-->
    <div class="right_slide_nav">
        <ul>
            <li>
                <a class="ico_yygh" href="#">在线咨询</a>
            </li>
            <li>
                <a class="ico_yygh" href="#">预约挂号</a>

                <div class="nav_register">
                    <h3>快速预约系统</h3>
                    <form class="form_yy">
                        <input class="yy_name" type="text" name="realname" placeholder="您的姓名" />
                        <input class="yy_mobile" type="tel" name="realname" placeholder="您的手机号" />
                        <select id="yy_jzks" class="yy_jzks" name="yy_jzks">
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
                        <!--<div id="yy-date">-->
                        <select id="yy_date_year" name="yy_date_year">
                            <option>年</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                        </select>
                        <select id="yy_date_month" name="yy_date_month">
                            <option>月</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <select id="yy_date_day" name="yy_date_day">
                            <option>日</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                        </select>
                        <!--</div>-->
                        <button class="yy_submit_hvr_box_shadow_inset" type="button">一键预约</button>
                        <p>* 稍后工作人员将与您联系确认预约结果，请保持电话畅通。</p>
                    </form>
                </div>

            </li>
            <li>
                <a class="ico_yygh" href="#">免费电话</a>
                <div class="dial">
                    <input id="dial-mobile" type="text" name="" value="请输入您的联系电话">
                    <button onclick="hxcallbyid('dial-mobile')" type="button">免费回电</button>
                </div>
            </li>
            <li>
                <a class="ico_yygh" href="#">QQ咨询</a>
            </li>
            <li>
                <a class="ico_yygh" href="#">官方微信</a>
                <div class="qrcode">
                    <img src="img/qrcode_p1.jpg" />
                    <img src="img/qrcode_p2.jpg" />
                    <img src="img/qrcode_p3.jpg" />
                </div>
            </li>
            <li>
                <a class="ico_yygh" href="#">院长信箱</a>
            </li>
            <li>
                <a class="ico_yygh" href="#">意见调查</a>
            </li>

        </ul>
    </div>

    <div style="width: 100%;height: 30px;color: red;"></div>
    <!--右侧固定导航结束-->

</div>
