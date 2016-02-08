<%@ Page Language="VB" AutoEventWireup="false" CodeFile="devices.aspx.vb" Inherits="technical_devices" %>

<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Technical-Administration</title>
    
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
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
<div class="demo">
       <img alt="Loading" src="../img/loading.gif" /><br /> <br />        
            processing...
            </div> 

            </ProgressTemplate>

        </asp:UpdateProgress>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="False"></asp:ScriptManager>
        <asp:UpdateProgress runat="server" id="PageUpdateProgress">
            <ProgressTemplate>
                Loading...
            </ProgressTemplate>
        </asp:UpdateProgress>
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
			</div> 
        
        <div id="device-created" title="New Device" style="display: none;">
				<p>The device has been successfully created</p>
				
			</div> 
        <div id="device-failure" title="Device Problem" style="display: none;">
				<p>There was a problem creating the new device</p>
				
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
				<li class="no-hover">Administer Devices</li>
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
						<p><strong>Create a device: </strong>devices belong to sites and therefore a new site must be created first if it does not already exist</p>
                        <p>Create one or more <strong>NICs</strong> to attach to the device</p>
                        <p>Each NIC must be associated with an existing <strong> Subnet</strong> </p>
						<div class="clear"></div>
					</div>
				</div>
			</div>
			
                <div class="grid_12">
				<div class="block-border" >
					<div class="block-header">
						<h1>Devices</h1><span></span>
                        
					</div>

				
					<div class="block-content  tab-container" id="tab-panel-1"><br />
                        

 
<ul class="tabs">
							<li><a href="#tab-1">New</a></li>
							<li><a href="#tab-2">Update</a></li>

    <li><a href="#tab-3">Deactivate</a></li>

							
						</ul>
<div id="tab-1" class="tab-content">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
    <br /><br />
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="AccountIdName" DataValueField="OrganisationID" AppendDataBoundItems="true" AutoPostBack="True">
            <asp:ListItem Value="">Select Customer</asp:ListItem>
        </asp:DropDownList> 
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="OrganisationDetails" OrderBy="AccountIdName">
        </asp:LinqDataSource>
    </div><br />
    <div id="newdevicesitedropdown" class="control-hidden" runat="server"> <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource2" DataTextField="SiteName" DataValueField="SiteID" AppendDataBoundItems="true" AutoPostBack="True">
        <asp:ListItem Value="">Select a Site</asp:ListItem>
          </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DropDownList2" ValidationGroup="ValidationGroup1" CssClass="smallwarning" runat="server" ErrorMessage="You must select a site">*</asp:RequiredFieldValidator>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="SiteName" TableName="Sites" Where="OrganisationID == @OrganisationID">
            <WhereParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="OrganisationID" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource></div>
