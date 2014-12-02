<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<meta name = "viewport" content = "initial-scale = 1.0, user-scalable = no">
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />
	<link rel="stylesheet" type="text/css" href="{relative_path}/documents/inair.css?{css-buster}">
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<script src="{relative_path}/nodebb.min.js?{script-buster}"></script>
	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor'
			}
		});
	</script>

	<!-- IF useCustomJS -->
	{customJS}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->

</head>

<body>
	<div class="inair header" role="navigation" id="header-menu">
		<div class="loading-bar"></div>
		<div class="container">

<!-- 			<div class="logo">
			  <a href="/">
			    <img alt="InAiR" src="http://inair.tv/wp-content/uploads/2014/03/logo.png">
			  </a>
			</div> -->
			<ul class="site">
			  <li>
			    <a href="/" class="main" style="font-size: 16px; font-weight: 100; position: relative; padding: 15px 0 15px 8px;"><strong>InAir</strong> Developer<span id="alpha" style="position: absolute;font-size: 10px;top: -12px;right: 0;">alpha</span></a>
			  </li>
			</ul>

			<span class="ext-sites rel">
        <span class="on"><a href="/">Forum</a></span>
        <span><a href="/documents/docs.html">API</a></span>
        <span><a href="/knowledgebase/index.php">Guides</a></span>
        <span id="blog_link"><a target="_blank" href="http://blog.inair.tv">Blog</a></span>
        <span id="blog_link"><a target="_blank" href="https://github.com/seespace/inair-sdk/issues">Issues</a></span>
      </span>

      <ul class="nav navbar-nav navbar-right" id="dropdown-menu">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Forum <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="{relative_path}/">Forum</a></li>
            <li><a href="{relative_path}/documents/docs.html">API</a></li>
            <li><a href="{relative_path}/knowledgebase/index.php">Guides</a></li>
            <li><a target="_blank" href="http://blog.inair.tv">Blog</a></li>
            <li><a target="_blank" href="https://github.com/seespace/inair-sdk/issues">Issues</a></li>
          </ul>
        </li>
      </ul>

      <div id="nodebb-menu">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</div>
	</div>

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->
