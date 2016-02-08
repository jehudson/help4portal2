<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js" lang="en"> <!--<![endif]-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home-help4Portal</title>
    
  <meta charset="utf-8">
  
  <!-- DNS prefetch -->
  <link rel=dns-prefetch href="//fonts.googleapis.com">

  <!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/b/378 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

  
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <!-- Mobile viewport optimized: j.mp/bplateviewport -->
  <meta name="viewport" content="width=device-width,initial-scale=1"/>

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory: mathiasbynens.be/notes/touch-icons -->
    <link rel="shortcut icon" type="image/ico" href="favicon.ico"/>
  <!-- CSS: implied media=all -->
  <!-- CSS concatenated and minified via ant build script-->
  <link rel="stylesheet" href="css/style.css"/> <!-- Generic style (Boilerplate) -->
    <link rel="stylesheet" href="css/style2.css"/> <!-- Generic style (John Custom) -->
  <link rel="stylesheet" href="css/960.fluid.css"/> <!-- 960.gs Grid System -->
  <link rel="stylesheet" href="css/main.css"/> <!-- Complete Layout and main styles -->
  <link rel="stylesheet" href="css/buttons.css"/> <!-- Buttons, optional -->
  <link rel="stylesheet" href="css/lists.css"/> <!-- Lists, optional -->
  <link rel="stylesheet" href="css/icons.css"/> <!-- Icons, optional -->
  <link rel="stylesheet" href="css/notifications.css"/> <!-- Notifications, optional -->
  <link rel="stylesheet" href="css/typography.css"/> <!-- Typography -->
  <link rel="stylesheet" href="css/forms.css"/> <!-- Forms, optional -->
  <link rel="stylesheet" href="css/tables.css"/> <!-- Tables, optional -->
  <link rel="stylesheet" href="css/charts.css"/> <!-- Charts, optional -->
  <link rel="stylesheet" href="css/jquery-ui-1.8.15.custom.css"/> <!-- jQuery UI, optional -->
  <!-- end CSS-->
  
  <!-- Fonts -->
  <link href="http://localhost:41606/fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet" type="text/css"/>
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
		<img src="img/logo-slogan.png" alt="Grape" class="logo"/>
		
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
    		<img class="img-left framed" src="img/misc/avatar_small.png" alt="Hello Admin"/>
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
    	 <!--! end of #nav -->
    	
    </aside> <!--! end of #sidebar -->
    
    <!-- Begin of #main -->
    <div id="main" role="main">
    	
    	<!-- Begin of titlebar/breadcrumbs -->
		<div id="title-bar">
			<ul id="breadcrumbs">
				<li><a href="Default.aspx" title="Home"><span id="bc-home"></span></a></li>
				<li class="no-hover">Home</li>
			</ul>
		</div> <!--! end of #title-bar -->
		
		<div class="shadow-bottom shadow-titlebar"></div>
		
		<!-- Begin of #main-content -->
		<div id="main-content">
			<div class="container_12">
			
			<div class="grid_12">
				<h1>help4Portal</h1>
				<p>The Mother of All Portals</p>
				
				<div class="alert info"><span class="hide">x</span><strong>Welcome to help4Portal, the management information system for help4IT</strong></div>
			</div>
			
			<div class="grid_12">
				<div class="block-border">
					<div class="block-content">
						<ul class="shortcut-list">
							<li id="litechnical" class="mainmenu-hidden" runat="server">
								<a href="technical/Default.aspx">
									<img src="img/icons/packs/crystal/48x48/apps/irkick.png">
									Technical
								</a>
							</li>
                            
							<li id="litimecard" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/clock.png"/>
									Time Card
								</a>
							</li>
							<li id="liabsence" class="mainmenu-hidden" runat="server" >
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/access.png"/>
									Absence
								</a>
							</li>
							<li id="lipurchasing" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/Shopping.ico"/>
									Purchasing
								</a>
							</li>
							<li id="lirenewables" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/recycle.png">
									Renewables
								</a>
							</li>
							<li id="lihr" class="mainmenu-hidden" runat="server" >
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/Personnel.png"/>
									HR
								</a>
							</li>
							<li id="lipasswords" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/Show Password.ico"/>
									Passwords
								</a>
							</li>
							<li id="lipayg" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/Credit Report.ico"/>
									Pay As You Go
								</a>
							</li>
                            <li id="liserverchecks" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/server.png">
									Server Checks
								</a>
							</li>
                            <li id="lihelpdesk" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/support.png">
									help Desk
								</a>
							</li>
                            <li id="liquotations" class="mainmenu-hidden" runat="server">
								<a href="javascript:void(0);">
									<img src="img/icons/packs/crystal/48x48/apps/agt_business.png"/>
									Quotations
								</a>
							</li>
                            </ul>
						<div class="clear"></div>
					</div>
				</div>
			</div>
			
			
			<div class="grid_7">
				<div class="block-border">
					<div class="block-header">
						<h1>System Time </h1><span></span>
                        </div>
                    <div class="block-content"><br />
                          <table>
        <tr>
        <td><div class="timecard-clock">
    <script type="text/javascript" >        var clocksize = '200';</script>
