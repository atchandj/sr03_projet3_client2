<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleMainProxyid" scope="session" class="DefaultNamespace.MainProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleMainProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleMainProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleMainProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        DefaultNamespace.Main getMain10mtemp = sampleMainProxyid.getMain();
if(getMain10mtemp == null){
%>
<%=getMain10mtemp %>
<%
}else{
        if(getMain10mtemp!= null){
        String tempreturnp11 = getMain10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String yearBook_1id=  request.getParameter("yearBook16");
        int yearBook_1idTemp  = Integer.parseInt(yearBook_1id);
        String adName_2id=  request.getParameter("adName18");
            java.lang.String adName_2idTemp = null;
        if(!adName_2id.equals("")){
         adName_2idTemp  = adName_2id;
        }
        sampleMainProxyid.dropAd(yearBook_1idTemp,adName_2idTemp);
break;
case 20:
        gotMethod = true;
        String category_3id=  request.getParameter("category23");
            java.lang.String category_3idTemp = null;
        if(!category_3id.equals("")){
         category_3idTemp  = category_3id;
        }
        sampleMainProxyid.dropCategory(category_3idTemp);
break;
case 25:
        gotMethod = true;
        String yearBook_4id=  request.getParameter("yearBook28");
        int yearBook_4idTemp  = Integer.parseInt(yearBook_4id);
        java.lang.String getYearBook25mtemp = sampleMainProxyid.getYearBook(yearBook_4idTemp);
if(getYearBook25mtemp == null){
%>
<%=getYearBook25mtemp %>
<%
}else{
        String tempResultreturnp26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getYearBook25mtemp));
        %>
        <%= tempResultreturnp26 %>
        <%
}
break;
case 30:
        gotMethod = true;
        String yearBook_5id=  request.getParameter("yearBook33");
        int yearBook_5idTemp  = Integer.parseInt(yearBook_5id);
        java.lang.String getAdsNames30mtemp = sampleMainProxyid.getAdsNames(yearBook_5idTemp);
if(getAdsNames30mtemp == null){
%>
<%=getAdsNames30mtemp %>
<%
}else{
        String tempResultreturnp31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsNames30mtemp));
        %>
        <%= tempResultreturnp31 %>
        <%
}
break;
case 35:
        gotMethod = true;
        String yearBook_6id=  request.getParameter("yearBook38");
        int yearBook_6idTemp  = Integer.parseInt(yearBook_6id);
        String adName_7id=  request.getParameter("adName40");
            java.lang.String adName_7idTemp = null;
        if(!adName_7id.equals("")){
         adName_7idTemp  = adName_7id;
        }
        java.lang.String getAd35mtemp = sampleMainProxyid.getAd(yearBook_6idTemp,adName_7idTemp);
if(getAd35mtemp == null){
%>
<%=getAd35mtemp %>
<%
}else{
        String tempResultreturnp36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAd35mtemp));
        %>
        <%= tempResultreturnp36 %>
        <%
}
break;
case 42:
        gotMethod = true;
        String yearBook_8id=  request.getParameter("yearBook45");
        int yearBook_8idTemp  = Integer.parseInt(yearBook_8id);
        String adName_9id=  request.getParameter("adName47");
            java.lang.String adName_9idTemp = null;
        if(!adName_9id.equals("")){
         adName_9idTemp  = adName_9id;
        }
        String phone_10id=  request.getParameter("phone49");
            java.lang.String phone_10idTemp = null;
        if(!phone_10id.equals("")){
         phone_10idTemp  = phone_10id;
        }
        String street_11id=  request.getParameter("street51");
            java.lang.String street_11idTemp = null;
        if(!street_11id.equals("")){
         street_11idTemp  = street_11id;
        }
        String town_12id=  request.getParameter("town53");
            java.lang.String town_12idTemp = null;
        if(!town_12id.equals("")){
         town_12idTemp  = town_12id;
        }
        String postCode_13id=  request.getParameter("postCode55");
            java.lang.String postCode_13idTemp = null;
        if(!postCode_13id.equals("")){
         postCode_13idTemp  = postCode_13id;
        }
        String category_14id=  request.getParameter("category57");
            java.lang.String category_14idTemp = null;
        if(!category_14id.equals("")){
         category_14idTemp  = category_14id;
        }
        sampleMainProxyid.addAd(yearBook_8idTemp,adName_9idTemp,phone_10idTemp,street_11idTemp,town_12idTemp,postCode_13idTemp,category_14idTemp);