<br />
        <div id="newdevicesformholder"  class="control-hidden" runat="server">
            


            <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="Devices">
            </asp:LinqDataSource>
            <table id="newdevicesform">
                      
                        
                        <tbody>

                    <tr><th scope="row">Name</th> <td> <asp:TextBox ID="TextBox1" runat="server" Columns="60"></asp:TextBox></td></tr>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="smallwarning" ValidationSummary="ValidationSummary1" ValidationGroup="ValidationGroup1" id="RequiredFieldValidator2" runat="server" ErrorMessage="You must enter a device name">*</asp:RequiredFieldValidator>
                    <tr><th scope="row">Operating System</th><td>
                        <asp:DropDownList ID="DropDownList12" runat="server" AppendDataBoundItems="True" DataSourceID="LinqDataSource12" DataTextField="OperatingSystem" DataValueField="OperatingSystemID">
                            <asp:ListItem Value="">Select Operating System</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="DropDownList12" CssClass="smallwarning" ValidationSummary="ValidationSummary1" ValidationGroup="ValidationGroup1" runat="server" ErrorMessage="You must select an operating system">*</asp:RequiredFieldValidator>
                        <asp:LinqDataSource ID="LinqDataSource12" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="OperatingSystem" TableName="OperatingSystems"></asp:LinqDataSource>
                                                             </td>  </tr>
                            <tr> <th scope="row">Model Number</th><td> <asp:TextBox ID="TextBox2" runat="server" Columns="60"></asp:TextBox></td></tr>
                    <tr> <th scope="row">Serial Number</th><td> <asp:TextBox ID="TextBox3" runat="server" Columns="60"></asp:TextBox></td></tr>
                    <tr> <th scope="row">Specification</th><td> <asp:TextBox ID="TextBox4" runat="server" Columns="60" TextMode="MultiLine"></asp:TextBox></td></tr>
                    <tr><th scope="row">Third Party Details</th> <td><asp:TextBox ID="TextBox5" runat="server" Columns="60" TextMode="MultiLine"></asp:TextBox> </td></tr>
                    <tr> <th scope="row">Status</th><td> <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="LinqDataSource4" DataTextField="DeviceStatus" DataValueField="DeviceStatusID" AppendDataBoundItems="true">
                        <asp:ListItem Value="">Select Status</asp:ListItem>
                                                         </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="DropDownList3" CssClass="smallwarning" ValidationSummary="ValidationSummary1" ValidationGroup="ValidationGroup1" runat="server" ErrorMessage="You must select a device status">*</asp:RequiredFieldValidator>
                        <asp:LinqDataSource ID="LinqDataSource4" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="DeviceStatus">
                        </asp:LinqDataSource>
                        </td></tr>
                    <tr><th scope="row">Parent Device</th> <td> <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="LinqDataSource5" DataTextField="HostName" DataValueField="DeviceID" AppendDataBoundItems="true">
                        <asp:ListItem Value="-1">Select Parent Device</asp:ListItem>
                                                                </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSource5" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="Devices" Where="SiteID == @SiteID">
                            <WhereParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="SiteID" PropertyName="SelectedValue" Type="Int32" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                        </td></tr>
                    <tr> <th scope="row">Comments</th><td>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Columns="60"></asp:TextBox> </td></tr>

                            <tr><td> <asp:Button ID="Button1"  runat="server" ValidationGroup="ValidationGroup1" Text="Insert" />&nbsp; <asp:Button ID="Button2" runat="server" Text="Cancel" /></td></tr>


                        </tbody>
                    </table>


        </div>
    

    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="ValidationGroup1" Cssclass="smallwarning" runat="server" />
           </ContentTemplate>
    </asp:UpdatePanel>
    	</div>
						<div id="tab-2" class="tab-content">
						<br /><br />	
                            	<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="LinqDataSource6" DataTextField="AccountIdName" DataValueField="OrganisationID" AutoPostBack="True" AppendDataBoundItems="true">
                                <asp:ListItem Value="">Select Customer</asp:ListItem>
                            </asp:DropDownList><br />
                            <asp:LinqDataSource ID="LinqDataSource6" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="AccountIdName" TableName="OrganisationDetails">
                            </asp:LinqDataSource>
                            <div id="editdevicesite" class="control-hidden" runat="server"> <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="LinqDataSource7" DataTextField="SiteName" DataValueField="SiteID" AutoPostBack="True" AppendDataBoundItems="true">
                                <asp:ListItem Value="">Select Site</asp:ListItem>
                                                                                            </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource7" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="SiteName" TableName="Sites" Where="OrganisationID == @OrganisationID">
                                    <WhereParameters>
                                        <asp:ControlParameter ControlID="DropDownList5" Name="OrganisationID" PropertyName="SelectedValue" Type="Int32" />
                                    </WhereParameters>
                                </asp:LinqDataSource>
                            </div><br />
                            
                            <div style="width:1200px; margin-left:10px">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="EditDeviceDataSource" DataKeyNames="DeviceID">
                                    <LayoutTemplate>
                                        <table id="editdevice" class="table" >
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Name</th>
                                                    <th>OS

                                                    </th>
                                                    <th>Model Number</th>
                                                    <th>Serial Number</th>
                                                    <th>Specification</th>
                                                    <th>Third Party Details</th>
                                                    <th>Comments</th>
                                                    <th>Status</th>
                                                    <th>Site</th>
                                                    <th>Parent Device</th>

                                                </tr></thead>
                                                <tbody>
