{%block name="pdc_title"%}{%if $PDC%}<script>var _WWW_ST = 0, _WWW_ST_TITLE = new Date().getTime();</script><script>(function(){function b(f){if(f>=0){for(var e=0;e<75;e+=25){if(f>=e&&f<e+25){return e/25}}if(f>=75&&f<500){return 3}return 4}}var d=function(e){this.name=e;this.dataArray=[0,0,0,0,0]};d.prototype.start=function(){var g=50,j,f,i=this;function e(){f=new Date;var k=f-j-g;k=k<0?0:k;i.dataArray[b(k)]++;if(!i.isEnd){h()}else{clearTimeout(i.timer)}}function h(k){j=new Date;if(k){g=0}else{g=50}i.timer=null;i.timer=setTimeout(e,g)}i.isEnd=false;h(true)};d.prototype.end=function(){this.isEnd=true};d.prototype.toString=function(){return'"'+this.name+'":['+this.dataArray.join(",")+"]"};var a={};var c={start:function(e,f){f=f||a;if(f){if(!f[e]){f[e]=new d(e)}f[e].start()}},end:function(e,f){f=f||a;if(f){if(f[e]){f[e].end()}}},toString:function(g){g=g||a;var e=[];if(g){for(var f in g){if(g.hasOwnProperty(f)){e.push(g[f].toString())}}}return"{"+e.join(",")+"}"},length:function(){return a.length}};window.CPU_MONITOR=c})(window);var PDC={_version:"1.7",_render_start:new Date().getTime(),_analyzer:{loaded:false,url:"http://static.tieba.baidu.com/tb/pms/wpo.pda.js?v=1.7",callbacks:[]},_opt:{is_login:false,sample:0,product_id:0,page_id:0,special_pages:[],display:false},_cpupool:{},_timingkey:"start",_timing:{},init:function(d){for(var c in d){if(d.hasOwnProperty(c)){this._opt[c]=d[c]}}},mark:function(b){this._timing[b]=new Date().getTime();if(window.CPU_MONITOR){if(this._lastkey){CPU_MONITOR.end(this._lastkey+"-"+this._timingkey,this._cpupool)}if(b!="let"){CPU_MONITOR.start(this._timingkey+"-"+b,this._cpupool);this._lastkey=this._timingkey;this._timingkey=b}}},view_start:function(){this.mark("vt")},tti:function(){this.mark("tti")},page_ready:function(){this.mark("fvt")},metadata:function(){var c=this._opt;var e={env:{user:(c.is_login==true?1:0),product_id:c.product_id,page_id:PDC._is_sample(c.sample)?c.page_id:0},common_resources:c.common_resources,special_resources:c.special_resources,render_start:this._render_start,timing:this._timing,display:c.display};var a=[];var d=c.special_pages;for(var b=0;b<d.length;b++){if(PDC._is_sample(d[b]["sample"])){a.push(d[b]["id"])}}if(a.length>0){e.env["special_id"]="["+a.join(",")+"]"}return e}};(function(){if(document.attachEvent){window.attachEvent("onload",function(){PDC.mark("let");PDC._load_analyzer()})}else{window.addEventListener("load",function(){PDC.mark("lt")},false)}})();</script>{%/if%}{%/block%}{%block name="pdc_head"%}{%if $PDC%}<script>PDC.mark("ht");(function(){var a=PDC.ready=function(){var g=false,f=[],c;if(document.addEventListener){c=function(){document.removeEventListener("DOMContentLoaded",c,false);d()}}else{if(document.attachEvent){c=function(){if(document.readyState==="complete"){document.detachEvent("onreadystatechange",c);d()}}}}function d(){if(!d.isReady){d.isReady=true;for(var k=0,h=f.length;k<h;k++){f[k]()}}}function b(){try{document.documentElement.doScroll("left")}catch(h){setTimeout(b,1);return}d()}function e(){if(g){return}g=true;if(document.addEventListener){document.addEventListener("DOMContentLoaded",c,false);window.addEventListener("load",d,false)}else{if(document.attachEvent){document.attachEvent("onreadystatechange",c);window.attachEvent("onload",d);var h=false;try{h=window.frameElement==null}catch(i){}if(document.documentElement.doScroll&&h){b()}}}}e();return function(h){d.isReady?h():f.push(h)}}();a.isReady=false})();PDC.ready(function(){PDC.mark("drt")});PDC.mark("vt");var __tpl_T=[],__tpl_start_time=0;</script>{%/if%}{%/block%}{%block name="pdc_body"%}{%if $PDC%}<script>PDC._load_js=function(b,c){var a=document.createElement("script");a.setAttribute("type","text/javascript");a.setAttribute("src",b);a.onload=a.onreadystatechange=function(){if(!this.readyState||this.readyState=="loaded"||this.readyState=="complete"){a.onload=a.onreadystatechange=null;if(typeof c==="function"){c(b,true)}}};a.onerror=function(d){if(typeof c==="function"){c(b,false)}};document.getElementsByTagName("head")[0].appendChild(a)};PDC._load_analyzer=function(){var c=this._opt.special_pages;var d=[this._opt.sample];for(var b=0;b<c.length;b++){d.push(c[b]["sample"])}var a=Math.max.apply(null,d);if(PDC._is_sample(a)==false){return}PDC._analyzer.loaded=true;PDC._load_js(PDC._analyzer.url,function(){var g=PDC._analyzer.callbacks;for(var f=0,e=g.length;f<e;f++){g[f]()}})};PDC.send=function(){if(PDC._analyzer.loaded==true){WPO_PDA.send()}else{PDC._analyzer.callbacks.push(function(){WPO_PDA.send()})}};PDC._is_sample=function(a){if(!PDC._random){PDC._random=Math.random()}return PDC._random<=a};(function(){if(document.attachEvent){window.attachEvent("onload",function(){PDC.mark("lt")},false)}else{window.addEventListener("load",function(){PDC.mark("let");PDC._load_analyzer()})}})();</script>{%/if%}{%/block%}{%block name="pdc_init"%}{%if $PDC%}<script>if(typeof PDC != 'undefined'){PDC.init({is_login : {%($isUserLogin)?1:0%}, sample : 1, product_id : 45, page_id : 101, special_pages:[],s_params:{q:encodeURIComponent('{%$query|escape:'javascript'%}'),tplp:encodeURIComponent(__tpl_T.join("&")),stime: _WWW_ST ? _WWW_ST_TITLE - _WWW_ST : -1,tti2: _WWW_ST ? _WWW_ST_TTI - _WWW_ST : -1}});}</script>{%/if%}{%/block%}{%block name="pdc_viewstart"%}{%if $PDC%}<script>if(typeof PDC != 'undefined'){PDC.view_start();}</script>{%/if%}{%/block%}{%block name="pdc_tti"%}{%if $PDC%}<script>if(typeof PDC != 'undefined'){PDC.tti();}</script><script>var _WWW_ST_TTI = new Date().getTime();try {_WWW_ST = parseInt(document.cookie.match(new RegExp("(^| )WWW_ST=([^;]*)(;|$)"))[2]);}catch(e){}</script>{%/if%}{%/block%}