break;
case 59:
        gotMethod = true;
        String yearBook_15id=  request.getParameter("yearBook62");
        int yearBook_15idTemp  = Integer.parseInt(yearBook_15id);
        String oldAdName_16id=  request.getParameter("oldAdName64");
            java.lang.String oldAdName_16idTemp = null;
        if(!oldAdName_16id.equals("")){
         oldAdName_16idTemp  = oldAdName_16id;
        }
        String oldStreet_17id=  request.getParameter("oldStreet66");
            java.lang.String oldStreet_17idTemp = null;
        if(!oldStreet_17id.equals("")){
         oldStreet_17idTemp  = oldStreet_17id;
        }
        String oldTown_18id=  request.getParameter("oldTown68");
            java.lang.String oldTown_18idTemp = null;
        if(!oldTown_18id.equals("")){
         oldTown_18idTemp  = oldTown_18id;
        }
        String oldPostCode_19id=  request.getParameter("oldPostCode70");
            java.lang.String oldPostCode_19idTemp = null;
        if(!oldPostCode_19id.equals("")){
         oldPostCode_19idTemp  = oldPostCode_19id;
        }
        String oldCategory_20id=  request.getParameter("oldCategory72");
            java.lang.String oldCategory_20idTemp = null;
        if(!oldCategory_20id.equals("")){
         oldCategory_20idTemp  = oldCategory_20id;
        }
        String newAdName_21id=  request.getParameter("newAdName74");
            java.lang.String newAdName_21idTemp = null;
        if(!newAdName_21id.equals("")){
         newAdName_21idTemp  = newAdName_21id;
        }
        String newPhone_22id=  request.getParameter("newPhone76");
            java.lang.String newPhone_22idTemp = null;
        if(!newPhone_22id.equals("")){
         newPhone_22idTemp  = newPhone_22id;
        }
        String newStreet_23id=  request.getParameter("newStreet78");
            java.lang.String newStreet_23idTemp = null;
        if(!newStreet_23id.equals("")){
         newStreet_23idTemp  = newStreet_23id;
        }
        String newTown_24id=  request.getParameter("newTown80");
            java.lang.String newTown_24idTemp = null;
        if(!newTown_24id.equals("")){
         newTown_24idTemp  = newTown_24id;
        }
        String newPostCode_25id=  request.getParameter("newPostCode82");
            java.lang.String newPostCode_25idTemp = null;
        if(!newPostCode_25id.equals("")){
         newPostCode_25idTemp  = newPostCode_25id;
        }
        String newCategory_26id=  request.getParameter("newCategory84");
            java.lang.String newCategory_26idTemp = null;
        if(!newCategory_26id.equals("")){
         newCategory_26idTemp  = newCategory_26id;
        }
        sampleMainProxyid.modifyAd(yearBook_15idTemp,oldAdName_16idTemp,oldStreet_17idTemp,oldTown_18idTemp,oldPostCode_19idTemp,oldCategory_20idTemp,newAdName_21idTemp,newPhone_22idTemp,newStreet_23idTemp,newTown_24idTemp,newPostCode_25idTemp,newCategory_26idTemp);
break;
case 86:
        gotMethod = true;
        String yearBook_27id=  request.getParameter("yearBook89");
        int yearBook_27idTemp  = Integer.parseInt(yearBook_27id);
        java.lang.String getTownsNames86mtemp = sampleMainProxyid.getTownsNames(yearBook_27idTemp);
