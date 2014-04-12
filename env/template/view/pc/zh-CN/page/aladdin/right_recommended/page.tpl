{%extends 'right_base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.opr_right_recommended_main{color:#333}.opr_right_recommended_main a{color:#00C}.opr_right_recommended_subtitle{font-size:14px;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;position:relative;zoom:1}.opr_right_recommended_subtitle_tip{padding-right:10px;margin-right:30px;background:#fff;font-weight:bold}.opr_right_recommended_select span{float:left;display:inline-block;padding-top:10px}.opr_right_recommended_select select{float:left;height:22{%*i*%}px;margin:8px 5px 0;border:1px solid #7294b3}.opr_right_recommended_table_container{margin:8px 0 0;position:relative}.opr_right_recommended_table_container table{width:100%;text-align:center}.opr_right_recommended_table_container td{line-height:27px;background-color:#fff;padding:0 5px;border-bottom:1px solid #f0f0f0}.opr_right_recommended_table_container th{line-height:27px;background-color:#fff;font-weight:normal;padding:0 5px;background-color:#fafafa;border-bottom:1px solid #f0f0f0}.opr_right_{%*i*%}recommended_more{margin:8px 0 0}.opr_right_recommended_table_left{text-align:left}.opr_right_recommended_msg{width:100%;font-size:12px;color:#333;position:absolute;bottom:0;left:0;text-align:center;background-color:#fff;display:none}.opr_right_recommended_tip{width:100%;margin:8px 0 0;color:#666}.container_l .opr_right_recommended_tr_l{display:normal}.container_l .opr_right_recommended_tr_s{display:none}.container_l .opr_right_recommended_table_left .opr_right_recommended_table_link1{display:nor{%*i*%}mal}.container_l .opr_right_recommended_table_left .opr_right_recommended_table_link2{display:none}.container_s .opr_right_recommended_table_left .opr_right_recommended_table_link1{display:none}.container_s .opr_right_recommended_table_left .opr_right_recommended_table_link2{display:normal}.container_s .opr_right_recommended_tr_l{display:none}.container_s .opr_right_recommended_tr_s{display:normal}.opr_right_recommended_th_score_l{width:auto}.opr_right_recommended_th_score_s{width:100px}</style>{%*i*%}<div class="opr_right_recommended_main"> <div class="opr_right_recommended_subtitle"> <span class="opr_right_recommended_subtitle_tip">{%if $tplData.title%}{%$tplData.title%}{%/if%}</span> </div> {%$privince='北京~1|上海~2|天津~3|重庆~4|安徽~5|福建~6|甘肃~7|广东~8|广西~9|贵州~10|海南~11|河北~12|黑龙江~13|河南~14|湖北~15|湖南~16|江苏~17|江西~18|吉林~19|辽宁~20|内蒙古~21|宁夏~22|青海~23|陕西~24|山东~25|山西~26|四川~27|新疆~28|西藏~29|云南~30|浙江~31'%} {%$tempDataProvince=explode('|',$privince)%} <div> {%$tempDataArea=''%} {%if $tplData.school[0]['addr']%} {%$tempDataArea=$tplData.school[0]['addr']%} {%/if%} <p class="opr_right_recommended_select"> <span>考生所在地：</span> <select class="opr_right_recommended_select_provid"> {%foreach $tempDataProvince as $item%} {%$tempDataItem=explode('~',$item)%} {%*{%if $extData.AutoExtendedLocation==$tempDataItem[0]%}selected="selected"{%/if%}*%} <option value="{%$tempDataItem[1]%}"{%if $tempDataArea==$tempDataItem[0]%}selected="selected"{%/if%}>{%$tempDataItem[0]%}</option> {%/foreach%} </select> <div style="clear:both"></div> </p> </div> <div class="opr_right_recommended_table_container"> <div class="opr_right_recommended_table_box"> <table cellspacing="0" cellpadding="0"> <thead class="opr_right_recommended_table_thead"> <tr class="opr_right_recommended_tr_l"> <th class="opr_right_recommended_table_left">{%$tplData.header[0].college%}</th> <th class="opr_right_recommended_th_score_l">{%$tplData.header[0].past%}</th> <th nowrap>{%$tplData.header[0].area%}</th> <th nowrap>{%$tplData.header[0].type%}</th> </tr> <tr class="opr_right_recommended_tr_s"> <th class="opr_right_recommended_table_left">{%$tplData.header[0].college%}</th> <th class="opr_right_recommended_th_score_s">{%$tplData.header[0].past%}</th> <th nowrap>{%$tplData.header[0].area%}</th> <th nowrap>{%$tplData.header[0].type%}</th> </tr> </thead> <tbody class="opr_right_recommended_table_tbody"> {%foreach $tplData.school as $item%} {%if $item@index < 5 %} <tr> <td class="opr_right_recommended_table_left"><a href="{%$item.url%}" target="_blank" title="{%$item.college%}" class="opr_right_recommended_table_link1">{%$item.college|limitlen:20%}</a><a href="{%$item.url%}" target="_blank" class="opr_right_recommended_table_link2" title="{%$item.college%}">{%$item.college|limitlen:12%}</a></td> <td>{%$item.past%}</td> <td nowrap>{%$item.area%}</td> <td nowrap>{%$item.type%}</td> </tr> {%/if%} {%/foreach%} </tbody> </table> </div> <div class="opr_right_recommended_msg"></div> </div> {%if $tplData.morelink && $tplData.morelink[0] && $tplData.morelink[0].title%} <p class="opr_right_recommended_more"><a class="opr_right_recommended_link" href="{%$tplData.morelink[0].url%}" target="_blank">{%$tplData.morelink[0].title%}&gt;&gt;</a></p> {%/if%} <p class="opr_right_recommended_tip">同类院校根据相近分数线及所在地区等进行推荐</p></div><script >
    A.setup({
        query:'{%if $tplData.schoolname%}{%trim($tplData.schoolname)%}{%else%}{%$extData.OriginQuery%}{%/if%}',
        srcid:parseInt('{%$extData.resourceid%}')
    });
</script><script>A.setup(function(){var _this = this;var provid=_this.find('.opr_right_recommended_select_provid')[0];var link=_this.find('.opr_right_recommended_link')[0];var tableparent=_this.find('.opr_right_recommended_table_box')[0];var msg = _this.find('.opr_right_recommended_msg')[0]; var timer = 0;provid.onchange=function(){scoreline();};function subByte(str, len, tail){ var a = [], s = str.split('');tail = tail || '…'; for(var i = 0, l = s.length; i < l; i++){if(s[i].charCodeAt(0) > 255{%*i*%}){a.push("*");}a.push(s[i]);}if(len && len > 0 && a.length > len){ s = a.join("").substring(0, len - 1).replace(/\*/g,'') + tail;}else{return str;}return s;};function scoreline(){msg.style.display='none';var provid_v=provid.value;var provid_text=provid.options[provid.selectedIndex].text; var tbody=_this.find('.opr_right_recommended_table_tbody')[0];var thead=_this.find('.opr_right_recommended_table_thead')[0];timer && clearTimeout(timer);timer = setTimeout(function(){msg.innerHTML='数据加载中,请稍后'; m{%*i*%}sg.style.display='block'; },300);if(tbody && thead){msg.style.height=tbody.offsetHeight +'px';msg.style.lineHeight=tbody.offsetHeight +'px'; msg.style.position='absolute';msg.style.top=thead.offsetHeight+'px';msg.style.left=0;}_this.ajax(provid_text+_this.data.query, _this.data.srcid, {success: function(data){if(data){if(data.length > 0){var data=data[0];var html=['<table cellspacing="0" cellpadding="0"><thead class="opr_right_recommended_table_thead">'];html.push('<tr class="opr_right_recommend{%*i*%}ed_tr_l">');html.push('<th class="opr_right_recommended_table_left">'+data.header[0].college+'</th>');html.push('<th class="opr_right_recommended_th_score_l">'+data.header[0].past+'</th>');html.push('<th nowrap>'+data.header[0].area+'</th>');html.push('<th nowrap>'+data.header[0].type+'</th></tr>');html.push('<tr class="opr_right_recommended_tr_s">');html.push('<th class="opr_right_recommended_table_left">'+data.header[0].college+'</th>');html.push('<th class="opr_right_recommended_th_score_s">'{%*i*%}+data.header[0].past+'</th>');html.push('<th nowrap>'+data.header[0].area+'</th>');html.push('<th nowrap>'+data.header[0].type+'</th></tr></thead><tbody class="opr_right_recommended_table_tbody">');var limitlen=$('.container_l').length>0?20:12;for( var i = 0, item; item = data.school[i]; i++ ){html.push('<tr><td class="opr_right_recommended_table_left"><a href="'+item.url+'" target="_blank" title="'+item.college+'">'+subByte((item.college),limitlen)+'</a></td><td>'+item.past+'</td><td nowrap>'+i{%*i*%}tem.area+'</td><td nowrap>'+item.type+'</td></tr>'); if(i>4){break;}}html.push('</tbody></table>');tableparent.innerHTML=html.join('');msg.style.display='none';if(link && data.morelink && data.morelink[0] && data.morelink[0].url){ link.href=data.morelink[0].url;} timer && clearTimeout(timer);}else{ timer && clearTimeout(timer);msg.innerHTML = '未找到结果，建议更换筛选条件';msg.style.display='block';}}},error: function(){timer && clearTimeout(timer);msg.innerHTML = '网络超时，请刷新后重试';msg.style.display='block';}, ti{%*i*%}meout:function(){timer && clearTimeout(timer);msg.innerHTML = '网络超时，请刷新后重试';msg.style.display='block';}}); };this.dispose = function(){clearTimeout(timer);};});</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}