<tr runat="server" id="itemPlaceholder" ></tr>

                                                </tbody>
                                                


                                            


                                        </table>


                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr runat="server">
<td runat="server"> <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" /> </td>
<td runat="server"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("HostName") %>'></asp:Label></td>
<td runat="server"><asp:Label ID="Label11" runat="server" Text='<%# Eval("OperatingSystem")%>'></asp:Label> </td>
<td runat="server"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("ModelNumber") %>'></asp:Label></td>
<td runat="server"><asp:Label ID="Label3" runat="server" Text='<%# Eval("SerialNumber") %>'></asp:Label> </td>
<td runat="server"> <asp:Label ID="Label4" runat="server" Text='<%# Eval("Specification") %>'></asp:Label></td>
<td runat="server"><asp:Label ID="Label5" runat="server" Text='<%# Eval("ThirdPartyDetails") %>'></asp:Label> </td>
<td runat="server"> <asp:Label ID="Label6" runat="server" Text='<%# Eval("Comments") %>'></asp:Label></td>
<td runat="server"><asp:Label ID="Label7" runat="server" Text='<%# Eval("DeviceStatus") %>'></asp:Label> </td>
<td runat="server"> <asp:Label ID="Label8" runat="server" Text='<%# Eval("SiteName") %>'></asp:Label></td>
<td runat="server"><asp:Label ID="Label9" runat="server" Text='<%# Eval("ParentDeviceName") %>'></asp:Label> </td>

                                        </tr>



                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <tr   runat="server">
                  <td  runat="server"> <asp:Button ID="Button1" runat="server" Text="Update" CommandName="Update" /> &nbsp; <asp:Button ID="Button2" runat="server" Text="Cancel" CommandName="Cancel" /></td>
        <td runat="server"> <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("HostName") %>'></asp:TextBox></td>
                                            <td runat="server"> <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="LinqDataSource2" DataTextField="OperatingSystem" DataValueField="OperatingSystemID" SelectedValue='<%# Bind("OperatingSystemID") %>'></asp:DropDownList>  
                                                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="OperatingSystem" TableName="OperatingSystems">
                                                </asp:LinqDataSource>
                                            </td>
<td runat="server"> <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ModelNumber") %>'></asp:TextBox></td>
<td runat="server"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SerialNumber") %>'></asp:TextBox> </td>
<td runat="server"> <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Specification") %>'></asp:TextBox></td>
<td runat="server"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ThirdPartyDetails") %>' TextMode="MultiLine"></asp:TextBox> </td>
<td runat="server"> <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Comments") %>' TextMode="MultiLine"></asp:TextBox></td>
<td runat="server">  <asp:DropDownList ID="DropDownList7" DataSourceID="LinqDataSource8" DataTextField="DeviceStatus" DataValueField="DeviceStatusID" runat="server" SelectedValue='<%# Bind("DeviceStatusID") %>'></asp:DropDownList> <asp:LinqDataSource ID="LinqDataSource8" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="DeviceStatus"></asp:LinqDataSource></td>
<td runat="server"> <asp:DropDownList ID="DropDownList8" Text='<%# Bind("SiteID") %>' runat="server" DataSourceID="LinqDataSource1" DataTextField="SiteName" DataValueField="SiteID" SelectedValue='<%# Bind("SiteID") %>'></asp:DropDownList>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="Sites">
    </asp:LinqDataSource>
                                            </td>
<td runat="server"> <asp:DropDownList ID="DropDownList9" Text='<%# Bind("ParentDeviceID") %>' runat="server" DataSourceID="ParentDeviceDataSource" DataTextField="HostName" DataValueField="DeviceID" SelectedValue='<%# Bind("ParentDeviceID") %>' AppendDataBoundItems="True">
    <asp:ListItem Value="-1" Selected="True">Select Device</asp:ListItem>
                    </asp:DropDownList> 
    <asp:ObjectDataSource ID="ParentDeviceDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Suppor2DataSetTableAdapters.ParentDeviceViewTableAdapter"></asp:ObjectDataSource>
                                            </td>

