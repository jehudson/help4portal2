<%@ Page Language="VB"  AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Access Control</title>
    
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
			<div id="record-exists" title="Group Already Exisits" style="display: none;">
				<p>The group name you entered already exists, either choose a new name or edit the existing group</p>
				
			</div> 
        <div id="record-created" title="Security Group" style="display: none;">
				<p>The security group has been successfully created</p>
				
			</div> 

        <div id="Association-Created" title="Security Association" style="display: none;">
				<p>The security Association has been successfully created</p>
				
			</div> 
        <div id="record-failure" title="Security Group Problem" style="display: none;">
				<p>There was a problem creating the security group</p>
				
			</div>

        <div id="assocation-failure" title="Security Association Problem" style="display: none;">
				<p>There was a problem creating the security association</p>
				
			</div>
        <div id="SecurityGroup-Updated" title="Security Group" style="display: none;">
				<p>The security Association has been successfully updated</p>
				
			</div>
        
        <div id="select-group-name" title="Error" style="display: none;">
				<p>You must select a group name</p>
				
			</div>
        
        <div id="select-group-members" title="Error" style="display: none;">
				<p>You must select some group members</p>
				
			</div>




        <!--! end of #info-dialog -->
		
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
    		
    		
    		<div class="clearfix"></div>
  		</section> <!--! end of #login-details -->
    	
    	
        <!-- Begin of Navigation -->
    	<nav id="nav">
	    	<ul class="menu collapsible shadow-bottom">
	    		
	    		<li>
	    			<a href="javascript:void(0);"><img src="../img/icons/packs/fugue/16x16/clipboard-list.png">Administration</a>
	    			<ul class="sub">
	    				<li><a href="../technical/new-organisation.aspx">Organisation</a></li>
	    				<li><a href="../technical/devices.aspx">Devices</a></li>
                        <li><a href="../technical/credentials.aspx">Credentials</a></li>
	    				<li><a href="../technical/applications.aspx">Applications</a></li>
                        <li><a href="../technical/internetworking.aspx">Internetworking</a></li>
                        <li><a href="../technical/pictures.aspx">Pictures</a></li>
                        <li><a href="../technical/documents.aspx">Documents</a></li>
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
						<h1>Access Control</h1><span></span>
					</div>
					<div class="block-content">

                        <p> <strong> Create a security group:</strong> give the new security group a name, select some members and save. The members will be able to access customr detals that have been associated with the security group
							</p>
                        <p> <strong> Update a security group:</strong> you add or remove members</p>
                        <p> <strong>Update a security association: </strong> you can then assign or remove  customers to or from  the security group that you have already created</p>
						
						<div class="clear"></div>
					</div>
				</div>
			</div>
                
                <div class="grid_6">
				<div class="block-border" >
					<div class="block-header">
						<h1>Security Group </h1><span></span>
                        
					</div>

				
					<div class="block-content  tab-container" id="tab-panel-1"><br />
                        

 
<ul class="tabs">
							<li><a href="#tab-1">New</a></li>
							<li><a href="#tab-2">Update</a></li>
							
						</ul>
<div id="tab-1" class="tab-content">

	<table>
                           <tr>
                               <td></td>
                               <td colspan="2"> Group Name</td>
                               
                               <td> <asp:TextBox ID="TextBox1" ValidationGroup="ValidationGroup1" runat="server" Columns="30"></asp:TextBox></td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ValidationGroup1" CssClass="smallwarning" runat="server" validationSummary="ValidationSummary1" ControlToValidate="TextBox1" ErrorMessage="You must type a group name">*</asp:RequiredFieldValidator>
                           </tr>
                           <tr>
                               <td>Available Members</td>
<td></td>
<td></td>
<td>Selected Members</td>
                           </tr>
                           <tr>
<td> <asp:ListBox ID="SelectLeft" runat="server" Width="250px" DataSourceID="LinqDataSource1" DataTextField="FullName" DataValueField="EmployeeID" SelectionMode="Multiple">
    
    </asp:ListBox>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="HRDataClassesDataContext" EntityTypeName="" OrderBy="LastName" Select="new (FullName, EmployeeID)" TableName="EmployeeDetails" Where="EmploymentTerminated != @EmploymentTerminated">
        <WhereParameters>
            <asp:Parameter DefaultValue="True" Name="EmploymentTerminated" Type="Boolean" />
        </WhereParameters>
    </asp:LinqDataSource>
                               </td>

