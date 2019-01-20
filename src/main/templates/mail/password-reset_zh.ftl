获取密码 - <${action.getText('site-name')}>
<#-- 会員パスワード変更の送信メール内容 -->
${name}先生

请确认您的密码。
---------------------------------
密码： ${password}
---------------------------------

获取密码
<p>${name?html}先生</p>

<p>谢谢您使用<@p.text name="site-name"/>。</p>

<pre>
${name?html}先生的密码已经被重置了。
密码: ${password?html}

谢谢。

The <@p.text name="site-name"/> Team
</pre>
<br>

