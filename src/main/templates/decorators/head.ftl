<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<meta property="s:static" content="${static!}"></meta>
<meta property="s:base" content="${base!}"></meta>
<meta property="s:google_analytics" content="${action.getText('google-analytics', '')}"></meta>
<title><#if title?has_content>${title} | </#if><@p.text name="site-name"/></title>
<link rel="shortcut icon" href="${base}/favicon.ico"/>
<@p.link css="true" panda="true" cdn="getText('site-cdn', 'false')" debug="getText('site-debug', 'false')"/>
<link href="${base}/css/site.css" rel="stylesheet" type="text/css"/>
