<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>The National Archives | Education</title>
<!--#include virtual="/includes/google-analytics-gtm-head.inc" -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
	<!--
	function OpenPopup(s_url, s_width, s_height) {
		var h_window = window.open(s_url, "Popup", "width=" + s_width + ",height=" + s_height + ",scrollbars=1,resizable=1");

		if((document.window != null) && (!h_window.opener)) {
			h_window.opener = document.window;
		}
		if(h_window.focus) {
			h_window.focus();
		}
	}
	//-->
</script>

<SCRIPT LANGUAGE="JavaScript" type="text/javascript">
<!--
	function ClosePopup(s_redirect) {
		var h_opener = window.opener;

		if(h_opener && s_redirect) {
			h_opener.window.location = s_redirect;
		}
		window.close();
	}
//-->
</SCRIPT>

<link rel="stylesheet" href="../stylesheets/c-p.css" type="text/css">
<link href="/css/menusmicrosites/breadcrumb.css" rel="stylesheet" type="text/css"></head>

<body bgcolor="#cdcdb6" text="#000000">
<!--#include virtual="/includes/google-analytics-gtm-body.inc" -->
<!-- BEGIN Header --> 
<table border="0" width="100%" cellpadding="0" cellspacing="">
  <tr> 
    <td valign="top"><img src="../global/cstask.gif" width="148" height="30" border="0" name="Image2" alt="Task"> 
    </td>
  </tr>
</table>
<!-- END header -->
<form method="post">
  <table border="0" width="100%" cellpadding="3" cellspacing="3">
    <tr align="center"> 
      <td valign="top"> 
        <table border="0" cellspacing="3" cellpadding="0" width="410">
          <tr align="center" valign="top"> 
            <td colspan="2" height="2" > 
              <p class="tasktitlegreen">Case Study 2 - Drug Smuggling</p>
            </td>
          </tr>
          <tr align="center"> 
            <td colspan="2" class="taskgreen" height="25" > 
              <p>Compare this Case-Study with <a href="g04cs4tsk.htm">Case-Study 
                4</a> in the Gallery.</p>
              </td>
          </tr>
          <tr align="left"> 
            <td colspan="2" class="taskgreen" align="center" ><img src="../crime/g10/jpgs/smuggle.jpg" width="405" height="174" alt=""></td>
          </tr>
          <tr align="left"> 
            <td colspan="2" align="center"> 
              <p class="taskgreen">What are the similarities and differences between 
                18th century smuggling and modern smuggling?</p>
            </td>
          </tr>
          <%
	If Not Request.Form("Submitted") = "True" Then
%>
          <input type="hidden" name="Submitted" value="True">
          <tr> 
            <td  valign="top" align="center" colspan="2"> 
              <textarea name="text1" cols="30" rows="5"><% = Server.HTMLEncode(Request.Form("text1")) %></textarea>
            </td>
          </tr>
          <tr> 
            <td align="center" colspan="2" class="taskgreen">Which are more important, 
              the similarities or the differences? Is 20th century smuggling a 
              &quot;social crime&quot;? </td>
          </tr>
          <tr> 
            <td align="center" colspan="2"> 
              <textarea name="text2" cols="30" rows="5"><% = Server.HTMLEncode(Request.Form("text2")) %></textarea>
            </td>
          </tr>
          <tr align="center"> 
            <td  colspan="2"> 
              <input type="image" border="0" name="submit2" src="../global/submit.gif" width="58" height="25" alt="Submit">
            </td>
          </tr>
          <%
	Else
%>
          <input type="hidden" name="text1" value="<% = Server.HTMLEncode(Request.Form("text1")) %>">
          <input type="hidden" name="text2" value="<% = Server.HTMLEncode(Request.Form("text2")) %>">
          <tr> 
            <td  valign="top" align="center" width="300"> 
              <p>
                <% = Replace(Server.HTMLEncode(Request.Form("text1")), vbCRLF, "<BR>") %>
              </p>
              <p class="taskgreen" align="center">Which are more important, the 
                similarities or the differences? Is 20th century smuggling a &quot;social 
                crime&quot;? </p>
              <p> 
                <% = Replace(Server.HTMLEncode(Request.Form("text2")), vbCRLF, "<BR>") %>
              </p>
              <p>&nbsp; </p>
            </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center"> 
              <input type="image" border="0" name="Submit" src="../global/edit.gif" width="48" height="25" alt="Edit">
            </td>
          </tr>
          <tr align="center"> 
            <td  colspan="2"> 
              <p class="taskgreen">You can print this page by clicking on the 
                print link below.</p>
              <p class="taskgreen"> 
                <script language="JavaScript">

if (window.print) {
document.write('<form> '
+ '<input type="image" name="print" src="../../global/print.gif" width="48" height="25" alt="Print" '
+ 'onClick="javascript:window.print()"> </form>');
}
// End -->
</script>
              </p>
            </td>
          </tr>
          <%
	End If
%>
        </table>
      </td>
    </tr>
  </table>
</form>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
