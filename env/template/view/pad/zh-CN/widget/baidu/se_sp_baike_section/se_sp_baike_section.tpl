{%function name="fis_widget_baidu_se_sp_baike_section"%}<li class="bds-list"><div class="bds-item-box">{%function name=display_baike_desc%}{%if $albk_name0 && $albk_name1 %} {%if $albk_name0|string_display_len <20  && $albk_name1|string_display_len <20%} {%if $albk_name2%} {%if $albk_name2|string_display_len <20%} {%if $albk_name3%} {%if $albk_name3|string_display_len <20%} {%$shortDesc%} {%else%} {%$longDesc%} {%/if%} {%else%} {%$shortDesc%} {%/if%} {%else%} {%$longDesc%} {%/if%} {%else%} {%$shortDesc%} {%/if%} {%else%} {%$longDesc%} {%/if%}{%else%} {%$longDesc%}{%/if%}{%/function%}{%function name=display_baike_link%}{%if $albk_name0%}<br><a target="_blank" href="{%$albk_url%}{%$albk_url0%}" data-click="{'fm':'albk'}">{%$albk_name0|limitlen:18|highlight:2%}</a>{%/if%}{%if $albk_name1%} - <a target="_blank" href="{%$albk_url%}{%$albk_url1%}" data-click="{'fm':'albk'}">{%$albk_name1|limitlen:18|highlight:2%}</a>{%/if%}{%if $albk_name2%} - <a target="_blank" href="{%$albk_url%}{%$albk_url2%}" data-click="{'fm':'albk'}">{%$albk_name2|limitlen:18|highlight:2%}</a>{%/if%}{%if $albk_name3%} - <a target="_blank" href="{%$albk_url%}{%$albk_url3%}" data-click="{'fm':'albk'}">{%$albk_name3|limitlen:18|highlight:2%}</a>{%/if%}{%/function%}<style>.sp-other-mean{overflow:hidden}.sp-other-mean span{float:left;margin-right:2px}.sp-other-mean ul{overflow:hidden}</style><table cellpadding="0" cellspacing="0" class="result" id="{%$resIndex%}" mu="{%enc_url token="baike" url=$res.dispData.albk_url%}"><tr><td class="f"><h3 class="t"><a target="_blank" href="{%enc_url token="baike" url=$res.dispData.albk_url%}" data-click="{'fm': 'albk'}"><em>{%$res.dispData.albk_key%}</em>_百度百科</a></h3><font>{%display_baike_desc shortDesc=$res.dispData.albk_desc|limitlen:140|highlight:4 longDesc=$res.dispData.albk_desc|limitlen:140|highlight:4 albk_name0=$res.dispData.albk_name0 albk_name1=$res.dispData.albk_name1 albk_name2=$res.dispData.albk_name2 albk_name3=$res.dispData.albk_name3%}{%if $res.dispData.albk_sword0%}<div class="sp-other-mean"><span>其他含义：</span><ul><li><a href="{%$res.dispData.albk_surl0%}" target="_blank" data-click="{'fm':'albk'}">{%$res.dispData.albk_sword0|limitlen:40|highlight:4%}</a></li>{%if $res.dispData.albk_sword1%}<li><a href="{%$res.dispData.albk_surl1%}" target="_blank" data-click="{'fm':'albk'}">{%$res.dispData.albk_sword1|limitlen:40|highlight:4%}</a></li>{%/if%}{%if $res.dispData.albk_sword2%}<li><a href="{%$res.dispData.albk_surl2%}" target="_blank" data-click="{'fm':'albk'}">{%$res.dispData.albk_sword2|limitlen:40|highlight:4%}</a></li>{%/if%}{%if $res.dispData.albk_sword4%}<li><a href="{%$res.dispData.albk_url%}" target="_blank" data-click="{'fm':'albk'}" style="color:#6d6d6d;">查看全部含义&gt;&gt;</a></li>{%else%}{%if $res.dispData.albk_sword3%}<li><a href="{%$res.dispData.albk_surl3%}" target="_blank" data-click="{'fm':'albk'}">{%$res.dispData.albk_sword3|limitlen:40|highlight:4%}</a></li>{%/if%}{%/if%}</ul></div>{%else%}<font color="#666666"> 共{%$res.dispData.albk_num%}次编辑</font>{%if $res.dispData.albk_name0 && $res.dispData.albk_name1 %}{%display_baike_link albk_url=$res.dispData.albk_url albk_url0=$res.dispData.albk_url0 albk_url1=$res.dispData.albk_url1 albk_url2=$res.dispData.albk_url2 albk_url3=$res.dispData.albk_url3 albk_name0=$res.dispData.albk_name0 albk_name1=$res.dispData.albk_name1 albk_name2=$res.dispData.albk_name2 albk_name3=$res.dispData.albk_name3%}{%/if%}<br>{%/if%}<font color="#008000">{%$res.dispData.albk_showurl|limitlen:45%} {%$res.dispData.albk_date%}</font></font></td></tr></table></div></li>{%/function%}