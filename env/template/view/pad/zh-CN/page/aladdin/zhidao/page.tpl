{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasTitleGap=false%}{%$extData.feData.hasShowURLGap=false%}{%/block%}{%block name='foot'%}{%/block%}{%block name='content'%}<style>.op_zhidao{padding-left:1em}.op_zhidao_answercount{margin-left:4px;color:#666}.op_zhidao_more{color:#77c}.op_zhidao_m{color:#666}</style> {%if $tplData.tip[0]%} <div class="op_zhidao_m">{%$tplData.tip[0].num%}个回答&nbsp;-&nbsp;提问时间:&nbsp;{%$tplData.tip[0].time%}</div> {%/if%} {%if $tplData.content%} <div>{%if $tplData.tip[0]%}<span class="op_zhidao_m">最佳答案:&nbsp;</span>{%/if%}{%$tplData.content|limitlen:140|highlight:0%}</div> {%/if%} {%if $tplData.showurl !=""%} <div{%if $extData.feData.hasBorder || $extData.feData.hasShowURLGap%} class="c-gap-top-small"{%/if%}>{%fe_fn_c_showurl%}</div>{%/if%} <div class="op_zhidao c-gap-top-small"> {%foreach $tplData.question as $item%} {%if $item.link%} <div> <a href="{%$item['link']%}" target="_blank">{%$item['title']|limitlen:56|highlight:0%}</a> <span class="op_zhidao_answercount">{%$item['answercount']%} {%$item['date']%}</span> </div> {%/if%} {%/foreach%} {%if $tplData.questionmore%} <a href="{%$tplData.questionmore[0].link%}" target="_blank" class="op_zhidao_more">{%$tplData.questionmore[0].name%}</a> {%/if%}</div>{%/block%}