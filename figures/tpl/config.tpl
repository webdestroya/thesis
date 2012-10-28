#parse( "includes/header.vm" )
<h1>Configuration</h1>
<form method="post" action="/gui/config/">
<fieldset><legend>Server</legend>
<dl>
<dt>#form_label("IP Address", "Default is 0.0.0.0:27000")</dt>
<dd><input type="text" name="config.listen.host" value="$config_listen_host" /></dd>
</dl>
<dl>
<dt>#form_label("Tickrate", "How many times does the ticker loop per second")</dt>
<dd><input type="text" name="config.server.tickrate" value="$config_server_tickrate" /></dd>
</dl>
...