{%extends 'c_base.tpl'%} {%block name='content'%} {%if $tplData.icon[0]['src']%}<div class="c-row"> <div class="c-span4"> {%if $tplData.icon[0]['link']%} <a class="OP_LOG_BTN" href="{%$tplData.icon[0]['link']|escape:'html'%}" target="_blank"> <img class="c-img c-img4" src="{%$tplData.icon[0]['src']|escape:'html'%}" class="op_cj_general_icon"> </a> {%/if%}</div><div class="c-span20 c-span-last"> <span {%if $tplData.announce%}class="op_cj_general_play"{%/if%}>{%$tplData.subtitle[0]['content']|escape:'html'%}</span> {%if $tplData.subtitle[0]['link']%}<span><a class="op_cj_general_txt_f OP_LOG_BTN" target="_blank" href="{%$tplData.subtitle[0]['url']|escape:'html'%}">{%$tplData.subtitle[0]['link']|escape:'html'%}</a></span>{%/if%} </div> {%if $tplData.memo%} <div> <span style="color:#535353">{%$tplData.memo|escape:'html'%}</span> </div> {%/if%} {%$loop_maxcount=count($tplData.moreinfo)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count < $loop_maxcount%} <div class="op-gap-top-small"> <span>{%if $tplData.moreinfo[$op_loop_count]['text']%}{%$tplData.moreinfo[$op_loop_count]['text']|escape:'html'%}{%/if%}</span> </div> {%else%}{%break%}{%/if%}{%/for%} <div class="OP_LOG_BTN c-gap-top"> {%$loop_maxcount=count($tplData.button)%}{%for $op_loop_count=0 to 5%} {%if $op_loop_count < $loop_maxcount%} <a href="{%$tplData.button[$op_loop_count]['link']|escape:'html'%}" class="op_cj_general_btn OP_LOG_BTN" target="_blank"> <div> <div> <div>{%$tplData.button[$op_loop_count]['text']|escape:'html'%}</div> </div> </div> </a> {%else%}{%break%}{%/if%}{%/for%} </div></div>{%/if%}<div> {%if $tplData.bless[0]['text']%} <div><a class="op_cj_general_txt_f OP_LOG_BTN" target="_blank" href="{%$tplData.bless[0]['link']|escape:'html'%}" style="text-decoration:none;font-weight:bold;font-size:13px">{%$tplData.bless[0]['text']|escape:'html'%}</a></div> {%/if%} {%if $tplData.words[0]['to']%} <table cellspacing="0" cellpadding="0" width="100%" class="op_cj_general_table"> {%$loop_maxcount=count($tplData.words)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count < $loop_maxcount%} <tr> <td class="op_cj_general_btn2"> <div>{%$tplData.words[$op_loop_count]['to']|escape:'html'%}</div> </td> <td><div>{%$tplData.words[$op_loop_count]['text']|escape:'html'|limitlen:70%}</div></td> </tr> {%else%}{%break%}{%/if%}{%/for%} </table> {%/if%} {%if $tplData.links%} <div style="font-weight:bold;font-size:13px;padding-top:8px"> {%$tplData.links|escape:'html'%} </div> {%/if%} {%if $tplData.link[0]['text']%} <div style="padding-top:2px"> {%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%} <span style="margin-right:10px"><a class="op_cj_general_txt_f OP_LOG_BTN" target="_blank" href="{%$tplData.link[$op_loop_count]['link']|escape:'html'%}" style="font-family:SIMSUN;font-size:13px">{%$tplData.link[$op_loop_count]['text']|escape:'html'%}</a></span> {%else%}{%break%}{%/if%}{%/for%} </div> {%/if%} <div style="margin-top:9px;padding-top:4px;border-top:1px solid #ECECEC" class="op_cj_general_timeDiv"> <span class="op_cj_general_showTime" style="font-size:13px;font-family:SIMSUN;color:#535353"></span> </div> </div>{%if $tplData.springinfo%}{%$springInfo=$tplData.springinfo[0]%}<script>A.setup("springInfo",{'year':{%$springInfo.year|escape:'javascript'%},'month':{%$springInfo.month|escape:'javascript'%},'day':{%$springInfo.day|escape:'javascript'%},'shengxiao':'{%$springInfo.shengxiao|escape:'javascript'%}'})</script>{%/if%} {%/block%}