<%@ LANGUAGE=VBScript CODEPAGE=1252 %>
<%
Option Explicit

Response.AddHeader "Pragma", "no-cache"
Response.CacheControl      = "no-cache"
Response.ExpiresAbsolute   = #01/01/2000#
Response.Charset           = "iso-8859-1"

Session("lc_appl_no") = 32  ' C&P: Prevention

' The maximum number of characters that will be stored in the database.
Const cintMaxLenCaption = 255

Const iSOURCE_NO = 0
Const iPANEL     = 1
Const iCAPTION   = 2

Const iPAGE_TITLE = 1
Const iPAGE_URL   = 2
Const iIMAGE_URL  = 3

If Len(Request.Form("save")) > 0 Then
	SaveWork
	DisplayWork
ElseIf Len(Request.Form("create")) > 0 Then
	SaveWork
	CreateExhibition
Else
	DisplayWork
End If

Response.End

'**************************************

Sub SaveWork
	
	Dim objLC, intSourceNo, strSourceNo, intPanel, strCaption, aSources(), intRowNo
	
	intRowNo = 0
	intSourceNo = 1
	strSourceNo = "01"

	Do While Request.Form("panel" & strSourceNo).Count <> 0
		' Truncate inputs
		intPanel   = CInt(Request.Form("panel" & strSourceNo))
		strCaption = Left(Trim(Request.Form("caption" & strSourceNo)), cintMaxLenCaption)

		' Only add to database if the visitor has chosen a panel or typed something into the caption box.
		If intPanel <> 0 Or Len(strCaption) > 0 Then
			ReDim Preserve aSources(2, intRowNo)
			aSources(iSOURCE_NO, intRowNo) = intSourceNo
			aSources(iPANEL, intRowNo)     = intPanel
			aSources(iCAPTION, intRowNo)   = strCaption
			intRowNo = intRowNo + 1
		End If
		intSourceNo = intSourceNo + 1
		strSourceNo = Right("0" & CStr(intSourceNo), 2)
	Loop

	' Clear out all previous work for this user, then update with new changed work
	Set objLC = Server.CreateObject("NationalArchives.LearningCurve")
	objLC.DeleteWork(Null)
	If intRowNo > 0 Then  ' there is work to be saved
		objLC.SaveWork aSources
	End If
	Set objLC = Nothing

End Sub  ' SaveWork

'**************************************

Sub DisplayWork
	' Retrieve and display existing sources stored for this user
	Dim objLC
	Dim aSources
	Dim aSourceChoices
	Dim i, j
	Dim intSourceNo, strSourceNo, blnChosen
%>
<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>The National Archives | Education | Crime and Punishment</title>
<!--#include virtual="/includes/google-analytics-gtm-head.inc" -->
<link rel="stylesheet" href="../stylesheets/c-p.css" type="text/css">
<link href="/css/menusmicrosites/breadcrumb.css" rel="stylesheet" type="text/css"></head>

<body bgcolor="#FFFFFF" text="#000000">
<!--#include virtual="/includes/google-analytics-gtm-body.inc" -->
<!--#include virtual="/includes/menusmicrosites/cp_breadcrumb.inc" -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td align="left" bgcolor="#CDCDB6" colspan="2"><img src="../global/title1450.gif" width="650" height="81" alt="Crime and Punishment"></td>
    <td align="right" bgcolor="#CDCDB6"><img src="../images/pix_trans.gif" height="81" width="110"></td>
  </tr>
  <tr> 
    <td align="center" width="50%" bgcolor="#000066">&nbsp;</td>
    <td align="left" width="106" bgcolor="#000066">&nbsp;</td>
	<td align="right" width="12.5%" bgcolor="000066"><a href="../default.htm"><img src="../global/mpblue.gif" width="84" height="30" border="0" alt="Main page"></a></td>
  </tr>
  <tr bgcolor="#FFFFFF"> 
    <td align="left" width="21%">&nbsp;</td>
    <td align="center" width="60%">&nbsp;</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>

<div style="margin-left: 5%; margin-right: 5%;">
<form name="bq" method="post" action="bq.asp">
  <table border="0" cellpadding="0" cellspacing="0">
	<tr> 
	  <td align="left" valign="top" colspan="6"> 
		<p class="s_titlesm">CRIME PREVENTION: The Big Question</p>
		<p class="s_titlesm">What were the key turning-points in the history of crime prevention in Britain?</p>
		<p class="s_default">Select a key group of sources which illustrate the turning-points in the history of crime prevention. Add a short caption to each document.</p>
		<p class="s_default"><a href="bq-help.htm" target="help">More instructions and help...</a><br>&nbsp;</p>
	  </td>
	</tr>
	<%
	If Session("lc_user_no") > 0 Then
%>
	<tr> 
	  <td bgcolor="#CDCDB6" colspan="6">
	  <p class="s_default">You are signed in as <b><%= Session("lc_user_name") %></b>, and your work is 
		being permanently saved. You can <a href="<%= Application("lc_sign_out_path") %>">sign out</a> 
		and return to your work at a later date. <b>Remember to save your work before signing out!</b></p>
	  </td>
	</tr>
	<%
	Else
