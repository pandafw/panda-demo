密码再设定 - <${action.getText('site-name')}>
<p>${name?html}先生</p>

<p>谢谢您使用<@p.text name="site-name"/>。</p>

<pre>
请点击下面的链接来重置密码。
<@p.url var="url" action="./reset" forceAddSchemeHostAndPort="true"><@p.param name="token" value=token/></@p.url>
<a href="${vars.url}">${vars.url}</a>

谢谢。

The <@p.text name="site-name"/> Team
</pre>
<br>