<script type="text/javascript" >
    var clocksize;
    if (!clocksize || clocksize == 'SIZE') clocksize = '100';

    document.write('<OBJECT CLASSID="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" CODEBASE="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" WIDTH="' + clocksize + '" HEIGHT="' + clocksize + '">');

    document.write('<PARAM NAME="movie" VALUE="http://www.gheos.net/js/clock/clock.swf">');
    document.write('<PARAM NAME="quality" VALUE="high">');
    //document.write('<PARAM NAME="bgcolor" VALUE="#FFFFFF">');
    document.write('<PARAM NAME="wmode" VALUE="transparent">');
    document.write('<PARAM NAME="menu" VALUE="false">');

    document.write('<EMBED SRC="http://www.gheos.net/js/clock/clock.swf" WIDTH="' + clocksize + '" HEIGHT="' + clocksize + '" QUALITY="high" WMODE="transparent" MENU="false"></EMBED>');

    document.write('</OBJECT>');






</script>
    
    
    </div></td>
    <td style="width: 20%"></td>
        <td id="dateweek"><br /><br />
            <strong>Date: </strong><asp:Label ID="DateLabel" runat="server" Text="Label"></asp:Label><br /><br />
            
            <strong>Week Number: </strong><asp:Label ID="WeekNumberLabel" runat="server" Text="Label"></asp:Label></td>
        </tr>
        
        </table>
                    </div>
                    <div class="block-content dark-bg">
						<p>  <strong>Telephone List </strong><span></span></p>
                        </div>
                    <div class="block-content"><br/>
                        <div id="telephone-accordion">
    <h3><a href="#">Telephone Extensions, Mobile and Land Line</a></h3>
    <div ><asp:ListView ID="ListView1" runat="server" DataSourceID="LinqDataSource1" >
   <LayoutTemplate>
   <table id="tbl1" class="table" style="width:700px">
       <thead>
<tr id="Tr1" runat="server" style="text-align: left">
              <th id="Th1" runat="server">Colleague</th>
              <th id="Th2" runat="server">Human Extension</th>
              <th id="Th3" runat="server">Mobile </th>
              <th id="Th4" runat="server">Landline</th>
            </tr>

       </thead>  
          <tbody> <tr runat="server" id="itemPlaceholder" /> </tbody>
           
          </table>
   
   
   </LayoutTemplate>
   
    <ItemTemplate>
    <tr id="Tr1" runat="server">
    <td>
        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FullName") %>'></asp:Label></td>
    <td>
        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Extension") %>'></asp:Label></td>
    <td>
        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label></td>
    <td>
        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Telephone") %>'></asp:Label></td>
    </tr>
    
    
    </ItemTemplate>
    </asp:ListView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="HRDataClassesDataContext" EntityTypeName="" OrderBy="LastName" TableName="EmployeeDetails" Where="EmploymentTerminated != @EmploymentTerminated1">
            <WhereParameters>
                <asp:Parameter DefaultValue="True" Name="EmploymentTerminated1" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
                            </div>
    <h3><a href="#">Main Numbers</a></h3>
    <div>
<table style="width: 640px">
            <tr>
                <td>
                    0844 748 9104
                </td>
                <td>
                    Conference Room 
                </td>
                <td>
                    PIN: 34046632#
                </td>
            </tr><tr>
                <td>
                    0845 257 4448
                </td>
                <td>
                    Administration Ring Group 
                </td>
                <td>
                    020 7653 9780 
Agent logon 4003*  
Agent logoff 4003** 
*280 Day/night override
                </td>
            </tr>
            <tr>
                <td>
                    0800 043 4448
                </td>
                <td>
                    Administration Ring Group 
                </td>
                <td>
                    020 7653 9780  
Agent logon 4003*  
Agent logoff 4003** 
*280 Day/night override 
                </td>
            </tr>
            <tr>
                <td>
                    0845 643 9462
                </td>
                <td>
                    Helpdesk ring group
                </td>
                <td>
                   020 7653 9781  