%>
	<tr> 
	  <td bgcolor="#CDCDB6" colspan="6">
	  <p class="s_default">You are not signed in yet. You can work on this 
		page, but it will not be saved when you leave this site. <a href="<%= Application("lc_sign_in_path") %>">Sign in now</a> to permanently save your work, or to retrieve any previous work you have saved before.</p>
		</td>
	</tr>
<%
	End If
%>
	<tr>
	<td bgcolor="#EBEBE2" align="left" valign="bottom" class="s_default" colspan="6">
		<br><p><b>Turning-points:</b></p>
		<ol>
			<li>The setting up of JPs in the Middle Ages</li>
			<li>The setting up of police forces in the mid-19th century</li>
			<li>The modernisation of the police in the 20th century</li>
			<li>Evidence of continuity over a long period</li>
		</ol>
	</td>
	</tr>
	<tr>
		<td bgcolor="#CDCDB6" align="left" valign="bottom" class="s_default">&nbsp;</td>
		<td bgcolor="#EBEBE2" colspan="5" align="center" valign="bottom" class="s_default">&nbsp;</td>
	</tr>
	<tr>
		<td bgcolor="#CDCDB6" align="left" valign="bottom" class="s_default"><b><br>Source Title and Your Caption</b></td>
		<td bgcolor="#EBEBE2" colspan="5" align="center" valign="bottom" class="s_default"><b>Turning-point</b></td>
	</tr>
	<tr valign="middle"> 
	  <td bgcolor="#CDCDB6" align="left"> 
		<p class="s_default"></p>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<div align="center" class="s_default"><b>1</b></div>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<div align="center" class="s_default"><b>2</b></div>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<div align="center" class="s_default"><b>3</b></div>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<div align="center" class="s_default"><b>4</b></div>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<div align="center" class="s_default"><b>None</b></div>
	  </td>
	</tr>
<%
	Set objLC = Server.CreateObject("NationalArchives.LearningCurve")
	' Get sources
	aSources = objLC.GetData("includes/cp-prevention-data.txt", True, "cp_prevention_data")

	' Get work for this user
	aSourceChoices = objLC.GetWork(Null)
	Set objLC = Nothing
	
	For i = 0 To UBound(aSources, 2)
		intSourceNo = CInt(aSources(iSOURCE_NO, i))
		strSourceNo = Right("0" & CStr(intSourceNo), 2)
		blnChosen = False
		If IsArray(aSourceChoices) Then
			For j = 0 To UBound(aSourceChoices, 2)
				If CInt(aSourceChoices(iSOURCE_NO, j)) = intSourceNo Then
					blnChosen = True
					Exit For
				End If
			Next
		End If

		If blnChosen Then
%>
	<tr valign="middle"> 
	  <td bgcolor="#CDCDB6" align="left"> 
		<p class="s_default"><a href="<% = aSources(iPAGE_URL, i) %>">
		  <% = aSources(iPAGE_TITLE, i) %>
		  </a><br>
		  <textarea name="caption<% = strSourceNo %>" cols="50" rows="2"><%= Server.HTMLEncode(aSourceChoices(iCAPTION, j)) %></textarea>
		</p>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="1"<% If aSourceChoices(iPANEL, j) = 1 Then Response.Write(" checked") %>>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="2"<% If aSourceChoices(iPANEL, j) = 2 Then Response.Write(" checked") %>>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="3"<% If aSourceChoices(iPANEL, j) = 3 Then Response.Write(" checked") %>>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="4"<% If aSourceChoices(iPANEL, j) = 4 Then Response.Write(" checked") %>>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="0"<% If aSourceChoices(iPANEL, j) = 0 Then Response.Write(" checked") %>>
	  </td>
	</tr>
<%
		Else
%>
	<tr valign="middle"> 
	  <td bgcolor="#CDCDB6" align="left"> 
		<p class="s_default"><a href="<% = aSources(iPAGE_URL, i) %>">
		  <% = aSources(iPAGE_TITLE, i) %>
		  </a><br>
		  <textarea name="caption<% = strSourceNo %>" cols="50" rows="2"></textarea>
		</p>
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="1">
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="2">
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="3">
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="4">
	  </td>
	  <td bgcolor="#EBEBE2" align="center"> 
		<input type="radio" name="panel<% = strSourceNo %>" value="0" checked>
	  </td>
	</tr>
<%
		End If
	Next
%>
	<tr valign="middle"> 
	  <td bgcolor="#CDCDB6" align="left"> 
		<input type="submit" name="save" value="Save my work so far">
		<input type="submit" name="create" value="Create my final work">
	  </td>
	  <td bgcolor="#EBEBE2" align="center">&nbsp;</td>
	  <td bgcolor="#EBEBE2" align="center">&nbsp;</td>
	  <td bgcolor="#EBEBE2" align="center">&nbsp;</td>
	  <td bgcolor="#EBEBE2" align="center">&nbsp;</td>
	  <td bgcolor="#EBEBE2" align="center">&nbsp;</td>
	</tr>
  </table>
