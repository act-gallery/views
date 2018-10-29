<html>
<head>
  <title>${title}</title>
</head>
<body>
<h1>${_app.name()} - ${title}</h1>
<p>
  Hello ${who}
</p>
<ul>
  <#macro opt engine>
    <li>
      <a href="/${engine?lower_case}?who=${engine}">Say hello in ${engine}</a>
    </li>
  </#macro>

  <#macro optInline engine>
    <li>
      <a href="/${engine?lower_case}/inline">Say hello inline ${engine}</a>
    </li>
  </#macro>

  <#macro optError engine>
    <li>
      <a href="/${engine?lower_case}/error">Trigger error in ${engine} template</a>
    </li>
  </#macro>

  <#macro optErrorRuntime engine>
    <li>
      <a href="/${engine?lower_case}/error/runtime">Trigger runtime error in ${engine} template</a>
    </li>
  </#macro>

  <@opt engine="Rythm"/>
  <@opt engine="Beetl"/>
  <@opt engine="Velocity"/>
  <@opt engine="Mustache"/>
  <@opt engine="Thymeleaf"/>
  <li>---</li>
  <@optInline engine="Rythm"/>
  <@optInline engine="Beetl"/>
  <@optInline engine="FreeMarker"/>
  <@optInline engine="Mustache"/>
  <@optInline engine="Velocity"/>
  <@optInline engine="Thymeleaf"/>

  <#if _app.isDev()>
  <li>---</li>
  <@optError engine="Rythm"/>
  <@optError engine="Beetl"/>
  <@optError engine="FreeMarker"/>
  <@optError engine="Mustache"/>
  <@optError engine="Velocity"/>
  <@optError engine="Thymeleaf"/>
  </#if>

  <li>---</li>
  <@optErrorRuntime engine="Rythm"/>
  <@optErrorRuntime engine="Beetl"/>
  <@optErrorRuntime engine="FreeMarker"/>
  <@optErrorRuntime engine="Mustache"/>
  <@optErrorRuntime engine="Velocity"/>
  <@optErrorRuntime engine="Thymeleaf"/>
  <li>---</li>
  <li>
    <a href="/e500">Demonstrate backend server error reporting on dev mode</a>
  </li>
</ul>
</body>

</html>