if(getTownsNames86mtemp == null){
%>
<%=getTownsNames86mtemp %>
<%
}else{
        String tempResultreturnp87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getTownsNames86mtemp));
        %>
        <%= tempResultreturnp87 %>
        <%
}
break;
case 91:
        gotMethod = true;
        String yearBook_28id=  request.getParameter("yearBook94");
        int yearBook_28idTemp  = Integer.parseInt(yearBook_28id);
        java.lang.String getStreetsNames91mtemp = sampleMainProxyid.getStreetsNames(yearBook_28idTemp);
if(getStreetsNames91mtemp == null){
%>
<%=getStreetsNames91mtemp %>
<%
}else{
        String tempResultreturnp92 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getStreetsNames91mtemp));
        %>
        <%= tempResultreturnp92 %>
        <%
}
break;
case 96:
        gotMethod = true;
        String yearBook_29id=  request.getParameter("yearBook99");
        int yearBook_29idTemp  = Integer.parseInt(yearBook_29id);
        java.lang.String getPostCodes96mtemp = sampleMainProxyid.getPostCodes(yearBook_29idTemp);
if(getPostCodes96mtemp == null){
%>
<%=getPostCodes96mtemp %>
<%
}else{
        String tempResultreturnp97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPostCodes96mtemp));
        %>
        <%= tempResultreturnp97 %>
        <%
}
break;
case 101:
        gotMethod = true;
        String categoryName_30id=  request.getParameter("categoryName104");
            java.lang.String categoryName_30idTemp = null;
        if(!categoryName_30id.equals("")){
         categoryName_30idTemp  = categoryName_30id;
        }
        sampleMainProxyid.addCategory(categoryName_30idTemp);
break;
case 106:
        gotMethod = true;
        String oldCategoryName_31id=  request.getParameter("oldCategoryName109");
            java.lang.String oldCategoryName_31idTemp = null;
        if(!oldCategoryName_31id.equals("")){
         oldCategoryName_31idTemp  = oldCategoryName_31id;
        }
        String newCategoryName_32id=  request.getParameter("newCategoryName111");
            java.lang.String newCategoryName_32idTemp = null;
        if(!newCategoryName_32id.equals("")){
         newCategoryName_32idTemp  = newCategoryName_32id;
        }
        sampleMainProxyid.updateCategory(oldCategoryName_31idTemp,newCategoryName_32idTemp);
break;
case 113:
        gotMethod = true;
        String yearBook_33id=  request.getParameter("yearBook116");
        int yearBook_33idTemp  = Integer.parseInt(yearBook_33id);
        java.lang.String getCategoriesNames113mtemp = sampleMainProxyid.getCategoriesNames(yearBook_33idTemp);
if(getCategoriesNames113mtemp == null){
%>
<%=getCategoriesNames113mtemp %>
<%
}else{
        String tempResultreturnp114 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getCategoriesNames113mtemp));
        %>
        <%= tempResultreturnp114 %>
        <%
}
break;
case 118:
        gotMethod = true;
        String yearBook_34id=  request.getParameter("yearBook121");
        int yearBook_34idTemp  = Integer.parseInt(yearBook_34id);
        String street_35id=  request.getParameter("street123");
            java.lang.String street_35idTemp = null;
        if(!street_35id.equals("")){
         street_35idTemp  = street_35id;
        }
        String town_36id=  request.getParameter("town125");
            java.lang.String town_36idTemp = null;
        if(!town_36id.equals("")){
         town_36idTemp  = town_36id;
        }
        String postCode_37id=  request.getParameter("postCode127");
            java.lang.String postCode_37idTemp = null;
        if(!postCode_37id.equals("")){
         postCode_37idTemp  = postCode_37id;
        }
        java.lang.String getAdsByAddress118mtemp = sampleMainProxyid.getAdsByAddress(yearBook_34idTemp,street_35idTemp,town_36idTemp,postCode_37idTemp);
if(getAdsByAddress118mtemp == null){
%>
<%=getAdsByAddress118mtemp %>
<%
}else{
        String tempResultreturnp119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getAdsByAddress118mtemp));
        %>
        <%= tempResultreturnp119 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>