</form>
</div>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
<%
End Sub  ' DisplayWork

'**************************************

Sub CreateExhibition
	' Retrieve and display existing sources for this user
	Dim aSources, objLC, aSourceChoices, i
	Dim intSourceNo, intPanel, strCaption
	Dim strPageTitle, strPageUrl, strImageUrl
	Dim htmPanel(4)

	Set objLC = Server.CreateObject("NationalArchives.LearningCurve")
	aSources = objLC.GetData("includes/cp-prevention-data.txt", True, "cp_prevention_data")
	aSourceChoices = objLC.GetWork(Null)
	Set objLC = Nothing

	If IsArray(aSourceChoices) Then
		For i = 0 To UBound(aSourceChoices, 2)
			intSourceNo  = CInt(aSourceChoices(iSOURCE_NO, i))
			intPanel     = CInt(aSourceChoices(iPANEL, i))
			strCaption   = CStr(aSourceChoices(iCAPTION, i))
			strPageTitle = CStr(aSources(iPAGE_TITLE, intSourceNo - 1))
			strPageUrl   = CStr(aSources(iPAGE_URL, intSourceNo - 1))
			strImageUrl  = CStr(aSources(iIMAGE_URL, intSourceNo - 1))
			If intPanel > 0 Then
				htmPanel(intPanel) = htmPanel(intPanel) & ("<p class=""s_default""><img src=""" & strImageUrl & """ alt=""" & Server.HTMLEncode(strPageTitle) & """></p><p class=""s_default caption""><b><a href=""" & strPageUrl & """>" & Server.HTMLEncode(strPageTitle) & "</a></b><br>" & Server.HTMLEncode(strCaption) & "</p>")
			End If
		Next
	End If
%>
<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>The National Archives | Education | Crime and Punishment</title>
<!--#include virtual="/includes/google-analytics-gtm-head.inc" -->
<base href="<%= "http://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("SCRIPT_NAME") %>">
<link rel="stylesheet" href="../stylesheets/c-p.css" type="text/css">
<style type="text/css">
#exhibition { margin-left: 5%; margin-right: 5%; margin-bottom: 20px}
#panel1 { padding: 10px; background-color: #cdcdb6; text-align: left; }
#panel2 { padding: 10px; background-color: #ebebe2; text-align: right; }
#panel3 { padding: 10px; background-color: #cdcdb6; text-align: left; }
#panel4 { padding: 10px; background-color: #ebebe2; text-align: right; }
.caption { width: 400px; border: 1px solid black; padding: 5px; background-color: white; }
</style>
<link href="/css/menusmicrosites/breadcrumb.css" rel="stylesheet" type="text/css"></head>

<body bgcolor="#FFFFFF" text="#000000">
<!--#include virtual="/includes/google-analytics-gtm-body.inc" -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td align="left" bgcolor="#CDCDB6" colspan="2"><img src="../global/title1450.gif" width="650" height="81" alt="Crime and Punishment"></td>
    <td align="right" bgcolor="#CDCDB6"><img src="../global/logo.gif" width="110" height="81" alt="Public Record Office"></td>
  </tr>
  <tr> 
    <td align="center" width="50%" bgcolor="#000066">&nbsp;</td>
    <td align="left" width="106" bgcolor="#000066">&nbsp;</td>
    <td align="right" bgcolor="#000066"><a href="../default.htm"><img src="../global/mpblue.gif" width="84" height="30" border="0" alt="Main page"></a></td>
  </tr>
  <tr bgcolor="#FFFFFF"> 
    <td align="left" width="21%">&nbsp;</td>
    <td align="center" width="60%">&nbsp;</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>

<div id="exhibition">
<p class="s_titlesm">THE KEY TURNING POINTS IN THE HISTORY OF CRIME PREVENTION IN BRITAIN</p>

<!-- GROUP ONE -->
<div id="panel1">
<p class="s_titlesm">THE SETTING UP OF JPs IN THE MIDDLE AGES</p>
<%= htmPanel(1) %>
</div>

<!-- GROUP TWO -->
<div id="panel2">
<p class="s_titlesm">THE SETTING UP OF POLICE FORCES IN THE MID-19TH CENTURY</p>
<%= htmPanel(2) %>
</div>

<!-- GROUP THREE -->
<div id="panel3">
<p class="s_titlesm">THE MODERNISATION OF THE POLICE IN THE 20TH CENTURY</p>
<%= htmPanel(3) %>
</div>

<!-- GROUP FOUR -->
<div id="panel4">
<p class="s_titlesm">EVIDENCE OF CONTINUITY OVER A LONG PERIOD</p>
<%= htmPanel(4) %>
</div>

<p class="s_default"><a href="bq.asp">Back to your work</a></p>
<p>&nbsp;</p>
</div>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
<%
End Sub  ' CreateExhibition

'**************************************
%>
