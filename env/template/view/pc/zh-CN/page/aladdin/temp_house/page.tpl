{%extends 'c_base.tpl'%} {%block name="foot"%}{%/block%}{%block name='content'%}<div class="c-row"> <div class="c-span6"> <a target="_blank" href="{%$tplData.icon[0]['iconlink']%}"><img src="{%$tplData.icon[0]['iconaddress']%}" class="c-img c-img6" /></a> </div> <div class="c-span18 c-span-last"> {%$tplData.content1|highlight:0%} {%if $tplData.content4!=""%}<span style="margin-left:24px;">{%$tplData.content4|escape:'html'%}</span>{%/if%} {%if $tplData.data1!=""%}<span style="color:#C60A00;">{%$tplData.data1|escape:'html'%}</span>{%/if%} {%if $tplData.data2!=""%}<span style="color:#008000">{%$tplData.data2|escape:'html'%}</span>{%/if%} {%if $tplData.data3!=""%}<span>{%$tplData.data3|escape:'html'%}</span>{%/if%} <div>{%$tplData.content2|highlight:0%}</div> <div>{%$tplData.content3|highlight:0%}</div> <div> {%foreach $tplData.link as $escaped_link%} {%if $escaped_link['linkcontent']!=""%} <a target="_blank" href="{%$escaped_link['linkurl']|escape%}">{%$escaped_link['linkcontent']|highlight:0%}</a>&nbsp;&nbsp; {%/if%} {%/foreach%} </div> <div>{%fe_fn_c_showurl%}</div> </div></div>{%/block%}