<td> <asp:Button ID="MoveRight" runat="server" Text=" >> " /></td>
<td>
    <asp:Button ID="MoveLeft" runat="server" Text=" << " /> </td>

<td> <asp:ListBox ID="SelectRight" runat="server" Width="250px" SelectionMode="Multiple" ></asp:ListBox></td>
                               <asp:CustomValidator ID="CustomValidator1" ValidationGroup="ValidationGroup1" CssClass="smallwarning" runat="server" ErrorMessage="You must add one or more members">*</asp:CustomValidator>
                                 </tr>
                           <tr><td>&nbsp;</td></tr>
                           <tr>
                               <td>
                                   </td>
                               <td> </td>
                               <td></td>
                               <td></td>
                           </tr>



                       </table>		
    
    		<asp:Button ID="Button1" runat="server" ValidationGroup="ValidationGroup1" Text="Save" Width="50px" /> &nbsp; <asp:Button ID="Button2" runat="server" Text="Cancel" Width="50px" />&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
						 <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="ValidationGroup1" CssClass="smallwarning" runat="server" />		
    	</div>
						<div id="tab-2" class="tab-content">
							<table>
                           <tr>
                               <td></td>
                               <td colspan="2"> Group Name</td>
                               
                               <td> 
                                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource6" DataTextField="SecurityGroupName" DataValueField="SecurityGroupNameID" AppendDataBoundItems="True" Height="16px" ValidationGroup="ValidationGroup3">
                                       <asp:ListItem Value="">Select a Security Group</asp:ListItem>
                                   </asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationSummary="ValidationSummary3" CssClass="smallwarning" runat="server" ErrorMessage="You must select a group name" ValidationGroup="ValidationGroup3" ControlToValidate="DropDownList2">*</asp:RequiredFieldValidator>
                                   <asp:LinqDataSource ID="LinqDataSource6" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="SecurityGroupNames">
                                   </asp:LinqDataSource>
                               </td>
                                 </tr>
                           <tr>
                               <td>Available Members</td>
<td></td>
<td></td>
<td>Selected Members</td>
                           </tr>
                           <tr>
<td> <asp:ListBox ID="SelectLeft2" runat="server" Width="250px" SelectionMode="Multiple" DataSourceID="LinqDataSource7" DataTextField="FullName" DataValueField="EmployeeID">
    
    </asp:ListBox>
    <asp:LinqDataSource ID="LinqDataSource7" runat="server" ContextTypeName="HRDataClassesDataContext" EntityTypeName="" OrderBy="LastName" TableName="EmployeeDetails" Where="EmploymentTerminated != @EmploymentTerminated">
        <WhereParameters>
            <asp:Parameter DefaultValue="true" Name="EmploymentTerminated" Type="Boolean" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="LinqDataSource5" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="EmployeeNameIDViews" Where="SecurityGroupNameID == @SecurityGroupNameID">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="SecurityGroupNameID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
                               </td>

<td> <asp:Button ID="UpdateMoveRight" runat="server" Text=" >> " /></td>
<td>
    <asp:Button ID="UpdateMoveLeft" runat="server" Text=" << " CausesValidation="False" /> </td>

<td> <asp:ListBox ID="SelectRight2" runat="server" Width="250px" SelectionMode="Multiple" DataSourceID="LinqDataSource5" DataTextField="FullName" DataValueField="EmployeeID" ValidationGroup="ValidationGroup3" ></asp:ListBox></td>
                               <asp:CustomValidator ID="CustomValidator3" ValidationSummary="ValidationSummary3" ValidationGroup="ValidationGroup3" CssClass="smallwarning" runat="server" ErrorMessage="You must add one or more members">*</asp:CustomValidator>
                                 </tr>
                           <tr><td>&nbsp;</td></tr>
                           <tr>
                               <td>
                                   </td>
                               <td> </td>
                               <td></td>
                               <td></td>
                           </tr>



                       </table>

