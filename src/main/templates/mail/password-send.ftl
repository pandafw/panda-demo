Password Reset - <${action.getText('site-name')}>
<p>Hi, ${name?html}</p>

<p>Thanks for using <@p.text name="site-name"/>.</p>

<pre>
Your account's password reset request was received at <@p.date value=assist.systemDate format="datetime"/>.

If you want to reset your password, please click the following link.
<@p.url var="url" action="~/reset" forceAddSchemeHostAndPort="true"><@p.param name="token" value=token/></@p.url>
<a href="${vars.url}">${vars.url}</a>

Thank you.


Sincerely,
The <@p.text name="site-name"/> Team
</pre>
<br>
