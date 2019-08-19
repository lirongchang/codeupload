<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh">
   <head>
	  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
	  <link rel="shortcut icon" href=${iconPath} type="image/png"/>
	  <link rel="stylesheet" href=${cssPath} type="text/css"/>
	  <title>${title}</title>
	</head>
	<body>
        <div class="breadcrumb" id="breadcrumb">
            <#list NavList as list>
            	<#if list_has_next>
		            <#list list?keys as key>
		                <#if key=="package">
		                   <a href=${list["link"]} class="el_package">${list["${key}"]}</a>
		                   >
		                <#elseif key=="class">
		                	<a href=${list["link"]} class="el_class">${list["${key}"]}</a>
		                	>
		                <#elseif key=="report">
		                    <a href=${list["link"]} class="el_report">${list["${key}"]}</a>
		                    >
		                </#if>
		             </#list>
	              <#else>
	              	<#list list?keys as key>
		                <#if key=="package">
		                   <span class="el_package">${title}</span>
		                <#elseif key=="class">
		                	<span class="el_class">${title}</span>
		                <#elseif key=="report">
		                    <span class="el_report">${title}</span>
		                </#if>
	               </#list>
	          </#if>
          </#list>
        </div>
        <h1>${title}</h1>
        <table id="passingcheck" class="passingcheck">
            <thead id="tablename" class="tablename">
                <tr>
                  <#list fieldListName as name>
                     <th>${name}</th>
				  </#list>
                 </tr>
              </thead>
              <tbody id="tablecontent" class="tablecontent">
               	 <#list valueList as map>
                   <tr>
                      <#list map?keys as key>
                        <#if key=="package">
                           <td><a href=${map["link"]} class="el_package">${map["${key}"]}</a></td>
                        <#elseif key=="class">
                        	<td><a href=${map["link"]} class="el_class">${map["${key}"]}</a></td>
                        <#elseif key!="link">
                          <td>${map["${key}"]}</td>
                        </#if>
					  </#list>
                   </tr>
                 </#list>
               </tbody>
          </table>
		  	<br/>
            <div align="center">
              <img src="${imgPath}" class="img" id="img"/>
            </div>
	   </body>
</html>
