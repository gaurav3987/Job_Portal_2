<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <!DOCTYPE html>
    <html lang="en" dir="ltr">

    <head>
      <meta charset="UTF-8">
      <title>ABC Jobs Pte Ltd</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');

        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
          font-family: 'Poppins', sans-serif;
        }

        body {
          height: 145vh;
          display: flex;
          justify-content: center;
          align-items: center;
          padding: 10px;
          background: linear-gradient(135deg, #7579ff, #b224ef);
        }

        .container {
          max-width: 700px;
          width: 100%;
          background-color: #fff;
          padding: 25px 30px;
          border-radius: 5px;
          box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
        }

        .container .title {
          font-size: 25px;
          font-weight: 500;
          position: relative;
        }

        .container .title::before {
          content: "";
          position: absolute;
          left: 0;
          bottom: 0;
          height: 3px;
          width: 30px;
          border-radius: 5px;
          background: linear-gradient(135deg, #7579ff, #b224ef);
        }

        .content form .user-details {
          display: flex;
          flex-wrap: wrap;
          justify-content: space-between;
          margin: 20px 0 -10px 0;
        }

        form .user-details .input-box {
          margin-bottom: 15px;
          width: calc(100% / 2 - 20px);
        }

        form .input-box span.details {
          display: block;
          font-weight: 500;
          margin-bottom: 5px;
        }

        .user-details .input-box input {
          height: 45px;
          width: 100%;
          outline: none;
          font-size: 16px;
          border-radius: 5px;
          padding-left: 15px;
          border: 1px solid #ccc;
          border-bottom-width: 2px;
          transition: all 0.9s ease;
        }

        .user-details .input-box input:focus,
        .user-details .input-box input:valid {
          border-color: #9d1dd4;
        }

        form .gender-details .gender-title {
          font-size: 20px;
          font-weight: 500;
        }

        form .category {
          display: flex;
          width: 80%;
          margin: 14px 0;
          justify-content: space-between;
        }

        form .category label {
          display: flex;
          align-items: center;
          cursor: pointer;
        }

        form .category label .dot {
          height: 18px;
          width: 18px;
          border-radius: 50%;
          margin-right: 10px;
          background: #d9d9d9;
          border: 5px solid transparent;
          transition: all 0.3s ease;
        }

        #dot-1:checked~.category label .one,
        #dot-2:checked~.category label .two,
        #dot-3:checked~.category label .three {
          background: #9b59b6;
          border-color: #d9d9d9;
        }

        form input[type="radio"] {
          display: none;
        }

        form .button {
          height: 45px;
          margin: 35px 0
        }

        form .button input {
          height: 100%;
          width: 100%;
          border-radius: 5px;
          border: none;
          color: #fff;
          font-size: 18px;
          font-weight: 500;
          letter-spacing: 1px;
          cursor: pointer;
          transition: all 0.3s ease;
          background: linear-gradient(135deg, #b224ef, #7579ff);
        }

        form .button input:hover {
          /* transform: scale(0.99); */
          background: linear-gradient(-135deg, #b224ef, #7579ff);
        }

        @media(max-width: 584px) {
          .container {
            max-width: 100%;
          }

          form .user-details .input-box {
            margin-bottom: 15px;
            width: 100%;
          }

          form .category {
            width: 100%;
          }

          .content form .user-details {
            max-height: 300px;
            overflow-y: scroll;
          }

          .user-details::-webkit-scrollbar {
            width: 5px;
          }
        }

        @media(max-width: 459px) {
          .container .content .category {
            flex-direction: column;
          }
        }
        .signup_link{
  margin: 30px 0;
  text-align: center;
  font-size: 16px;
  color: #252222;
}
.signup_link a{
  color: #b224ef;
  text-decoration: none;
}
.signup_link a:hover{
  text-decoration: underline;
}

@import url('https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap');

button:focus,
input:focus{
  outline: none;
  box-shadow: none;
}
a,
a:hover{
  text-decoration: none;
}

body{
  font-family: 'Roboto', sans-serif;
}

/*----------------------*/


.block {
    position: absolute;
    left: 0;
    top: 0;
}
.slidercaptcha {
    margin: 0 auto;
    width: 100%;
    height: 210px;
    border-radius: 4px;
    margin-top: 0;
}

.slidercaptcha canvas:first-child {
    border-radius: 5px;
    border: 1px solid #e6e8eb;
}

.sliderContainer {
    position: relative;
    text-align: center;
    line-height: 40px;
    background: #f7f9fa;
    color: #45494c;
    border-radius: 2px;
}

.sliderbg {
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    background-color: #f7f9fa;
    height: 40px;
    border-radius: 2px;
    border: 1px solid #e6e8eb;
}

.sliderContainer_active .slider {
    top: -1px;
    border: 1px solid #1991FA;
}

.sliderContainer_active .sliderMask {
    border-width: 1px 0 1px 1px;
}

.sliderContainer_success .slider {
        top: -1px;
    border: 1px solid #02c076;
    background-color: #02c076 !important;
    color: #fff;
}

.sliderContainer_success .sliderMask {
    border: 1px solid #52CCBA;
    border-width: 1px 0 1px 1px;
    background-color: #D2F4EF;
}

.sliderContainer_success .sliderIcon:before {
    content: "\f00c";
}

.sliderContainer_fail .slider {
    top: -1px;
    border: 1px solid #f35c59;
    background-color: #f35c59;
    color: #fff;
}

.sliderContainer_fail .sliderMask {
    border: 1px solid #f35c59;
    background-color: #f7dcdd;
    border-width: 1px 0 1px 1px;
}

.sliderContainer_fail .sliderIcon:before {
    content: "\f00d";
}

.sliderContainer_active .sliderText, .sliderContainer_success .sliderText, .sliderContainer_fail .sliderText {
    display: none;
}

.sliderMask {
        position: absolute;
    left: 0;
    top: 0;
    height: 40px;
    border: 0 solid #d1e9fe;
    background: #d1e9fe;    
    border-radius: 2px;
}

.slider {
    position: absolute;
    top: 0;
    left: 0;
    width: 40px;
    height: 40px;
    background: #ba60e5;
    box-shadow: 0 0 3px rgba(0, 0, 0, 0.3);
    cursor: pointer;
    transition: background .2s linear;
    border-radius: 2px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.slider:hover {
        background: #8f00fb;
    color: #fff;
    border-color: #8f00fb;
}

.slider:hover .sliderIcon {
    background-position: 0 -13px;
}

.sliderText {
    position: relative;
}

.sliderIcon {
}

.refreshIcon {
        position: absolute;
    right: 5px;
    top: 5px;
    cursor: pointer;
    padding: 6px;
    color: #fff;
    background-color: #ae4cff;
    font-size: 14px;
    border-radius: 50px;
}

.refreshIcon:hover {
    color: #fff;
}




      </style>
    </head>

    <body>
      <div class="container">
        <div class="title">Registration</div>
        <div class="content">
          <sf:form action="myreg" method="post" modelAttribute="vajresh">
            <div class="user-details">
              <div class="input-box">
                <span class="details">First Name</span>
                <sf:input path="first_name" type="text" name="name" required="required" />
              </div>
              <div class="input-box">
                <span class="details">Last Name</span>
                <sf:input path="last_name" type="text" name="re_pass" required="required" />
              </div>
              <div class="input-box">
                <span class="details">Username</span>
                <sf:input path="userName" type="text" name="contact" required="required" />
              </div>
              <div class="input-box">
                <span class="details">Email</span>
                <sf:input path="email" type="email" name="email" required="required" />
              </div>
              <div class="input-box">
                <span class="details">Password</span>
                <sf:input path="password" type="password" name="pass" required="required" />
              </div>
              <div class="input-box">
                <span class="details">Phone Number</span>
                <sf:input path="phone" type="text" name="contact" required="required" />
              </div>
              <div class="input-box">
                <span class="details">Country</span>
                <sf:input path="Country" type="text" name="contact" required="required" />
              </div>
            </div>
            <div class="container-fluid">
              <div class="row justify-content-center">
                <div class="col-md-4 mb-5">
                  <div class="slidercaptcha card">
                    <div class="card-header">
                      <span>Please complete security verification!</span>
                    </div>
                    <div class="card-body">
                      <div id="captcha"></div>
                    </div>
                  </div>
                </div>
            
              </div>
            </div>
            <div class="signup_link">
              Already a member? <a href="login">Login</a>
            </div>
            <div class="button">
              <input type="submit" name="signup" value="Register" />
            </div>
          </sf:form>
        
        </div>
        </div>
      </div>
    <script>
      //---slider-captcha-js--
        (function () { "use strict"; function u(n) { var i = document.getElementById(n.id), r = typeof n == "object" && n; return new t(i, r) } var r = function () { var u = arguments.length, n = arguments[0] || {}, t, i, r; for (typeof n != "object" && typeof n != "function" && (n = {}), u == 1 && (n = this, t--), t = 1; t < u; t++) { i = arguments[t]; for (r in i) Object.prototype.hasOwnProperty.call(i, r) && (n[r] = i[r]) } return n }, i = function (n) { return typeof n == "function" && typeof n.nodeType != "number" }, t = function (n, i) { this.$element = n; this.options = r({}, t.DEFAULTS, i); this.$element.style.position = "relative"; this.$element.style.width = this.options.width + "px"; this.$element.style.margin = "0 auto"; this.init() }, n; t.VERSION = "1.0"; t.Author = "argo@163.com"; t.DEFAULTS = { width: 280, height: 155, PI: Math.PI, sliderL: 42, sliderR: 9, offset: 5, loadingText: "æ­£åœ¨åŠ è½½ä¸­...", failedText: "å†è¯•ä¸€æ¬¡", barText: "å‘å³æ»‘åŠ¨å¡«å……æ‹¼å›¾", repeatIcon: "fa fa-repeat", maxLoadCount: 3, localImages: function () { return "images/Pic" + Math.round(Math.random() * 4) + ".jpg" }, verify: function (n, t) { var i = !1; return $.ajax({ url: t, data: { datas: JSON.stringify(n) }, dataType: "json", type: "post", async: !1, success: function (n) { i = JSON.stringify(n); console.log("è¿”å›žç»“æžœï¼š" + i) } }), i }, remoteUrl: null }; window.sliderCaptcha = u; window.sliderCaptcha.Constructor = t; n = t.prototype; n.init = function () { this.initDOM(); this.initImg(); this.bindEvents() }; n.initDOM = function () { var n = function (n, t) { var i = document.createElement(n); return i.className = t, i }, v = function (n, t) { var i = document.createElement("canvas"); return i.width = n, i.height = t, i }, f = v(this.options.width - 2, this.options.height), e = f.cloneNode(!0), t = n("div", "sliderContainer"), l = n("i", "refreshIcon " + this.options.repeatIcon), o = n("div", "sliderMask"), y = n("div", "sliderbg"), s = n("div", "slider"), a = n("i", "fa fa-arrow-right sliderIcon"), h = n("span", "sliderText"), u, c; e.className = "block"; h.innerHTML = this.options.barText; u = this.$element; u.appendChild(f); u.appendChild(l); u.appendChild(e); s.appendChild(a); o.appendChild(s); t.appendChild(y); t.appendChild(o); t.appendChild(h); u.appendChild(t); c = { canvas: f, block: e, sliderContainer: t, refreshIcon: l, slider: s, sliderMask: o, sliderIcon: a, text: h, canvasCtx: f.getContext("2d"), blockCtx: e.getContext("2d") }; i(Object.assign) ? Object.assign(this, c) : r(this, c) }; n.initImg = function () { var n = this, f = window.navigator.userAgent.indexOf("Trident") > -1, r = this.options.sliderL + this.options.sliderR * 2 + 3, e = function (t, i) { var r = n.options.sliderL, o = n.options.sliderR, s = n.options.PI, u = n.x, e = n.y; t.beginPath(); t.moveTo(u, e); t.arc(u + r / 2, e - o + 2, o, .72 * s, 2.26 * s); t.lineTo(u + r, e); t.arc(u + r + o - 2, e + r / 2, o, 1.21 * s, 2.78 * s); t.lineTo(u + r, e + r); t.lineTo(u, e + r); t.arc(u + o - 2, e + r / 2, o + .4, 2.76 * s, 1.24 * s, !0); t.lineTo(u, e); t.lineWidth = 2; t.fillStyle = "rgba(255, 255, 255, 0.7)"; t.strokeStyle = "rgba(255, 255, 255, 0.7)"; t.stroke(); t[i](); t.globalCompositeOperation = f ? "xor" : "destination-over" }, o = function (n, t) { return Math.round(Math.random() * (t - n) + n) }, t = new Image, u; t.crossOrigin = "Anonymous"; u = 0; t.onload = function () { n.x = o(r + 10, n.options.width - (r + 10)); n.y = o(10 + n.options.sliderR * 2, n.options.height - (r + 10)); e(n.canvasCtx, "fill"); e(n.blockCtx, "clip"); n.canvasCtx.drawImage(t, 0, 0, n.options.width - 2, n.options.height); n.blockCtx.drawImage(t, 0, 0, n.options.width - 2, n.options.height); var i = n.y - n.options.sliderR * 2 - 1, u = n.blockCtx.getImageData(n.x - 3, i, r, r); n.block.width = r; n.blockCtx.putImageData(u, 0, i + 1); n.text.textContent = n.text.getAttribute("data-text") }; t.onerror = function () { if (u++, window.location.protocol === "file:" && (u = n.options.maxLoadCount, console.error("can't load pic resource file from File protocal. Please try http or https")), u >= n.options.maxLoadCount) { n.text.textContent = "åŠ è½½å¤±è´¥"; n.classList.add("text-danger"); return } t.src = n.options.localImages() }; t.setSrc = function () { var r = "", e; u = 0; n.text.classList.remove("text-danger"); i(n.options.setSrc) && (r = n.options.setSrc()); r && r !== "" || (r = "https://picsum.photos/" + n.options.width + "/" + n.options.height + "/?image=" + Math.round(Math.random() * 20)); f ? (e = new XMLHttpRequest, e.onloadend = function (n) { var i = new FileReader; i.readAsDataURL(n.target.response); i.onloadend = function (n) { t.src = n.target.result } }, e.open("GET", r), e.responseType = "blob", e.send()) : t.src = r }; t.setSrc(); this.text.setAttribute("data-text", this.options.barText); this.text.textContent = this.options.loadingText; this.img = t }; n.clean = function () { this.canvasCtx.clearRect(0, 0, this.options.width, this.options.height); this.blockCtx.clearRect(0, 0, this.options.width, this.options.height); this.block.width = this.options.width }; n.bindEvents = function () { var n = this; this.$element.addEventListener("selectstart", function () { return !1 }); this.refreshIcon.addEventListener("click", function () { n.text.textContent = n.options.barText; n.reset(); i(n.options.onRefresh) && n.options.onRefresh.call(n.$element) }); var r, u, f = [], t = !1, e = function (i) { n.text.classList.contains("text-danger") || (r = i.clientX || i.touches[0].clientX, u = i.clientY || i.touches[0].clientY, t = !0) }, o = function (i) { var o; if (!t) return !1; var s = i.clientX || i.touches[0].clientX, h = i.clientY || i.touches[0].clientY, e = s - r, c = h - u; if (e < 0 || e + 40 > n.options.width) return !1; n.slider.style.left = e - 1 + "px"; o = (n.options.width - 60) / (n.options.width - 40) * e; n.block.style.left = o + "px"; n.sliderContainer.classList.add("sliderContainer_active"); n.sliderMask.style.width = e + 4 + "px"; f.push(Math.round(c)) }, s = function (u) { var o, e; if (!t || (t = !1, o = u.clientX || u.changedTouches[0].clientX, o === r)) return !1; n.sliderContainer.classList.remove("sliderContainer_active"); n.trail = f; e = n.verify(); e.spliced && e.verified ? (n.sliderContainer.classList.add("sliderContainer_success"), i(n.options.onSuccess) && n.options.onSuccess.call(n.$element)) : (n.sliderContainer.classList.add("sliderContainer_fail"), i(n.options.onFail) && n.options.onFail.call(n.$element), setTimeout(function () { n.text.innerHTML = n.options.failedText; n.reset() }, 1e3)) }; this.slider.addEventListener("mousedown", e); this.slider.addEventListener("touchstart", e); document.addEventListener("mousemove", o); document.addEventListener("touchmove", o); document.addEventListener("mouseup", s); document.addEventListener("touchend", s); document.addEventListener("mousedown", function () { return !1 }); document.addEventListener("touchstart", function () { return !1 }); document.addEventListener("swipe", function () { return !1 }) }; n.verify = function () { var n = this.trail, r = parseInt(this.block.style.left), t = !1; if (this.options.remoteUrl !== null) t = this.options.verify(n, this.options.remoteUrl); else { var i = function (n, t) { return n + t }, u = function (n) { return n * n }, f = n.reduce(i) / n.length, e = n.map(function (n) { return n - f }), o = Math.sqrt(e.map(u).reduce(i) / n.length); t = o !== 0 } return { spliced: Math.abs(r - this.x) < this.options.offset, verified: t } }; n.reset = function () { this.sliderContainer.classList.remove("sliderContainer_fail"); this.sliderContainer.classList.remove("sliderContainer_success"); this.slider.style.left = 0; this.block.style.left = 0; this.sliderMask.style.width = 0; this.clean(); this.text.setAttribute("data-text", this.text.textContent); this.text.textContent = this.options.loadingText; this.img.setSrc() } })();



        // ----set-captcha with script
        var captcha = sliderCaptcha({
          id: 'captcha',
          loadingText: 'Loading...',
          failedText: 'Try again',
          barText: 'Slide right to fill',
          repeatIcon: 'fa fa-redo',
          onSuccess: function () {
            // var handler = setTimeout(function () {
            //     window.clearTimeout(handler);
            //     captcha.reset();
            // }, 500);
            setTimeout(function () {
              alert('Your captcha is successfully verified.');
              captcha.reset();
            }, 1000);
          },
          setSrc: function () {
            //return 'https://picsum.photos/' + Math.round(Math.random() * 136) + '.jpg';
          },
        });

    </script>
    </body>

    </html>