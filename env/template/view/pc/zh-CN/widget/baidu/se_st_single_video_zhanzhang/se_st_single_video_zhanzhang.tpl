{%fis_widget%}<table id="{%$resIndex%}" class="result{%if $isSameSize==1%} c-res{%/if%}" cellpadding="0" cellspacing="0" mu="{%get_mu originUrl=$res.offsetInfo.url encryptionUrl=$res.encryptionUrl%}"><tr><td class="f">{%if $res.dispData.single_video_zhanzhang.category && $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language || $res.dispData.single_video_zhanzhang.type || $res.dispData.single_video_zhanzhang.actor || $res.dispData.single_video_zhanzhang.host || $res.dispData.single_video_zhanzhang.main_actor || $res.dispData.single_video_zhanzhang.director || $res.dispData.single_video_zhanzhang.guest || $res.dispData.single_video_zhanzhang.author || $res.dispData.single_video_zhanzhang.TV_station || $res.dispData.single_video_zhanzhang.intro%}{%if $res.dispData.single_video_zhanzhang.image%}<style>.image_single_video{float:left;width:80px;height:60px;overflow:hidden;margin:3px 5px 0 0;position:relative;_margin-right:1px}.image_single_video img{width:78px;height:58px;border:1px solid #ccc}.image_single_video span{display:block;width:14px;height:14px;font-size:0;background:url({%$STATIC_DOMAIN_WWW0%}/cache/singlevideo/img/single_video_play.png);_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="{%$STATIC_DOMAIN_WWW0%}/cache/singlevideo/img/single_video_play.png");position:absolute;left:5px;bottom:5px}</style>{%/if%}{%/if%}{%else%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language%}{%if $res.dispData.single_video_zhanzhang.image%}<style>.image_single_video{float:left;width:80px;height:60px;overflow:hidden;margin:3px 5px 0 0;position:relative;_margin-right:1px}.image_single_video img{width:78px;height:58px;border:1px solid #ccc}.image_single_video span{display:block;width:14px;height:14px;font-size:0;background:url({%$STATIC_DOMAIN_WWW0%}/cache/singlevideo/img/single_video_play.png);_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="{%$STATIC_DOMAIN_WWW0%}/cache/singlevideo/img/single_video_play.png");position:absolute;left:5px;bottom:5px}</style>{%/if%}{%/if%}{%/if%}<h3 class="t"><a href="{%get_url originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank" data-click="{'F':'{%$res.strategyStr[0]%}','F1':'{%$res.strategyStr[1]%}','F2':'{%$res.strategyStr[2]%}','F3':'{%$res.strategyStr[3]%}','T':'{%$serverTime%}','y':'{%$res.identifyStr%}'}">{%$res.offsetInfo.title|limitlen:60|highlight:2%}</a></h3><div style="padding-top:3px">{%if $res.dispData.single_video_zhanzhang.category && $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language || $res.dispData.single_video_zhanzhang.type || $res.dispData.single_video_zhanzhang.actor || $res.dispData.single_video_zhanzhang.host || $res.dispData.single_video_zhanzhang.main_actor || $res.dispData.single_video_zhanzhang.director || $res.dispData.single_video_zhanzhang.guest || $res.dispData.single_video_zhanzhang.author || $res.dispData.single_video_zhanzhang.TV_station || $res.dispData.single_video_zhanzhang.intro%}{%if $res.dispData.single_video_zhanzhang.image%}<a href="{%get_url originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" class="image_single_video" target="_blank"><img src="{%$res.dispData.single_video_zhanzhang.image%}" alt="" /><span></span></a>{%/if%}{%/if%}{%else%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language%}{%if $res.dispData.single_video_zhanzhang.image%}<a href="{%get_url originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" class="image_single_video" target="_blank"><img src="{%$res.dispData.single_video_zhanzhang.image%}" alt="" /><span></span></a>{%/if%}{%/if%}{%/if%}{%if $res.dispData.single_video_zhanzhang.category && $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language || $res.dispData.single_video_zhanzhang.type || $res.dispData.single_video_zhanzhang.actor || $res.dispData.single_video_zhanzhang.host || $res.dispData.single_video_zhanzhang.main_actor || $res.dispData.single_video_zhanzhang.director || $res.dispData.single_video_zhanzhang.guest || $res.dispData.single_video_zhanzhang.author || $res.dispData.single_video_zhanzhang.TV_station || $res.dispData.single_video_zhanzhang.intro%}{%if $res.dispData.single_video_zhanzhang.image%}<div style="overflow:hidden;_zoom:1;">{%/if%}{%/if%}{%else%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language%}{%if $res.dispData.single_video_zhanzhang.image%}<div style="overflow:hidden;_zoom:1;">{%/if%}{%/if%}{%/if%}<font size="-1">{%*时长-清晰度-语言*%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language%}<p style="color:#666">{%if $res.dispData.single_video_zhanzhang.time && $res.dispData.single_video_zhanzhang.time|string_format:'%d' > 0 && $res.dispData.single_video_zhanzhang.time|string_format:'%d' < 360%}时长:{%$res.dispData.single_video_zhanzhang.time|string_format:'%d'%}分钟{%/if%}{%if $res.dispData.single_video_zhanzhang.resolution && strlen($res.dispData.single_video_zhanzhang.resolution) > 0%}{%if $res.dispData.single_video_zhanzhang.time && $res.dispData.single_video_zhanzhang.time|string_format:'%d' > 0 && $res.dispData.single_video_zhanzhang.time|string_format:'%d' < 360%}-{%/if%}{%$res.dispData.single_video_zhanzhang.resolution|limitlen:20|highlight:2%}{%/if%}{%if $res.dispData.single_video_zhanzhang.language && strlen($res.dispData.single_video_zhanzhang.language) > 0%}{%if $res.dispData.single_video_zhanzhang.time && $res.dispData.single_video_zhanzhang.time|string_format:'%d' > 0 && $res.dispData.single_video_zhanzhang.time|string_format:'%d' < 360 || $res.dispData.single_video_zhanzhang.resolution%}-{%/if%}{%$res.dispData.single_video_zhanzhang.language|limitlen:20|highlight:2%}{%/if%}</p>{%/if%}{%if $res.dispData.single_video_zhanzhang.category && strlen($res.dispData.single_video_zhanzhang.category) > 0%}{%*类型-主演/主持人/主角-导演/嘉宾/作者*%}{%if $res.dispData.single_video_zhanzhang.category && ($res.dispData.single_video_zhanzhang.type || $res.dispData.single_video_zhanzhang.actor || $res.dispData.single_video_zhanzhang.director)%}<p>{%if $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $res.dispData.single_video_zhanzhang.type && strlen($res.dispData.single_video_zhanzhang.type) > 0%}类型:{%$res.dispData.single_video_zhanzhang.type|limitlen:14|highlight:2%}&nbsp;&nbsp;{%/if%}{%/if%}{%if $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电影', '电视剧']%}{%if $res.dispData.single_video_zhanzhang.actor && strlen($res.dispData.single_video_zhanzhang.actor) > 0%}主演:{%$res.dispData.single_video_zhanzhang.actor|limitlen:14|highlight:2%}&nbsp;&nbsp;{%/if%}{%elseif $res.dispData.single_video_zhanzhang.category == '综艺'%}{%if $res.dispData.single_video_zhanzhang.host && strlen($res.dispData.single_video_zhanzhang.host) > 0%}主持人:{%$res.dispData.single_video_zhanzhang.host|limitlen:14|highlight:2%}&nbsp;&nbsp;{%elseif $res.dispData.single_video_zhanzhang.actor && strlen($res.dispData.single_video_zhanzhang.actor) > 0%}主持人:{%$res.dispData.single_video_zhanzhang.actor|limitlen:14|highlight:2%}&nbsp;&nbsp;{%/if%}{%elseif $res.dispData.single_video_zhanzhang.category == '动漫'%}{%if $res.dispData.single_video_zhanzhang.main_actor && strlen($res.dispData.single_video_zhanzhang.main_actor) > 0%}主角:{%$res.dispData.single_video_zhanzhang.main_actor|limitlen:14|highlight:2%}&nbsp;&nbsp;{%elseif $res.dispData.single_video_zhanzhang.actor && strlen($res.dispData.single_video_zhanzhang.actor) > 0%}主角:{%$res.dispData.single_video_zhanzhang.actor|limitlen:14|highlight:2%}&nbsp;&nbsp;{%/if%}{%/if%}{%if $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电影', '电视剧']%}{%if $res.dispData.single_video_zhanzhang.director && strlen($res.dispData.single_video_zhanzhang.director) > 0%}导演:{%$res.dispData.single_video_zhanzhang.director|limitlen:14|highlight:2%}{%/if%}{%elseif $res.dispData.single_video_zhanzhang.category == '综艺'%}{%if $res.dispData.single_video_zhanzhang.guest && strlen($res.dispData.single_video_zhanzhang.guest) > 0%}嘉宾:{%$res.dispData.single_video_zhanzhang.guest|limitlen:14|highlight:2%}{%elseif $res.dispData.single_video_zhanzhang.director && strlen($res.dispData.single_video_zhanzhang.director) > 0%}嘉宾:{%$res.dispData.single_video_zhanzhang.director|limitlen:14|highlight:2%}{%/if%}{%elseif $res.dispData.single_video_zhanzhang.category == '动漫'%}{%if $res.dispData.single_video_zhanzhang.author && strlen($res.dispData.single_video_zhanzhang.author) > 0%}作者:{%$res.dispData.single_video_zhanzhang.author|limitlen:14|highlight:2%}{%elseif $res.dispData.single_video_zhanzhang.director && strlen($res.dispData.single_video_zhanzhang.director) > 0%}作者:{%$res.dispData.single_video_zhanzhang.director|limitlen:14|highlight:2%}{%/if%}{%/if%}</p>{%/if%}{%*播出时间[未提取]-电视台*%}{%if $res.dispData.single_video_zhanzhang.category && $res.dispData.single_video_zhanzhang.TV_station%}<p>{%if $res.dispData.single_video_zhanzhang.category == '综艺'%}{%if strlen($res.dispData.single_video_zhanzhang.TV_station) > 0%}电视台:{%$res.dispData.single_video_zhanzhang.TV_station|limitlen:21|highlight:2%}{%/if%}{%/if%}</p>{%/if%}{%*摘要展现逻辑*%}{%if $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电影', '电视剧','综艺','动漫']%}{%if $res.dispData.single_video_zhanzhang.category == '综艺'%}{%$single_video_temp_count = 0%}{%if isset($res.dispData.single_video_zhanzhang.type) || isset($res.dispData.single_video_zhanzhang.actor) || isset($res.dispData.single_video_zhanzhang.director) || isset($res.dispData.single_video_zhanzhang.host) || isset($res.dispData.single_video_zhanzhang.main_actor) || isset($res.dispData.single_video_zhanzhang.guest) || isset($res.dispData.single_video_zhanzhang.author) %}{%$single_video_temp_count = $single_video_temp_count + 1%}{%/if%}{%if isset($res.dispData.single_video_zhanzhang.TV_station)%}{%$single_video_temp_count = $single_video_temp_count + 1%}{%/if%}{%if !isset($res.dispData.single_video_zhanzhang.intro) || strlen($res.dispData.single_video_zhanzhang.intro) < 30%}{%if $single_video_temp_count == 1%}{%$res.offsetInfo.summary|limitlen:60|highlight:6%}{%elseif $single_video_temp_count == 0%}{%$res.offsetInfo.summary|limitlen:120|highlight:6%}{%/if%}{%else%}{%if $single_video_temp_count == 1%}{%$res.dispData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:60|highlight:4%}{%elseif $single_video_temp_count == 0%}{%$res.dispData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:120|highlight:4%}{%/if%}{%/if%}{%else%}{%$single_video_temp_count = 0%}{%if ($res.dispData.single_video_zhanzhang.time && $res.dispData.single_video_zhanzhang.time|string_format:'%d' > 0 && $res.dispData.single_video_zhanzhang.time|string_format:'%d' < 360) || ($res.dispData.single_video_zhanzhang.resolution && strlen($res.dispData.single_video_zhanzhang.resolution) > 0) || ($res.dispData.single_video_zhanzhang.language && strlen($res.dispData.single_video_zhanzhang.language) > 0)%}{%$single_video_temp_count = $single_video_temp_count + 1%}{%/if%}{%if isset($res.dispData.single_video_zhanzhang.type) || isset($res.dispData.single_video_zhanzhang.actor) || isset($res.dispData.single_video_zhanzhang.director) || isset($res.dispData.single_video_zhanzhang.host) || isset($res.dispData.single_video_zhanzhang.main_actor) || isset($res.dispData.single_video_zhanzhang.guest) || isset($res.dispData.single_video_zhanzhang.author) %}{%$single_video_temp_count = $single_video_temp_count + 1%}{%/if%}{%if !isset($res.dispData.single_video_zhanzhang.intro) || strlen($res.dispData.single_video_zhanzhang.intro) < 30%}{%if $single_video_temp_count > 0%}{%$res.offsetInfo.summary|limitlen:60|highlight:6%}{%else%}{%$res.offsetInfo.summary|limitlen:120|highlight:6%}{%/if%}{%else%}{%if $single_video_temp_count > 0%}剧情:{%$res.dispData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:60|highlight:4%}{%else%}剧情:{%$res.dispData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:120|highlight:4%}{%/if%}{%/if%}{%/if%}{%else%}{%if !isset($res.dispData.single_video_zhanzhang.time) && !isset($res.dispData.single_video_zhanzhang.resolution) && !isset($res.dispData.single_video_zhanzhang.language) && (!isset($res.dispData.single_video_zhanzhang.intro) || strlen($res.dispData.single_video_zhanzhang.intro) < 30)%}<p>{%$res.offsetInfo.summary|limitlen:120|highlight:6%}</p>{%else%}{%if isset($res.dispData.single_video_zhanzhang.intro) && strlen($res.dispData.single_video_zhanzhang.intro) >= 30%}<p>{%$res.dispData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:120|highlight:4%}</p>{%else%}<p>{%$res.offsetInfo.summary|limitlen:120|highlight:6%}</p>{%/if%}{%/if%}{%/if%}{%else%}<p>{%$res.offsetInfo.summary|limitlen:120|highlight:6%}</p>{%/if%}<p class="g">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}{%display_as_time FactorTimePrecision=$resData.FactorTimePrecision FactorTime=$resData.FactorTime LastModTime=$resData.LastModTime LinkFoundTime=$resData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" {%if !($urlPara.ct & 0x40000)%}target="_blank"{%/if%} class="m">{%$lable_cache%}</a>{%/if%}{%/if%}</p></font>{%if $res.dispData.single_video_zhanzhang.category && $res.dispData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language || $res.dispData.single_video_zhanzhang.type || $res.dispData.single_video_zhanzhang.actor || $res.dispData.single_video_zhanzhang.host || $res.dispData.single_video_zhanzhang.main_actor || $res.dispData.single_video_zhanzhang.director || $res.dispData.single_video_zhanzhang.guest || $res.dispData.single_video_zhanzhang.author || $res.dispData.single_video_zhanzhang.TV_station || $res.dispData.single_video_zhanzhang.intro%}{%if $res.dispData.single_video_zhanzhang.image%}</div>{%/if%}{%/if%}{%else%}{%if $res.dispData.single_video_zhanzhang.time || $res.dispData.single_video_zhanzhang.resolution || $res.dispData.single_video_zhanzhang.language%}{%if $res.dispData.single_video_zhanzhang.image%}</div>{%/if%}{%/if%}{%/if%}</div></td></tr></table>{%/fis_widget%}