<asp:Button ID="Button3" runat="server" ValidationGroup="ValidationGroup3" Text="Save" Width="50px" /> &nbsp; <asp:Button ID="Button4" runat="server" Text="Cancel" Width="50px" />&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
						 <asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="ValidationGroup3" CssClass="smallwarning" runat="server" />	

						</div>
    
                       
					

                        <div class="clear"></div>
			</div></div></div>		
				

     <div class="grid_6">
				<div class="block-border">
					<div class="block-header">
						<h1>Update Security Association</h1><span></span>
					</div>
					<div class="block-content">
                          
                       <table>
                           <tr>
                               <td></td>
                               <td colspan="2"> Group Name</td>
                               
                               <td> <asp:DropDownList ID="DropDownList1" ValidationGroup="ValidationGroup1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource3" DataTextField="SecurityGroupName" DataValueField="SecurityGroupNameID" AppendDataBoundItems="True">
                                   <asp:ListItem Value="">Select Security Group</asp:ListItem>
                                    </asp:DropDownList>
                                   <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="SecurityGroupNames">
                                   </asp:LinqDataSource>
                               </td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="ValidationGroup2" CssClass="smallwarning" runat="server" validationSummary="ValidationSummary1" ControlToValidate="DropDownList1" ErrorMessage="You must select a group name">*</asp:RequiredFieldValidator>
                           </tr>
                           <tr>
                               <td>Available Members</td>
<td></td>
<td></td>
<td>Selected Members</td>
                           </tr>
                           <tr>
<td> <asp:ListBox ID="SelectLeft1" runat="server" Width="250px" DataSourceID="LinqDataSource2" DataTextField="AccountIdName" DataValueField="OrganisationID" SelectionMode="Multiple">
    
    </asp:ListBox>

                               <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="AccountIdName" TableName="OrganisationDetails">
    </asp:LinqDataSource>

                               </td>

<td> <asp:Button ID="MoveRight1" runat="server" Text=" >> " /></td>
<td>
    <asp:Button ID="MoveLeft1" runat="server" Text=" << " /> </td>

<td> <asp:ListBox ID="SelectRight1" runat="server" Width="250px" SelectionMode="Multiple" DataSourceID="LinqDataSource4" DataTextField="AccountIdName" DataValueField="AccountIdName" ></asp:ListBox>
    <asp:LinqDataSource ID="LinqDataSource4" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="SecurityAssociationOrganisationViews" Where="SecurityGroupNameID == @SecurityGroupNameID">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="SecurityGroupNameID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
                               </td>
                               <asp:CustomValidator ID="CustomValidator2" CssClass="smallwarning" ValidationGroup="ValidationGroup2" runat="server" ErrorMessage="You must add one or more members">*</asp:CustomValidator>
                                 </tr>
                           <tr><td>&nbsp;</td></tr>
                           <tr>
                               <td>
                                   </td>
                               <td> </td>
                               <td></td>
                               <td></td>
                           </tr>



                       </table>
						

<asp:Button ID="Button5" ValidationGroup="ValidationGroup2" runat="server" Text="Save" Width="50px" /> &nbsp; <asp:Button ID="Button6" runat="server" Text="Cancel" Width="50px" />&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
						<asp:ValidationSummary ID="ValidationSummary2" ValidationGroup="ValidationGroup2" CssClass="smallwarning" runat="server" />
                        
						


						<div class="clear"></div>
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
        <script defer src="../js/jquery-cookie/jquery.cookie.js"></script><!--Cookies -->

        <asp:HiddenField ID="hfSelectedTAB" runat="server"  Value="0"/>
    
<script type="text/javascript">
    $(document).ready(function () {
        
        $("#tab-panel-1").tabs({ cookie: { expires: 30 } });
                
        
        


        $("#dialog").dialog({
            autoOpen: false, modal: true
        });
    });
    

    function openDialog(id) {
        $('#' + id).dialog('open');
    }
    </script>
  
  <script type="text/javascript">
      $().ready(function () {

          var $dialog = $('<div></div>')
		.html('A security group with this name already exists, either choose a new name or edit the existing group')

              .dialog({
		    autoOpen: false,
		    title: 'Security Group Already Exists'
		});

          $('#organisation-table').dataTable(

              {
                  "sScrollY": "400px",
                  "bPaginate": false,
                  "bScrollCollapse": true,
                  "aaSorting": [[1, "asc"]]
              }

              );
          
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