Agent logon 4002*  
Agent logoff 4002** 
*281 Day/night override
                </td>
            </tr>
            <tr>
                <td>
                    0845 643 9519
                </td>
                <td>
                    24/7 Support
                </td>
                <td>
                  020 7653 9782
                </td>
            </tr>
            <tr>
                <td>
                    0845 257 4449
                </td>
                <td>
                    help4IT FAX
                </td>
                <td>
                   020 7489 7811 
support@help4it.co.uk 
LaserJet 3550
                </td>
            </tr>
        </table>

    </div>
<h3><a href="#">DDI Numbers</a></h3>
                            <div><table style="width: 640px">
            <tr>
                <td>
                    DDI Number</td>
                <td>
                    Function</td>
                <td>
                    IP Extension</td>
            </tr>
            <tr>
                <td>
                    020 7653 9780</td>
                <td>
                    Administration</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    020 7653 9781</td>
                <td>
                    helpdesk</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    020 7653 9782</td>
                <td>
                    24/7 Support</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    020 7653 9783</td>
                <td>
                    CRL Inspect</td>
                <td>
                    &nbsp;</td>
                    
            </tr>
            <tr>
                <td>
                    020 7653 9784</td>
                <td>
                    Carol McFetridge</td>
                <td>
                    &nbsp;</td>
                
                
            </tr>
            <tr>
                <td>
                    020 7653 9785</td>
                <td>
                    Mehool Patel</td>
                <td>
                    1004</td>
               
                
            </tr>
            <tr>
                <td>
                    020 7653 9786</td>
                <td>
                    </td>
                <td>
                    </td>
               
                
            </tr>
            <tr>
                <td>
                    020 7653 9787</td>
                <td>
                    Christopher Suckling</td>
                <td>
                    1009</td>
                
                
            </tr>
            <tr>
                <td>
                    020 7653 9788</td>
                <td>
                    Sanjay Patel</td>
                <td>
                    1003</td>
               
                
            </tr>
            <tr>
                <td>
                    020 7653 9789</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                
                
            </tr>
            <tr>
                <td>
                    020 7489 7811</td>
                <td>
                    FAX</td>
                <td>
                    0845 257 4449</td>
                
                
            </tr>
            
        </table></div>
<h3><a href="#">Postbank Contacts</a></h3>
                            <div><table style="width: 640px">
            <tr>
                <td>
                    External Number</td>
                <td>
                    Extension</td>
                <td>
                    Desk</td>
            </tr>
            <tr>
                <td class="style1">
                    020 7634 2346</td>
                <td class="style1">
                    2346</td>
                <td class="style1">
                    Rohit Patel</td>
            </tr>
            <tr>
                <td>
                    020 7634 2347</td>
                <td>
                    2347</td>
                <td>
                    2004</td>
            </tr>
            <tr>
                <td>
                    020 7634 2439</td>
                <td>
                    2439</td>
                <td>
                    2006</td>
            </tr>
            <tr>
                <td>
                    020 7634 2333</td>
                <td>
                    2333</td>
                <td>
                    2011</td>
                    
            </tr>
            <tr>
                <td>
                    020 7634 2379</td>
                <td>
                    2379</td>
                <td>
                    2014</td>
                
                
            </tr>
            <tr>
                <td>
                    020 7634 2368</td>
                <td>
                    2368</td>
                <td>
                    2013</td>
               
                
            </tr>
            <tr>
                <td>
                    020 7634 2344</td>
                <td>
                    2344</td>
                <td>
                    2007</td>
               
                
            </tr>
            <tr>
                <td>
                    020 7634 2342</td>
                <td>
                    2342</td>
                <td>
                    Nigel Fernandes</td>
                
                
            </tr>
            <tr>
                <td>
                    020 7634 2353</td>
                <td>
                    2353</td>
                <td>
                    Facilities Management </td>
               
                
            </tr>
            <tr>
                <td>
                    020 7634 2354</td>
                <td>
                    2354</td>
                <td>
                    Clarel Sookun</td>
                
                
            </tr>
            <tr>
                <td>
                    020 7634 2300</td>
                <td>
                    2300</td>
                <td>
                    Reception</td>
                
                
            </tr>
            <tr>
                <td>
                    020 7220 7140</td>
                <td>
                    </td>
                <td>
                    Postbank fax 2nd floor</td>
                
                
            </tr>
        </table></div>