</tr>
                                        
                                    </EditItemTemplate>

                                </asp:ListView>



                                <asp:ObjectDataSource ID="EditDeviceDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDeviceBySiteID" TypeName="Suppor2DataSetTableAdapters.DeviceTableAdapter" UpdateMethod="Update" EnableCaching="True">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Original_DeviceID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ModelNumber" Type="String" />
                                        <asp:Parameter Name="SerialNumber" Type="String" />
                                        <asp:Parameter Name="ThirdPartyDetails" Type="String" />
                                        <asp:Parameter Name="Specification" Type="String" />
                                        <asp:Parameter Name="Comments" Type="String" />
                                        <asp:Parameter Name="Active" Type="Boolean" />
                                        <asp:Parameter Name="DeviceStatusID" Type="Int32" />
                                        <asp:Parameter Name="SiteID" Type="Int32" />
                                        <asp:Parameter Name="ParentDeviceID" Type="Int32" />
                                        <asp:Parameter Name="HostName" Type="String" />
                                        <asp:Parameter Name="OperatingSystemID" Type="Int32" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList6" Name="SiteID" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="ModelNumber" Type="String" />
                                        <asp:Parameter Name="SerialNumber" Type="String" />
                                        <asp:Parameter Name="ThirdPartyDetails" Type="String" />
                                        <asp:Parameter Name="Specification" Type="String" />
                                        <asp:Parameter Name="Comments" Type="String" />
                                        <asp:Parameter Name="Active" Type="Boolean" />
                                        <asp:Parameter Name="DeviceStatusID" Type="Int32" />
                                        <asp:Parameter Name="SiteID" Type="Int32" />
                                        <asp:Parameter Name="ParentDeviceID" Type="Int32" />
                                        <asp:Parameter Name="HostName" Type="String" />
                                        <asp:Parameter Name="OperatingSystemID" Type="Int32" />
                                        <asp:Parameter Name="Original_DeviceID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:ObjectDataSource>



                            </div>
</ContentTemplate>

                            </asp:UpdatePanel>
						</div>
    
                       <div id="tab-3" class="tab-content">
                           <br /><br />
                           <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource9" DataTextField="AccountIdName" DataValueField="OrganisationID" AppendDataBoundItems="true">
                               <asp:ListItem Value="">Select Customer</asp:ListItem>
                           </asp:DropDownList>
                           <asp:LinqDataSource ID="LinqDataSource9" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="AccountIdName" TableName="OrganisationDetails"></asp:LinqDataSource>
                           <br /><br />
                           <div id="sitedeactivatedropdown" class="control-hidden" runat="server">
                           <asp:DropDownList  ID="DropDownList11" runat="server" DataSourceID="LinqDataSource10" DataTextField="SiteName" DataValueField="SiteID" AppendDataBoundItems="true" AutoPostBack="True">
                               <asp:ListItem Value="">Select Site</asp:ListItem>
                           </asp:DropDownList><br /><br />
                           <asp:LinqDataSource ID="LinqDataSource10" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="SiteName" TableName="Sites" Where="OrganisationID == @OrganisationID">
                               <WhereParameters>
                                   <asp:ControlParameter ControlID="DropDownList10" Name="OrganisationID" PropertyName="SelectedValue" Type="Int32" />
                               </WhereParameters>
                           </asp:LinqDataSource>
</div>

                           <asp:ListView ID="ListView2" runat="server" DataSourceID="LinqDataSource11">
<LayoutTemplate>
    <table  class="deactivatedevicetable">
<thead>
    <tr>
        <th></th>
<th >Hostname</th>
<th >Active</th>

    </tr>


</thead>
<tbody>
<tr runat="server" id="itemPlaceholder" ></tr>

                                                </tbody>


    </table>



</LayoutTemplate>
<ItemTemplate>
    <tr runat="server">
<td id="Td1" runat="server"> <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" /> </td>
<td runat="server"> <asp:Label ID="Label10" runat="server" Text='<%# Eval("HostName") %>'></asp:Label></td>
        <td runat="server"> <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Active") %>' /></td>



    </tr>

