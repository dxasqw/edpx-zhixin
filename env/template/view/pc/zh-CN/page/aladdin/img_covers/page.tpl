{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.fm="alop"%}{%$all_img_num_str=$tplData.data.UavatarProxy.ImageRealResultNumber%}{%$all_img_num_str=number_format(3200000)%}{%$showUrl="image.baidu.com"%}{%$topWidth=0%}{%$lineHeight=0%}{%$maxWidth=538%}{%$cacheWidth=0%}{%$item1Index=0%}{%$item2Index=0%}{%$onlyOneLine=0%}{%$searchWord = ""%}{%$firstLineWidth=0%}{%$arrIndex=0%}{%$lineClass=""%}{%$showImg="http://img0.bdstatic.com/img/image/wantu_from_aladdin.jpg"%}{%$queryWord=$tplData.Query%}{%$tplData.title="`$queryWord`_海量精选高清图片_百度图片"%}{%$encoded_word=$queryWord|escape:url%}{%$host='http://image.baidu.com'%}{%$key='美女'%}{%$resultUrl="`$host`/i?tn=baiduimage&ipn=r&ct=201326592&cl=2&lm=-1&st=-1&sf=1&fmq=1389861203899_R&pv=&ic=0&nc=1&z=&se=1&showtab=0&fb=0&width=&height=&face=0&istype=2&ie=utf-8&ala=4&ori_query=`$encoded_word`"%}{%$detailUrl="`$host`/i?ct=503316480&tn=baiduimagedetail&statnum=girl&ipn=d&z=0&width=0&height=0&ie=utf-8&in=3354&cl=2&lm=-1&st=&rn=1&di=&ln=1999&fmq=1378374347070_R&ic=&s=&se=&sme=0&tab=&face=&istype=&ist=&jit=&ori_query=`$encoded_word`"%}{%$tplData.url="`$resultUrl`&fr=ala_meinv&word=`$encoded_word`"%}{%foreach from=$tplData.data.UavatarProxy.ResultArray item=imgItem key=imgKey%} {%$imgItem.FromPageSummary=""%} {%$imgItem.DisplayTag=$imgItem.DisplayTag|escape:javascript%} {%$imgItem.SetTitle=""%} {%$tplData.data.UavatarProxy.ResultArray[$imgKey]=$imgItem%}{%/foreach%}{%if $extData.feData.id>1%} {%$cacheWidth=105%} {%$firstLineWidth=$maxWidth-$cacheWidth%} {%$onlyOneLine=1%} {%$lineHeight=120%} {%$lineClass="op-img-covers-divide-low"%} {%else%} {%$cacheWidth=140%} {%$firstLineWidth=$maxWidth%} {%$lineHeight=160%} {%$lineClass="op-img-covers-divide-high"%}{%/if%}{%/block%}{%block name='content'%}<div class="op-img-covers-desktop-cont"> <div class="{%$lineClass|escape:none%}"> {%foreach from=$tplData.data.UavatarProxy.ResultArray item=imgItem name=imgDatas%} {%if $topWidth<$firstLineWidth%} {%$itemWidth=($imgItem.ImageWidth/($imgItem.ImageHeight/$lineHeight))|string_format:"%d"%} {%$topWidth=$topWidth+$itemWidth%} {%$item1Index=$smarty.foreach.imgDatas.index%} {%if $tplData.data.UavatarProxy.alaImageSearchTagNum > 1%} {%$searchWord = $tplData.data.UavatarProxy.alaImageTagList[$item1Index].name%} {%/if%} <a target="_blank" href="{%$resultUrl%}&fr=ala_meinv2&word={%$tplData.data.UavatarProxy.avatarTagZero|escape:url%}%20{%if $tplData.data.UavatarProxy.queryTagLevel == 0%}{%$tplData.data.UavatarProxy.avatarTagDisplayList[0].name|escape:url%}%20{%/if%}{%$tplData.data.UavatarProxy.avatarTagOne|escape:url%}%20{%$tplData.data.UavatarProxy.avatarTagTwo|escape:url%}%20{%$searchWord|escape:url%}" class="op-img-covers-link-type op-img-covers-top-pics {%$lineClass|escape:none%}" data-index="index{%$item1Index%}"> <img src="{%$imgItem.SmallURL%}" class="op-img-covers-link-imgs" style="width:{%$itemWidth%}px;height:{%$lineHeight|escape:none%}px;"> <div class="op-img-covers-cell-bar"> <span class="op-img-covers-cell-num">{%$tplData.data.UavatarProxy.alaImageTagList[$item1Index].name|escape:none%}</span> </div> </a> {%/if%} {%/foreach%} {%if $onlyOneLine==1%} <a target="_blank" href="http://image.baidu.com/channel?c=%E7%9C%9F%E4%BA%BA%E7%A7%80%E5%9C%BA&fm=aladdin" class="op-img-covers-link-type {%$lineClass|escape:none%}" style="width:{%$cacheWidth|escape:none%}px;"> <img src="{%$showImg|escape:none%}" class="op-img-covers-link-imgs" style="height:120px;"> <div class="op-img-covers-cell-bar"> <span class="op-img-covers-cell-num">真人视频互动</span> </div> </a> {%/if%} {%$topWidth=0%} {%$item2Index=$item1Index%} </div> {%if $extData.feData.id <= 1%} <div class="{%$lineClass|escape:none%}"> {%foreach from=$tplData.data.UavatarProxy.ResultArray item=imgItem name=imgDatas%} {%if $item1Index < $smarty.foreach.imgDatas.index%} {%if $topWidth<=$maxWidth - $cacheWidth%} {%$itemWidth=($imgItem.ImageWidth/($imgItem.ImageHeight/$lineHeight))|string_format:"%d"%} {%$topWidth=$topWidth+$itemWidth%} {%$item2Index=$smarty.foreach.imgDatas.index%} {%if $tplData.data.UavatarProxy.alaImageSearchTagNum > 1%} {%$searchWord = $tplData.data.UavatarProxy.alaImageTagList[$item2Index].name%} {%/if%} <a target="_blank" href="{%$resultUrl%}&fr=ala_meinv2&word={%$tplData.data.UavatarProxy.avatarTagZero|escape:url%}%20{%if $tplData.data.UavatarProxy.queryTagLevel == 0%}{%$tplData.data.UavatarProxy.avatarTagDisplayList[0].name|escape:url%}%20{%/if%}{%$tplData.data.UavatarProxy.avatarTagOne|escape:url%}%20{%$tplData.data.UavatarProxy.avatarTagTwo|escape:url%}%20{%$searchWord|escape:url%}"  class="op-img-covers-link-type op-img-covers-bottom-pics {%$lineClass|escape:none%}" data-index="index{%$item2Index%}"> <img src="{%$imgItem.SmallURL%}"  class="op-img-covers-link-imgs" style="width:{%$itemWidth%}px;height:{%$lineHeight|escape:none%}px;"> <div class="op-img-covers-cell-bar"> <span class="op-img-covers-cell-num">{%$tplData.data.UavatarProxy.alaImageTagList[$item2Index].name|escape:none%}</span> </div> </a> {%/if%} {%/if%} {%/foreach%} <a target="_blank" href="http://image.baidu.com/channel?c=%E7%9C%9F%E4%BA%BA%E7%A7%80%E5%9C%BA&fm=aladdin" class="op-img-covers-link-type {%$lineClass|escape:none%}" style="width:{%$cacheWidth|escape:none%}px;"> <img src="{%$showImg|escape:none%}" class="op-img-covers-link-imgs" style="width:{%$cacheWidth|escape:none%}px;height:{%$lineHeight|escape:none%}px;"> <div class="op-img-covers-cell-bar"> <span class="op-img-covers-cell-num">真人视频互动</span> </div> </a> </div> {%/if%} <a target="_blank" class="op-img-covers-hoverview op-img-covers-hover"></a></div>{%$arrLength=$tplData.data.UavatarProxy.avatarTagDisplayList|@count%}{%if $arrLength>2%} {%$arrLength=2%}{%/if%}<div class="c-gap-top-small c-gap-bottom-small"> {%if $tplData.data.UavatarProxy.avatarTagLevel==0%} {%$arrIndex=1%} {%foreach array_slice($tplData.data.UavatarProxy.avatarTagDisplayList, $arrIndex, $arrLength) item=subItem name=tagDatas%} {%$index=$smarty.foreach.tagDatas.index+$arrIndex%} {%$subLen=$subItem.sub_tag_array|@count%} {%if $subLen!=0%} <div class="c-gap-top-small c-gap-bottom-small"> <span class="op-img-covers-class-title">{%$subItem.name|escape:none%}：</span> <span class="op-img-covers-link-menu op-img-covers-tagCon{%$index%}"> {%foreach from=$subItem.sub_tag_array item=tagItem name=subTag%} <a href="{%$resultUrl%}&fr=ala_meinv1&alaTag={%$index%}&word={%$key|escape:url%}%20{%$subItem.name|escape:url%}%20{%$tagItem.name|escape:url%}" class="op-img-covers-class op-img-covers-tag{%$index|escape:none%}" target="_blank">{%$tagItem.name|escape:html|escape:none%}</a> {%/foreach%} <a href="{%$resultUrl%}&fr=ala_meinv1&alaLink={%$index%}&word={%$key|escape:url%}%20{%$subItem.name|escape:url%}" target="_blank" class="op-img-covers-class op-img-covers-tag-more op-img-covers-more{%$index%}">更多</a> </span> </div> {%/if%} {%/foreach%} {%else%} {%$arrLength=1%} {%$arrIndex=0%} <div class="c-gap-top-small c-gap-bottom-small"> <span class="op-img-covers-class-title">{%$tplData.data.UavatarProxy.avatarFatherSelectTag%}：</span> <span class="op-img-covers-link-menu op-img-covers-tagCon0"> {%foreach from=$tplData.data.UavatarProxy.avatarTagDisplayList item=tagItem name=subTag%} <a href="{%$resultUrl%}&fr=ala_meinv1&alaTag=0&word={%$key|escape:url%}%20{%$tplData.data.UavatarProxy.avatarFatherSelectTag|escape:url%}%20{%$tagItem.name|escape:url%}" class="op-img-covers-class op-img-covers-tag0" target="_blank">{%$tagItem.name|escape:html|escape:none%}</a> {%/foreach%} <a href="{%$resultUrl%}&fr=ala_meinv1&alaLink=0&word={%$key|escape:url%}%20{%$tplData.data.UavatarProxy.avatarFatherSelectTag|escape:url%}" target="_blank" class="op-img-covers-class op-img-covers-tag-more op-img-covers-more0">更多</a> </span> </div> {%/if%}</div><script >
    A.setup({
        datas:'{%json_encode($tplData.data.UavatarProxy.ResultArray)%}',
        topImgsNum:parseInt('{%$item1Index+1|escape:javascript%}'),
        bottomImgsNum:parseInt('{%($item2Index-$item1Index)|escape:javascript%}'),
        tagArrLength:parseInt('{%$arrLength|escape:javascript%}'),
        lineHeight:parseInt('{%$lineHeight|escape:javascript%}'),
        cacheWidth:parseInt('{%$cacheWidth|escape:javascript%}'),
        onlyOneLine:parseInt('{%$onlyOneLine|escape:javascript%}'),
        arrIndex:parseInt('{%$arrIndex|escape:javascript%}')
    });
</script>{%/block%}{%block name="foot"%}<div class="c-gap-top-small"><span class="c-showurl">{%fe_fn_c_showurl showurl=$showUrl showlamp=false%}&nbsp;-&nbsp;<a href="http://image.baidu.com/i?tn=baiduimage&ct=201326592&lm=-1&cl=2&nc=1&ala=4&fr=ala_meinv1&alaLink=4&word={%$encoded_word|escape:none%}&ori_query={%$encoded_word|escape:none%}&ie=utf-8#z=0&width=0&height=0&pn=0" target="_blank" class="op_trickimage_showurl c-gray">查看全部{%$all_img_num_str%}张图片</a></span></div>{%/block%}