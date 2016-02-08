<%@ Page Language="VB" AutoEventWireup="false" CodeFile="organisation.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Technical-New Device</title>
    
  <meta charset="utf-8">
  
  <!-- DNS prefetch -->
  <link rel=dns-prefetch href="//fonts.googleapis.com">

  <!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/b/378 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile viewport optimized: j.mp/bplateviewport -->
  <meta name="viewport" content="width=device-width,initial-scale=1">

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory: mathiasbynens.be/notes/touch-icons -->
    <link rel="shortcut icon" type="image/ico" href="../favicon.ico">
  <!-- CSS: implied media=all -->
  <!-- CSS concatenated and minified via ant build script-->
  <link rel="stylesheet" href="../css/style.css"> <!-- Generic style (Boilerplate) -->
    <link rel="stylesheet" href="../css/style2.css"> <!-- Generic style (John Custom) -->
  <link rel="stylesheet" href="../css/960.fluid.css"> <!-- 960.gs Grid System -->
  <link rel="stylesheet" href="../css/main.css"> <!-- Complete Layout and main styles -->
  <link rel="stylesheet" href="../css/buttons.css"> <!-- Buttons, optional -->
  <link rel="stylesheet" href="../css/lists.css"> <!-- Lists, optional -->
  <link rel="stylesheet" href="../css/icons.css"> <!-- Icons, optional -->
  <link rel="stylesheet" href="../css/notifications.css"> <!-- Notifications, optional -->
  <link rel="stylesheet" href="../css/typography.css"> <!-- Typography -->
  <link rel="stylesheet" href="../css/forms.css"> <!-- Forms, optional -->
  <link rel="stylesheet" href="../css/tables.css"> <!-- Tables, optional -->
  <link rel="stylesheet" href="../css/charts.css"> <!-- Charts, optional -->
  <link rel="stylesheet" href="../css/jquery-ui-1.8.15.custom.css"> <!-- jQuery UI, optional -->
  <!-- end CSS-->
  
  <!-- Fonts -->
  <link href="http://localhost:41606/fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet" type="text/css">
  <!-- end Fonts-->

  <!-- More ideas for your head here: h5bp.com/d/head-Tips -->

  <!-- All JavaScript at the bottom, except for Modernizr / Respond.
       Modernizr enables HTML5 elements & feature detects; Respond is a polyfill for min/max-width CSS3 Media Queries
       For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
  <script src="js/libs/modernizr-2.0.6.min.js"></script>
