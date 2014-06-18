<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<meta name = "viewport" content = "initial-scale = 1.0, user-scalable = no">
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{cache-buster}" />
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->
	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<script src="{relative_path}/socket.io/socket.io.js"></script>
	<script src="{relative_path}/nodebb.min.js?{cache-buster}"></script>
	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor',
				'buzz': '../../vendor/buzz/buzz.min'
			}
		});
	</script>

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

      <div id="nodebb-menu">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</div>
	</div>

	<input id="csrf_token" type="hidden" template-variable="csrf" value="{csrf}" />

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->