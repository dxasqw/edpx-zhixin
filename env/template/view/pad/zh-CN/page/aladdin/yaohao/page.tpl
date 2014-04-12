{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='btn'%}{%fe_fn_c_css css='input'%}{%fe_fn_c_css css='dropdown2'%}.op-yaohao-search-btn{float:left}.op-yaohao-list{display:none}.op-yaohao-list-table td{height:24px;line-height:24px;font-weight:bold;font-size:1.07em}.op-yaohao-list-table-td-number{padding-left:10px}.op-yaohao-list-more{display:none;height:20px;line-height:20px;*width:80px;cursor:pointer}.op-yaohao-list-more-text-box,.op-yaohao-list-less-text-box{float:left;color:#00c;cursor:pointer;text-decoration:underline}.op-yaohao-tip{color:#666}.op-yaohao-msg-container .op-yaohao-msg{display:none;color:#c{%*i*%}00;font-size:1.07em;margin-top:13px}.op-yaohao-msg-container .op-yaohao-msg.op-yaohao-msg-searching{color:#666}.op-yaohao-sms{color:#666}.op-yaohao-sms-switch-btn{color:#00c;text-decoration:underline;cursor:pointer}.c-border .op-yaohao-code-input{width:235px}.c-border .op-yaohao-vcode-input,.c-border .op-yaohao-phone-input{width:122px;margin-right:4px}.c-border .op-yaohao-sms-label{width:66px;height:26px;line-height:26px}.op-yaohao-sms-form{color:#666}.op-yaohao-sms-row{padding-top:2px;padding-b{%*i*%}ottom:2px}.op-yaohao-code-tip{padding-left:65px}.op-yaohao-sms-commit{padding-left:65px}.op-yaohao-sms-code-error,.op-yaohao-sms-phone-error,.op-yaohao-sms-vcode-error,.op-yaohao-sms-error{color:#c00;position:relative;top:2px;*display:inline-block;*height:24px;*line-height:24px}.op-yaohao-phone-btn-disabled{color:#666;cursor:default}.op-yaohao-phone-btn-disabled:hover{border-color:#d8d8d8}.op-yaohao-phone-btn-disabled:active{border-color:#d8d8d8;background-color:#f9f9f9;box-shadow:none;-webkit-b{%*i*%}ox-shadow:none;-moz-box-shadow:none;-o-box-shadow:none}.op-yaohao-sms-result-success,.op-yaohao-sms-result-fail{height:46px;padding-top:28px;background-color:#fbfbfb;text-align:center}.op-yaohao-sms-result-success span,.op-yaohao-sms-result-fail span{margin-top:28px;height:18px;line-height:18px}.op-yaohao-sms-result-success i,.op-yaohao-sms-result-fail i{_vertical-align:middle}.op-yaohao-sms-login-btn{display:none}.op-yaohao-sms-showlogin .op-yaohao-sms-login-btn{display:inline}.op-yaohao-sms-sh{%*i*%}owlogin .op-yaohao-sms-switch-btn{display:none}</style> <div class="c-row"> <div class="c-span6"> <div class="c-dropdown2 op-yaohao-time-dropdown"> <div class="c-dropdown2-btn-group"> <div class="c-dropdown2-btn">{%if $tplData.time[0]['text']%}{%$tplData.time[0]['text']%}{%/if%}</div> <div class="c-dropdown2-btn-icon"> <div class="c-dropdown2-btn-icon-border"> <i class="c-icon c-icon-triangle-down"></i> </div> </div> </div> <div class="c-dropdown2-menu"> <div class="c-dropdown2-menu-inner"> <ul class="c-dropdown2-menubox"> {%foreach $tplData.time as $item%} <li class="c-dropdown2-option" data-value="{%$item.value|escape%}">{%$item.text|escape%}</li> {%/foreach%} </ul> </div> </div> </div> </div> <div class="c-span10"> <input class="op-yaohao-input c-input c-input-large" maxlength="13" placeholder="{%$tplData.inputtip|escape%}" /> </div> <div class="op-yaohao-search-btn c-btn c-btn-primary" data-click="{fm:'beha'}">{%$tplData.btn|escape%}</div> </div> <div class="op-yaohao-msg-container c-row"> <div class="op-yaohao-msg op-yaohao-msg-0 c-gap-top">{%$tplData.msg[0]['empty']|escape%}</div> <div class="op-yaohao-msg op-yaohao-msg-1 c-gap-top">{%$tplData.msg[0]['illegal']|escape%}</div> <div class="op-yaohao-msg op-yaohao-msg-2 c-gap-top">{%$tplData.msg[0]['rsnameempty']|escape%}</div> <div class="op-yaohao-msg op-yaohao-msg-3 c-gap-top">{%$tplData.msg[0]['rscodeempty']|escape%}</div> <div class="op-yaohao-msg op-yaohao-msg-4 c-gap-top">{%$tplData.msg[0]['rsnamesuccesstip']|escape%}</div> <div class="op-yaohao-msg op-yaohao-msg-5 c-gap-top"> <div>{%$tplData.msg[0]['rscodesuccess']|escape%}</div> <div class="c-gap-top-small">{%build_search_url_limit_ubburl content=$tplData.msg[0]['rscodesuccesstip']%}</div> </div> <div class="op-yaohao-msg op-yaohao-msg-6 c-gap-top">{%$tplData.msg[0]['rserror']|escape%}</div> <div class="op-yaohao-msg op-yaohao-msg-10 op-yaohao-msg-searching c-gap-top">查询中...</div> </div> <div class="op-yaohao-list c-row c-gap-top"> <div class="op-yaohao-list-box"></div> <div class="op-yaohao-list-more c-gap-top-small OP_LOG_BTN" data-click="{fm:'beha'}"> <div class="op-yaohao-list-more-text-box">查看更多<i class="c-icon c-icon-triangle-down"></i></div> <div class="op-yaohao-list-less-text-box" style="display:none;">收起<i class="c-icon c-icon-triangle-up"></i></div> </div> </div><d{%*i*%}iv class="c-row c-gap-top op-yaohao-sms" style="display:none;">{%$tplData.sms[0]['tip']|escape%}<span class="op-yaohao-sms-switch-btn OP_LOG_BTN" data-click="{fm:'beha'}">{%$tplData.sms[0]['text']|escape%}<i class="c-icon c-icon-triangle-down op-yaohao-sms-switch-btn-icon"></i></span><a href="javascript:;" data-click="{fm:'beha'}" class="op-yaohao-sms-login-btn">{%$tplData.sms[0]['text']|escape%}<i class="c-icon c-icon-triangle-down"></i></a></div><div class="c-gap-top op-yaohao-sms-content" style="display:none"><div class="op-yaohao-sms-form"> <div class="op-yaohao-sms-row c-clearfix"> <div class="c-span c-span4 c-span-last op-yaohao-sms-label">申请编码：</div> <div class="c-span c-span20"> <input class="c-input op-yaohao-code-input" maxlength="13" /><span class="c-gap-left op-yaohao-sms-code-error"></span> </div> </div> <div class="op-yaohao-sms-row c-gap-top-small op-yaohao-code-tip"> {%build_search_url_limit_ubburl content={%$tplData.sms[0].codetip%}%} </div> <div class="op-yaohao-sms-row c-clearfix c-gap-top-small"> <div class="c-span c-span4 c-span-last op-yaohao-sms-label">手机号：</div> <div class="c-span"> <input class="c-input op-yaohao-phone-input" maxlength="11" /> <button class="c-btn op-yaohao-phone-btn" data-click="{fm:'beha'}">获取校验码</button> <span class="c-gap-left op-yaohao-sms-phone-error"></span> </div> </div> <div class="op-yaohao-sms-row c-clearfix c-gap-top"> <div class="c-span c-span4 c-span-last op-yaohao-sms-label">校验码：</di{%*i*%}v> <div class="c-span"> <input class="c-input op-yaohao-vcode-input" maxlength="4" /><span class="c-gap-left op-yaohao-sms-vcode-error"></span> </div> </div> <div class="op-yaohao-sms-row c-clearfix c-gap-top op-yaohao-sms-commit"> <button class="c-btn c-btn-primary op-yaohao-sms-commit-btn" data-click="{fm:'beha'}">确认订制</button><span class="c-gap-left op-yaohao-sms-error"></span> </div> </div><div class="op-yaohao-sms-result-success" style='display:none;'> <i class="c-icon c-icon-right-large c-{%*i*%}gap-icon-right-small"></i><span>{%$tplData.sms[0]['status0']%}</span></div><div class="op-yaohao-sms-result-fail" style='display:none;'> <i class="c-icon c-icon-wrong-large c-gap-icon-right-small"></i><span>{%$tplData.sms[0]['status8']%}</span></div></div> <div class="c-row c-gap-top op-yaohao-tip">{%$tplData.tip|escape%}</div><script type="text/javascript" >
    A.setup({
      	'disablesms':!!parseInt('{%$tplData.disablesms%}'),
      	'city': '{%$tplData.city%}',
        'inputtip': '{%$tplData.inputtip|escape:'javascript'|escape:'html'%}',
      	'sms':{%json_encode($tplData.sms[0])%}
    });
</script><script data-merge>A.setup(function(){var _this = this,inputtip = _this.data.inputtip,$input = _this.find('.op-yaohao-input'),$btn = _this.find('.op-yaohao-search-btn'),$list = _this.find('.op-yaohao-list'),$box = _this.find('.op-yaohao-list-box'),moretext = _this.data.moretext,$more = _this.find('.op-yaohao-list-more'),$moreTextBox = _this.find('.op-yaohao-list-more-text-box'),$lessTextBox = _this.find('.op-yaohao-list-less-text-box'),$smsSwitchBtn = _this.find('.op-yaohao-sms-switch-b{%*i*%}tn'),$smsSwitchBtnIcon = _this.find('.op-yaohao-sms-switch-btn-icon'),$loginBtn = _this.find( '.op-yaohao-sms-login-btn' ),$smsCommit = _this.find('.op-yaohao-sms-commit-btn'),$smsbox = _this.find('.op-yaohao-sms-content'),$smsForm = _this.find('.op-yaohao-sms-form'),$smsResultSuccess = _this.find('.op-yaohao-sms-result-success'),$smsResultFail = _this.find('.op-yaohao-sms-result-fail'),$phoneBtn = _this.find('.op-yaohao-phone-btn'),$smsbar = _this.find('.op-yaohao-sms'),$code = _this.find('.op-{%*i*%}yaohao-code-input'),$phone = _this.find('.op-yaohao-phone-input'),$vcode = _this.find('.op-yaohao-vcode-input'),smsErrors = {code: _this.find('.op-yaohao-sms-code-error').get(0),phone: _this.find('.op-yaohao-sms-phone-error').get(0),vcode: _this.find('.op-yaohao-sms-vcode-error').get(0),sms: _this.find('.op-yaohao-sms-error').get(0)},searching = false,specialPattern = new RegExp("[a-zA-Z`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]"),phonePattern = /^(1(([35][0-9])|(47)|[8][012567{%*i*%}89]))\d{8}$/,$searchingTip = _this.find('.op-yaohao-msg-searching'),$dropdownContainer = _this.find('.op-yaohao-time-dropdown'),dropdown = null,currentMsg = null,statusMsgPrefix = 'op-yaohao-msg',msgArr = [],searchingcode = '',phoneTimer = null,ajaxFinished = false;for(var i = 0; i < 7; i++){msgArr.push(statusMsgPrefix + '-' + i);}A.use('dropdown21', function(){ dropdown = A.ui.dropdown21($dropdownContainer.get(0));$btn.click(function(){search(dropdown.getValue()); });$input.keyup(function(e){if{%*i*%}(e.keyCode == 13){search(dropdown.getValue());}});});function showTip(status){$searchingTip.css('display','none');if(currentMsg){currentMsg.style.display = 'none';}if(status !== 4){$list.css('display','none');}var mgs = _this.find('.'+msgArr[status]).get(0);if(mgs){mgs.style.display = 'block';currentMsg = mgs;}}function check(val){if(currentMsg){currentMsg.style.display = 'none';}var rs = true;if(val === '' || val === inputtip){showTip(0); rs = false;}else if((/^\d+$/.test(val) && val.length != {%*i*%}13) || specialPattern.test(val)){showTip(1); rs = false;}return rs;}function checkLogin() {return !!bds.comm.user;}function showList(data){var html = '<table class="op-yaohao-list-table" cellspacing="0" cellpadding="0">';for(var i = 0, item; item = data[i]; i++){if(i == 0 || i == 5){var hide = (i==5) ? 'style="display:none;"' : '';html += '<tbody class="op-yaohao-list-table-tbody'+i+'" '+hide+'>';}html += '<tr><td>'+item['name']+'</td><td class="op-yaohao-list-table-td-number">'+item['tid']+'</t{%*i*%}d></tr>';if(i == 4 || (data.length > 5 && i == data.length - 1)){html += '</tbody>';}}html += '</table>';$more.css('display','none');if(data.length > 5){$more.css('display','inline-block');toggleMore('fold');}$box.html(html);$list.css('display','block');}function search(searchDate){resetSms();var val = $.trim($input.val());if(!searchDate){return;}if(!check(val)){searchingcode = '';return;}if(searching){return;}searching = true;$searchingTip.css('display','block');var query = encodeURIComponent(_{%*i*%}this.data.city + '__' + searchDate); var iscode = (/^\d{13}$/.test(val));searchingcode = iscode ? val : ''; var url = 'http://opendata.baidu.com/api.php?query='+query+'&name='+encodeURIComponent(val)+'&resource_id=6722&ie=utf-8&oe=utf-8&format=json&tn=baidu&from_mid=1&t=' + new Date().getTime(); $.ajax({url:url,dataType:"jsonp",scriptCharset:"utf-8",timeout:6000,jsonp:"cb",error: function(){showTip(6);searching = false;},success: function(data){if(ajaxFinished) return;searching = false;if(!_this{%*i*%}.data.disablesms){$smsbar.css('display','');}if(data && data.status == 0 && data.data && data.data[0] && data.data[0].disp_data){data = data.data[0].disp_data;if(iscode){if(data.length == 1){showTip(5); return;}else{showTip(3); return;}}else{if(data.length === 0){showTip(2); return;}else{showTip(4);showList(data);}}}else{showTip(6); return;}}});}function toggleMore(fold){if(fold === 'unfold'){$moreTextBox.css('display','none');$lessTextBox.css('display','');}else{$moreTextBox.css('display','');${%*i*%}lessTextBox.css('display','none');}}$more.click(function(){var $morelist = _this.find('.op-yaohao-list-table-tbody5');if($morelist.length>0){if($morelist.css('display') == 'none'){toggleMore('unfold');$morelist.css('display','');}else{toggleMore('fold');$morelist.css('display','none');}}});$smsSwitchBtn.click(function(){$smsbox.css('display',$smsbox.css('display') === 'none' ? '' : 'none');$code.val(searchingcode || '');if($smsSwitchBtnIcon.hasClass('c-icon-triangle-down')){$smsSwitchBtnIcon.rem{%*i*%}oveClass('c-icon-triangle-down').addClass('c-icon-triangle-up');}else{$smsSwitchBtnIcon.removeClass('c-icon-triangle-up').addClass('c-icon-triangle-down');}});$loginBtn.on( 'click', function(e) {e.preventDefault();bds.se.login.open(function(stat, user){if(stat == 1){$smsbar.removeClass( 'op-yaohao-sms-showlogin' );$smsSwitchBtn.trigger( 'click' );}});});$phoneBtn.on('click', function(){smsErrors['code'].style.display = 'none';smsErrors['phone'].style.display = 'none';if(!checkCode()){return;}if({%*i*%}!checkPhone()){return;} var limit = 60;$phoneBtn.html((limit--)+'秒后重新获取校验码'); $phone.get(0).disabled = true;$phoneBtn.get(0).disabled = true;$phoneBtn.addClass('op-yaohao-phone-btn-disabled');$.ajax({url:'http://opendata.baidu.com/yaohao_vcode.php?phone='+encodeURIComponent($phone.val())+'&t='+new Date().getTime(),dataType:"jsonp",jsonp:"cb",timeout:6000,success: function(data){if(ajaxFinished) return;if(phoneTimer){clearInterval(phoneTimer); }phoneTimer = setInterval(function(){ $phoneBtn.html({%*i*%}(limit--)+'秒后重新获取校验码'); if(limit === 0){clearInterval(phoneTimer);$phone.get(0).disabled = false;$phoneBtn.get(0).disabled = false;$phoneBtn.removeClass('op-yaohao-phone-btn-disabled');$phoneBtn.html('重新获取校验码'); }},1000); }}); });function bindInputCheckEvent(){$.each({code: $code, phone: $phone, vcode: $vcode}, function(k, v){$(v).on('focus', function(){ smsErrors[k].style.display = 'none';});});}bindInputCheckEvent();$smsCommit.click(function(){sms(); });function sms(){if(!checkSms()){return;}${%*i*%}.ajax({url:'http://opendata.baidu.com/yaohao_dingyue.php?location='+encodeURIComponent(_this.data.city)+'&apiuid='+encodeURIComponent($.getCookie('BAIDUID'))+'&tid='+encodeURIComponent($code.val())+'&phone='+encodeURIComponent($phone.val())+'&vcode='+encodeURIComponent($vcode.val())+'&t='+new Date().getTime(),dataType:"jsonp",jsonp:"cb",timeout:6000,success: function(data){if(ajaxFinished) return;var status = 4;if(data){ status = data.status;} switch(status){case '0':$smsForm.css('display','none{%*i*%}');$smsResultSuccess.css('display','');break;case '5':smsTip('vcode', _this.data.sms['status5']);break;case '8': $smsForm.css('display','none');$smsResultFail.css('display','');break;default :smsTip('sms', _this.data.sms['error']);break;} }}); }function checkPhone(){var rs = true; if(!$phone.val()){smsTip('phone', '请输入手机号码');rs = false;}else if(!phonePattern.test($phone.val())){smsTip('phone', '手机号码有误，请重新输入');rs = false;}return rs;} function checkVCode(){var rs = true; if(!$vcode.val()){smsTip('{%*i*%}vcode', '请输入校验码');rs = false;}if(!/^\d{4}$/.test($vcode.val())){smsTip('vcode', '校验码错误');rs = false;}return rs;}function checkCode(){var rs = true; if(!$code.val()){smsTip('code', '请输入申请编码');rs = false;}else if(!/^\d{13}$/.test($code.val())){smsTip('code', '申请编码有误，请重新输入');rs = false;}return rs;}function clearError(){smsErrors['code'].style.display = 'none';smsErrors['phone'].style.display = 'none';smsErrors['vcode'].style.display = 'none';smsErrors['sms'].style.display = 'none';}function checkSm{%*i*%}s(){clearError();var rs = checkCode();if(rs){rs = checkPhone();if(rs){rs = checkVCode();}}return rs;}function smsTip(type, text){smsErrors[type].innerHTML = text;smsErrors[type].style.display = '';}function resetSms(){ $smsbox.css('display','none');$smsForm.css('display','');$smsResultSuccess.css('display','none');$smsResultFail.css('display','none');$smsSwitchBtnIcon.removeClass('c-icon-triangle-up').addClass('c-icon-triangle-down');$smsbar.toggleClass( 'op-yaohao-sms-showlogin', !checkLogin() {%*i*%});clearError(); $vcode.val('') ; if(phoneTimer){clearInterval(phoneTimer);}$phone.get(0).disabled = false;$phoneBtn.get(0).disabled = false;$phoneBtn.removeClass('op-yaohao-phone-btn-disabled');$phoneBtn.html('获取校验码'); }$input.val(inputtip);$input.css('color','#666');$input.focus(function(){if($input.val() == inputtip){$input.val('');$input.css('color','#000');}});$input.blur(function(){if($.trim($input.val()) == ''){$input.val(inputtip);$input.css('color','#666');}});this.dispose = function(){c{%*i*%}learInterval(phoneTimer); if(!ajaxFinished){ajaxFinished = true;}dropdown&&dropdown.dispose&&dropdown.dispose();};});</script>{%/block%}