<h3><a href="#">Grandstream Telephone Help</a></h3>
                            <div>
                <h1>Transfer Calls</h1>
        <table style="width: 640px">
            <tr>
                <td>
                    Grandstream Budgetone</td>
                <td>
                    Blind</td>
                <td>
                    Press TRANSFER Dial extension Press SEND</td>
            </tr>
            <tr>
                <td >
                    Grandstream Budgetone</td>
                <td >
                    Non Blind</td>
                <td >press the FLASH button dial extension press SEND. If call is answered press 
                    TRANSFER. If call is not answered press FLASH to resume original call</td>
            </tr>
            <tr>
                <td>
                    Grandstream GXP 2000</td>
                <td>
                    Blind</td>
                <td>
                    Press TRNF Dial extension Press SEND </td>
            </tr>
            <tr>
                <td>
                    Grandstream GXP 2000</td>
                <td>
                    Non Blind</td>
                <td>
                    Put call on Hold Press Line2 Call target Press TRNF Press Line1 to transfer call </td>
            </tr>
            <tr>
                <td>
                    X-lite</td>
                <td>
                    Blind</td>
                <td>
                    press xx, wait for "transfer" announcement, dial extension, hangup</td>
                    
            </tr>
            
            <tr>
                <td>
                   X-lite</td>
                <td>
                   Non Blind</td>
                <td>
                    press *2, wait for "transfer" announcement,dial extension, speak to recipient, hangup to transfer or retrieve call</td>
               
                
            </tr>
           
            
            
            
            <tr>
                <td>
                    </td>
                <td>
                    </td>
                <td>
                    </td>
                
                
            </tr>
            
        </table>
        <p></p>
        <h1>Grandstream Feature Codes</h1>
        <table>
        <tr>
        <td>Day/Night Control Toggle</td><td>*28x</td>
        
        
        
        
        
        
        </tr>
        <tr><td>DND Activate</td><td>*78</td></tr>
        <tr><td>DND Deactivate</td><td>*79</td></tr>
        <tr><td>Speaking clock</td><td>*60</td></tr>
        <tr><td>Dial voicemail</td><td>*98</td></tr>
        <tr><td>Dial your voicemail</td><td>*97</td></tr>
        <tr><td>Call Pickup</td><td>*8</td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
        
        
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        
        
        </table>

                
                ></div>
</div>
                    </div>
					</div>
					
				
			</div>

			<div class="grid_5">
				<div class="block-border">
					<div class="block-header">
						<h1>Permissions</h1><span></span>
					</div>
					<div class="block-content">
						<ul class="block-list with-icon">
							<li id="li1" class="i-16-status-busy" runat="server"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></li>
							<li id="li2" class="i-16-status-busy" runat="server"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
                            <li id="li3" class="i-16-status-busy" runat="server"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li>
                            <li id="li4" class="i-16-status-busy" runat="server"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></li>
                            <li id="li5" class="i-16-status-busy" runat="server"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li>
                            <li id="li6" class="i-16-status-busy" runat="server"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></li>
                            <li id="li7" class="i-16-status-busy" runat="server"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></li>
                            <li id="li8" class="i-16-status-busy" runat="server"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></li>
                            <li id="li9" class="i-16-status-busy" runat="server" ><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></li>
                            <li id="li10" class="i-16-status-busy" runat="server" ><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></li>
                            <li id="li11" class="i-16-status-busy" runat="server"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></li>
                            <li id="li12" class="i-16-status-busy" runat="server"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></li>
                            <li id="li13" class="i-16-status-busy" runat="server"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></li>
                            <li id="li14" class="i-16-status-busy" runat="server"><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></li>
                            <li id="li15" class="i-16-status-busy" runat="server"><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></li>
						</ul>
					</div>
					<div class="block-content dark-bg">
						<p> If you require additional permissions please make a request via your manager</p>
					</div>
				</div>
			</div>
			
			
			
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
  <script defer src="js/plugins.js"></script> <!-- lightweight wrapper for consolelog, optional -->
  <script defer src="js/mylibs/jquery-ui-1.8.15.custom.min.js"></script> <!-- jQuery UI -->
  <script defer src="js/mylibs/jquery.notifications.js"></script> <!-- Notifications  -->
  <script defer src="js/mylibs/jquery.uniform.min.js"></script> <!-- Uniform (Look & Feel from forms) -->
  <script defer src="js/mylibs/jquery.validate.min.js"></script> <!-- Validation from forms -->
  <script defer src="js/mylibs/jquery.dataTables.min.js"></script> <!-- Tables -->
  <script defer src="js/mylibs/jquery.tipsy.js"></script> <!-- Tooltips -->
  <script defer src="js/mylibs/excanvas.js"></script> <!-- Charts -->
  <script defer src="js/mylibs/jquery.visualize.js"></script> <!-- Charts -->
  <script defer src="js/mylibs/jquery.slidernav.min.js"></script> <!-- Contact List -->
  <script defer src="js/common.js"></script> <!-- Generic functions -->
  <script defer src="js/script.js"></script> <!-- Generic scripts -->
  
  <script type="text/javascript">
      $().ready(function () {
          $('#tbl1').dataTable(
              

              );
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