</ItemTemplate>




                           </asp:ListView>
                           <asp:LinqDataSource ID="LinqDataSource11" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="HostName" TableName="DeviceDeviceStatusViews" Where="SiteID == @SiteID">
                               <WhereParameters>
                                   <asp:ControlParameter ControlID="DropDownList11" Name="SiteID" PropertyName="SelectedValue" Type="Int32" />
                               </WhereParameters>
                           </asp:LinqDataSource>
						</div>
					

                        <div class="clear"></div>
			</div></div></div>


			
		
			

			
			
			
			
			
        <div class="grid_6">
				<div class="block-border" >
					<div class="block-header">
						<h1>NICs</h1><span></span>
                        
					</div>

				
					<div class="block-content  tab-container" id="tab-panel-2"><br />
                      <ul class="tabs">
							<li><a href="#nictab-1">New</a></li>
							<li><a href="#nictab-2">Update</a></li>

    <li><a href="#nictab-3">Deactivate</a></li>

							
						</ul>
<div id="nictab-1" class="tab-content">
    
    
     <br /><br />
    <div>
        <asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="LinqDataSource1" DataTextField="AccountIdName" DataValueField="OrganisationID" AppendDataBoundItems="true" AutoPostBack="True">
            <asp:ListItem Value="">Select Customer</asp:ListItem>
        </asp:DropDownList> 
        <asp:LinqDataSource ID="LinqDataSource13" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="OrganisationDetails" OrderBy="AccountIdName">
        </asp:LinqDataSource>
    </div><br />
    <div id="sitenic" class="control-hidden" runat="server"> <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="LinqDataSource14" DataTextField="SiteName" DataValueField="SiteID" AppendDataBoundItems="True" AutoPostBack="True" Height="16px">
        <asp:ListItem Value="">Select a Site</asp:ListItem>
          </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="DropDownList15" ValidationGroup="ValidationGroup2" CssClass="smallwarning" runat="server" ErrorMessage="You must select a site">*</asp:RequiredFieldValidator>
        <asp:LinqDataSource ID="LinqDataSource14" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="SiteName" TableName="Sites" Where="OrganisationID == @OrganisationID">
            <WhereParameters>
                <asp:ControlParameter ControlID="DropDownList14" Name="OrganisationID" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource></div>
<br />
        <div id="nicform"  class="control-hidden" runat="server">
            <table id="NewNicTable">
                      
                        
                        <tbody>
<tr><th scope="row">Device</th>
    <td>
        <asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="LinqDataSource17" DataTextField="HostName" DataValueField="DeviceID" AppendDataBoundItems="True">
            <asp:ListItem Value="">Select Device</asp:ListItem>
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource17" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="HostName" TableName="Devices" Where="SiteID == @SiteID">
            <WhereParameters>
                <asp:ControlParameter ControlID="DropDownList15" Name="SiteID" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        <asp:RequiredFieldValidator CssClass="smallwarning" ControlToValidate="DropDownList18" ValidationSummary="ValidationSummary2" ValidationGroup="nicgroup" runat="server" ErrorMessage="You must select a device">*</asp:RequiredFieldValidator>
    </td>
