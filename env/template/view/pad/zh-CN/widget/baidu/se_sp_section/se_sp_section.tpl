{%function name="fis_widget_baidu_se_sp_section"%}{%$useSmarty = $res.dispData.strategy%}{%$aladdinHTML = ''%}{%if $useSmarty%}{%$aladdinHTML = $res.dispData|common_render:"{%if $res.dispData.strategy.type%}{%$res.dispData.strategy.type%}{%else%}aladdin{%/if%}":$res.dispData.strategy.tempName:$res@index%}{%/if%}{%if $aladdinHTML neq ''%}<li class="bds-list"><div class="bds-item-box"><table class="result-op" cellpadding="0" cellspacing="0" {%if $res.dispData.SrcId && $res.dispData.SrcId > 5999%} srcid="{%$res.dispData.SrcId%}" {%/if%} id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}" data-op="{'y':'{%$res.identifyStr%}'}" {%if $isFavoOn == 1 && $isUserLogin == 1%} data-favo="{'flag':'{%$res.favoFlag%}','id':'{%$res.favoItemId%}'}" {%/if%}>{%if $test%}<small>render by smarty : {%$res.dispData.strategy.tempName%} | sourceid:{%$res.dispData.resultData.extData.resourceid%}</small><p>{%/if%}{%$aladdinHTML%}</table></div></li>{%* 如果是自有产品阿拉丁（新闻、地图、视频、身边等） *%}{%elseif $res.dispData.SrcId && $res.dispData.SrcId <= 5999%}{%if $res.offsetInfo.title%}<li class="bds-list"><div class="bds-item-box"><table class="result-op" cellpadding="0" cellspacing="0" {%if $res.dispData.SrcId && $res.dispData.SrcId > 5999%} srcid="{%$res.dispData.SrcId%}" {%/if%} id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}" data-op="{'y':'{%$res.identifyStr%}'}" {%if $isFavoOn == 1 && $isUserLogin == 1%} data-favo="{'flag':'{%$res.favoFlag%}','id':'{%$res.favoItemId%}'}" {%/if%}>{%$res.offsetInfo.title%}</table></div></li> {%/if%}{%/if%}{%/function%}