</head>
<body id="top">
    <form id="form1" runat="server">
       <!-- Begin of #container -->
  <div id="container">
  	<!-- Begin of #header -->
    <div id="header-surround"><header id="header">
    	
    	<!-- Place your logo here -->
		<img src="../img/logo-slogan.png" alt="help4IT" class="logo">
		
		<!-- Divider between info-button and the toolbar-icons -->
		<div class="divider-header divider-vertical"></div>
		
		<!-- Info-Button -->
		
		
			<!-- Modal Box Content -->
			<div id="info-dialog" title="About" style="display: none;">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
			</div> <!--! end of #info-dialog -->
		
		<!-- Begin from Toolbox -->
		
		
		<!-- Begin of #user-info -->
		<div id="user-info">
			<p>
				<span class="messages">Hello <a href="javascript:void(0);"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></a> </span>
				
			</p>
		</div> <!--! end of #user-info -->
		
    </header></div> <!--! end of #header -->
    
    <div class="fix-shadow-bottom-height"></div>
	
	<!-- Begin of Sidebar -->
    <aside id="sidebar">
    	
    	<!-- Search -->
    	<div id="search-bar">
			
		</div> <!--! end of #search-bar -->
		
		<!-- Begin of #login-details -->
		<section id="login-details">
    		<img class="img-left framed" src="../img/misc/avatar_small.png" alt="Hello Admin">
    		<h3>Logged in as</h3>
    		<h2><a class="user-button" href="javascript:void(0);"><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>&nbsp;<span class="arrow-link-down"></span></a></h2>
    		<ul class="dropdown-username-menu">
    			<li><a href="#">Profile</a></li>
    			<li><a href="#">Settings</a></li>
    			<li><a href="#">Messages</a></li>
    			<li><a href="#">Logout</a></li>
    		</ul>
    		
    		<div class="clearfix"></div>
  		</section> <!--! end of #login-details -->
    	
    	
        <!-- Begin of Navigation -->
    	<nav id="nav">
	    	<ul class="menu collapsible shadow-bottom">
	    		
	    		<li>
	    			<a href="javascript:void(0);"><img src="../img/icons/packs/fugue/16x16/clipboard-list.png">Administration</a>
	    			<ul class="sub">
	    				<li><a href="organisation.aspx">Organisation</a></li>
	    				<li><a href="devices.aspx">Devices</a></li>
                        <li><a href="credentials.aspx">Credentials</a></li>
	    				<li><a href="applications.aspx">Applications</a></li>
                        <li><a href="internetworking.aspx">Internetworking</a></li>
                        <li><a href="pictures.aspx">Pictures</a></li>
                        <li><a href="documents.aspx">Documents</a></li>
                        <li><a href="../AccessControl/Default.aspx">AccessControl</a></li>
	    			</ul>
	    		</li>
	    		
	    		
	    	</ul>
    	</nav> 
    	 <!--! end of #nav -->
    	
    </aside> <!--! end of #sidebar -->
    
    <!-- Begin of #main -->
    <div id="main" role="main">
    	
    	<!-- Begin of titlebar/breadcrumbs -->
		<div id="title-bar">
			<ul id="breadcrumbs">
				<li><a href="../technical/Default.aspx" title="Home"><span id="bc-home"></span></a></li>
				<li class="no-hover">Technical</li>
			</ul>
		</div> <!--! end of #title-bar -->
		
		<div class="shadow-bottom shadow-titlebar"></div>
		
		<!-- Begin of #main-content -->
		<div id="main-content">
			<div class="container_12">
			
			<div class="grid_12">
				<h1>help4Portal</h1>
				<p>The Mother of All Portals</p>
				
				<div class="alert info"><span class="hide">x</span><strong>Welcome to Technical, customer support information</strong></div>
			</div>
			
				<div class="grid_12">
				<div class="block-border">
					<div class="block-header">
						<h1>Devices</h1><span></span>
					</div>
					<div class="block-content">
						<ul class="shortcut-list">
							<li>
								<a href="deactivate-device.aspx">
									<img src="../img/icons/packs/crystal/48x48/apps/exit.png">
									Deactivate
								</a>
							</li>
							<li>
								<a href="new-device.aspx">
									<img src="../img/icons/packs/crystal/48x48/apps/bell.png">
									New
								</a>
							</li>
							<li>
								<a href="edit-device.aspx">
									<img src="../img/icons/packs/crystal/48x48/apps/file-manager.png">
									Edit
								</a>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
			</div>
			
                <div class="grid_6">
				<div class="block-border">
					<div class="block-header">
						<h1>New Device</h1><span></span>
					</div>
					<div class="block-content">

                        </div></div></div>
                <div class="grid_6">
				<div class="block-border">
					<div class="block-header">
						<h1>Device help</h1><span></span>
					</div>
					<div class="block-content">

                        </div></div></div>

			
			
			

			
			
			
			
			<div class="clear height-fix"></div>

		</div></div> <!--! end of #main-content -->
  </div> <!--! end of #main -->

    
    <footer id="footer"><div class="container_12">
		<div class="grid_12">
    		<div class="footer-icon align-center"><a class="top" href="#top"></a></div>
		</div>
    </div></footer>
  </div> <!--! end of #container -->


  <!-- JavaScript at the bottom for fast page loading -->

  <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.2.min.js"><\/script>')</script>


  <!-- scripts concatenated and minified via ant build script-->
  <script defer src="../js/plugins.js"></script> <!-- lightweight wrapper for consolelog, optional -->
  <script defer src="../js/mylibs/jquery-ui-1.8.15.custom.min.js"></script> <!-- jQuery UI -->
  <script defer src="../js/mylibs/jquery.notifications.js"></script> <!-- Notifications  -->
  <script defer src="../js/mylibs/jquery.uniform.min.js"></script> <!-- Uniform (Look & Feel from forms) -->
  <script defer src="../js/mylibs/jquery.validate.min.js"></script> <!-- Validation from forms -->
  <script defer src="../js/mylibs/jquery.dataTables.min.js"></script> <!-- Tables -->
  <script defer src="../js/mylibs/jquery.tipsy.js"></script> <!-- Tooltips -->
  <script defer src="../js/mylibs/excanvas.js"></script> <!-- Charts -->
  <script defer src="../js/mylibs/jquery.visualize.js"></script> <!-- Charts -->
  <script defer src="../js/mylibs/jquery.slidernav.min.js"></script> <!-- Contact List -->
  <script defer src="../js/common.js"></script> <!-- Generic functions -->
  <script defer src="../js/script.js"></script> <!-- Generic scripts -->

  
  <script type="text/javascript">
      $().ready(function () {
          /*
		 * Tabs
		 */

          $("#tab-technical").createTabs();

          $(function () {
              $("#telephone-accordion").accordion();
          });
          /*
           * Form Validation
           */
          $.validator.setDefaults({
              submitHandler: function (e) {
                  $.jGrowl("Form was successfully submitted.", { theme: 'success' });
                  $(e).parent().parent().fadeOut();
                  v.resetForm();
                  v2.resetForm();
                  v3.resetForm();
              }
          });
          var v = $("#create-user-form").validate();
          jQuery("#reset").click(function () { v.resetForm(); $.jGrowl("User was not created!", { theme: 'error' }); });

          var v2 = $("#write-message-form").validate();
          jQuery("#reset2").click(function () { v2.resetForm(); $.jGrowl("Message was not sent.", { theme: 'error' }); });

          var v3 = $("#create-folder-form").validate();
          jQuery("#reset3").click(function () { v3.resetForm(); $.jGrowl("Folder was not created!", { theme: 'error' }); });

          var validateform = $("#validate-form").validate();
          $("#reset-validate-form").click(function () {
              validateform.resetForm();
              $.jGrowl("Blogpost was not created.", { theme: 'error' });
          });
      });


  </script>
  <!-- end scripts-->

  <!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
       chromium.org/developers/how-tos/chrome-frame-getting-started -->
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
    <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
  <![endif]-->


   </form>
</body>
</html>