</tr>
                    <tr><th scope="row">Internal IP Address</th> <td>
                        <asp:TextBox ID="TextBox7" runat="server" Columns="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox7" CssClass="smallwarning" ValidationSummary="ValidationSummary2" ValidationGroup="nicgroup" ID="RequiredFieldValidator6" runat="server" ErrorMessage="You must enter an internal IP address">*</asp:RequiredFieldValidator>

                                                                 </td></tr>
                             <tr><th scope="row">Internal Subnet</th><td> <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="LinqDataSource15" DataTextField="SubnetDescription" DataValueField="SubnetID" AppendDataBoundItems="true">
                                 <asp:ListItem Value="">Select Subnet</asp:ListItem>
                                                                          </asp:DropDownList> <asp:LinqDataSource ID="LinqDataSource15" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="SubnetDescription" TableName="Subnets" Where="SiteID == @SiteID">
                                 <WhereParameters>
                                     <asp:ControlParameter ControlID="DropDownList15" Name="SiteID" PropertyName="SelectedValue" Type="Int32" />
                                 </WhereParameters>
                                 </asp:LinqDataSource>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="DropDownList16" ValidationGroup="nicgroup" CssClass="smallwarning" ValidationSummary="ValidationSummary2"  ValidationExpression="^\d{1,3}[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}$" runat="server" ErrorMessage="You must enter a correct IP address">*</asp:RegularExpressionValidator>
                           
                                 </td>  </tr>
                            <tr> <th scope="row">External IP Address</th><td> <asp:TextBox ID="TextBox8" runat="server" Columns="40"></asp:TextBox></td></tr>
                    <tr> <th scope="row">External Subnet</th><td>
                        <asp:DropDownList ID="DropDownList17" runat="server" DataSourceID="LinqDataSource16" DataTextField="SubnetDescription" DataValueField="SubnetID" AppendDataBoundItems="true">
                            <asp:ListItem Value="">Select Subnet</asp:ListItem>
                        </asp:DropDownList><asp:LinqDataSource ID="LinqDataSource16" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="SubnetDescription" TableName="Subnets" Where="SiteID == @SiteID">
                        <WhereParameters>
                            <asp:ControlParameter ControlID="DropDownList14" Name="SiteID" PropertyName="SelectedValue" Type="Int32" />
                        </WhereParameters>
                        </asp:LinqDataSource>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="DropDownList17" ValidationGroup="nicgroup" CssClass="smallwarning" ValidationSummary="ValidationSummary2"  ValidationExpression="^\d{1,3}[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}$" runat="server" ErrorMessage="You must enter a correct IP address">*</asp:RegularExpressionValidator>
                           
                                                             </td></tr>
                    <tr> <th scope="row">Comments</th><td>
                        <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Columns="40"></asp:TextBox> <td></tr>
                    
                    
                    

                            <tr><td> <asp:Button ID="Button3"  runat="server" ValidationGroup="nicgroup" Text="Insert" />&nbsp; <asp:Button ID="Button4" runat="server" Text="Cancel" /></td></tr>


                        </tbody>
                    </table>



        </div>
<div id="nictab-2" class="tab-content">  2</div>
<div id="nictab-3" class="tab-content">  3</div>
    <asp:ValidationSummary ID="ValidationSummary2" CssClass="smallwarning" ValidationGroup="nicgroup" runat="server" />
 <div class="clear"></div>
</div></div></div>
                <div class="clear height-fix"></div>

		</div>
<div class="grid_6">
				<div class="block-border" >
					<div class="block-header">
						<h1>Subnets</h1><span></span>
                        
					</div>

				
					<div class="block-content  tab-container" id="tab-panel-3"><br />
                      <ul class="tabs">
							<li><a href="#subtab-1">New</a></li>
							<li><a href="#subtab-2">Update</a></li>

    <li><a href="#subtab-3">Deactivate</a></li>

							
						</ul>
<div id="subtab-1" class="tab-content">1
    </div>
                        <div id="subtab-2" class="tab-content">  2</div>
<div id="subtab-3" class="tab-content">  3</div>
                        
 <div class="clear"></div>
                        </div></div></div>
                <div class="clear height-fix"></div>

			
         <!--! end of #main-content -->
  </div></div> </div><!--! end of #main -->

    
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
  
  <script type="text/javascript">
      $().ready(function () {
          $('#editdevice').dataTable({
              "sScrollY": "300px",
              "bPaginate": false,
              "bScrollCollapse": true,
              "aaSorting": [[1, "asc"]]
          });
          $('#deactivatedevice').dataTable(
             



              );
          /*
		 * Tabs
		 */
          $("#tab-panel-1").tabs({ cookie: { expires: 30 } });
          $("#tab-panel-2").tabs({ cookie: { expires: 30 } });
          $("#tab-panel-3").tabs({ cookie: { expires: 30 } });
          $("#dialog").dialog({
              autoOpen: false, modal: true
          });

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
      function openDialog(id) {
          $('#' + id).dialog('open');
      }

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
