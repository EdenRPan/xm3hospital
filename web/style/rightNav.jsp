<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2019/3/3
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="aside_fr" style="position: relative;">
    <div class="aside_docter">
        <h3 class="hxmy">华西名医</h3>
        <div class="tempwrap">
            <ul class="aside-doctor-cont" style="width: 1428px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -714px;">
                <li class="clone" style="float: left; width: 238px;">
                    <a href="#">
                        <img src="img/1-1P519124I3b5.jpg" alt="">
                        <h3>卞度宏<span>主任医师/教授</span></h3>
                        <p class="title">重医附一院妇产科教授 　　　　</p>
                        <p>卞度宏1928年5月出生于湖南，1949年底参加上海市郊区血吸虫防治委员会，为解放军第12兵团治疗血吸虫.....</p>
                    </a>
                </li>
                <li style="float: left; width: 238px;">
                    <a href="#">
                        <img src="img/1-1P519124913562.jpg" alt="">
                        <h3>郭春燕<span>副主任医师/副教授</span></h3>
                        <p class="title">重庆市急救中心妇产科主任　</p>
                        <p>妇产科副主任医师，大学本科毕业，从事妇产科临床工作29年。任《中华现代妇产科杂志》及《中华实.....</p>
                    </a>
                </li>
                <li style="float: left; width: 238px;">
                    <a href="#">
                        <img src="img/1-1P5221632230-L.jpg" alt="">
                        <h3>邱伟修<span>医学博士</span></h3>
                        <p class="title">台湾中心医院妇产科超声主任</p>
                        <p>台湾国立阳明大学生物医学影像暨放射科学系博士，我国台湾著名妇产超声专家，明星小S（徐熙娣）.....</p>
                    </a>
                </li>
                <li style="float: left; width: 238px;">
                    <a href="#">
                        <img src="img/1-1P51ZSH2956.jpg" alt="">
                        <h3>景锦华<span>主任医师/教授</span></h3>
                        <p class="title">重庆市急救医疗中心妇产科原主任</p>
                        <p>重庆市急救医疗中心妇产科原主任，从事临床工作40余年，在1985年率先开展显微外科技术应用到输卵管.....</p>
                    </a>
                </li>
                <li style="float: left; width: 238px;">
                    <a href="#">
                        <img src="img/1-1P519124I3b5.jpg" alt="">
                        <h3>卞度宏<span>主任医师/教授</span></h3>
                        <p class="title">重医附一院妇产科教授 　　　　</p>
                        <p>卞度宏1928年5月出生于湖南，1949年底参加上海市郊区血吸虫防治委员会，为解放军第12兵团治疗血吸虫.....</p>
                    </a>
                </li>

                <li class="" style="float: left; width: 238px;">
                    <a href="#">
                        <img src="img/1-1P519124913562.jpg" alt="">
                        <h3>郭春燕<span>副主任医师/副教授</span></h3>
                        <p class="title">重庆市急救中心妇产科主任　</p>
                        <p>妇产科副主任医师，大学本科毕业，从事妇产科临床工作29年。任《中华现代妇产科杂志》及《中华实.....</p>
                    </a>a
                </li>
            </ul>
        </div>
        <div class="aside-doctor-handle" style="position: absolute; left: 18px;">
            <span class="prev posileft">&lt;</span>
            <span class="next posiright">&gt;</span>
        </div>
    </div>
    <script type="text/javascript">
        $(".aside_docter").slide({
            mainCell: ".aside-doctor-cont",
            effect: "leftLoop",
            vis: "auto",
            autoPlay: true,
            trigger: "click"
        });
        //jQuery(".fullSlide").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"leftLoop", vis:"auto", autoPlay:true, autoPage:true, trigger:"click" });
    </script>

    <div class="aside_adress">
        <h3>来院地图</h3>
        <div class="aside_adress_box">
            <p>地址：重庆市九龙坡区渝州路37号</p>
            <a class="xxadress" href="#"></a>
        </div>
    </div>
    <div class="aside_register">
        <h3>快速预约系统</h3>
        <form class="form_yy">
            <input class="yy_name" type="text" name="realname" value="您的姓名" />
            <input class="yy_mobile" type="tel" name="realname" value="您的手机号" />
            <select id="yy-jzks" name="yy_jzks">
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
            <div id="yy-date">
                <select id="yy-date-year" name="yy_date_year">
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
                <select id="yy-date-month" name="yy_date_month">
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
                <select id="yy-date-day" name="yy_date_day">
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
            </div>
            <button class="yy-submit-hvr-box-shadow-inset" type="button">一键预约</button>
            <p>* 稍后工作人员将与您联系确认预约结果，请保持电话畅通。</p>
        </form>

    </div>
</div>
