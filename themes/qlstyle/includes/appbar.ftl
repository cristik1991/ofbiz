<#if (requestAttributes.externalLoginKey)?exists><#assign externalKeyParam = "?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists></#if>
<#if (externalLoginKey)?exists><#assign externalKeyParam = "?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists></#if>
<#assign ofbizServerName = application.getAttribute("_serverId")?default("default-server")>
<#assign displayApps = Static["org.ofbiz.base.component.ComponentConfig"].getAppBarWebInfos(ofbizServerName, "main")>
<#assign displaySecondaryApps = Static["org.ofbiz.base.component.ComponentConfig"].getAppBarWebInfos(ofbizServerName, "secondary")>
<!-- Left side column. contains the sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<@ofbizContentUrl>/images/adminlte/dist/img/user2-160x160.jpg</@ofbizContentUrl>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>Alexander Pierce</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- 左侧导航栏开始 -->
          <ul class="sidebar-menu">
          	 <li class="header">MAIN NAVIGATION</li>
	     	 <#list displayApps as display>
	     	 	  <#assign thisApp = display.getContextRoot()>
		          <#assign thisApp = StringUtil.wrapString(thisApp)>
		          <#assign thisURL = thisApp>
		          <#if thisApp != "/">
		             <#assign thisURL = thisURL + "/control/main">
		          </#if>
	     	 	  <#assign thisURL = thisURL + "/control/main">
	              <li class="treeview">
	              	<a href="${thisURL}${StringUtil.wrapString(externalKeyParam)}"><i class="fa fa-book"></i> <span><#if uiLabelMap?exists>${uiLabelMap[display.title]}<#else>${display.title}</#if></span></a>
	              </li>
	     	 </#list>
          </ul>
          <!-- 导航栏结束 -->
        </section>
        <!-- /.sidebar -->
      </aside>
      <div class="content-wrapper">