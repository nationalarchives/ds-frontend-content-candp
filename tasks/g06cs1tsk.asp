<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>The National Archives | Education</title>
<!--#include virtual="/includes/google-analytics-gtm-head.inc" -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<SCRIPT LANGUAGE="JavaScript">
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
</SCRIPT>
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
        <table border="0" cellspacing="3" cellpadding="0">
          <tr valign="top"> 
            <td colspan="2" align="center" > 
              <p class="tasktitlered">Case-Study 1 - The Bloody Code</p>
            </td>
          </tr>
          <tr> 
            <td colspan="2" class="taskgreen" align="center" >&nbsp;</td>
          </tr>
          <%
	If Not Request.Form("Submitted") = "True" Then
%>
          <tr> 
            <td rowspan="2"><img src="../punishment/g06/jpgs/squire.jpg" width="118" height="300" alt=""></td>
            <td class="taskred" align="center">If you were a country squire in 
              early 18th century England, what would you say to justify the Bloody 
              Code? 
              <textarea name="text1" cols="40" rows="4"><% = Server.HTMLEncode(Request.Form("text1")) %></textarea>
              <p>What criticisms would you make of the Bloody Code?<br>
                <textarea name="text2" cols="40" rows="4"><% = Server.HTMLEncode(Request.Form("text2")) %></textarea>
              </p>
            </td>
          </tr>
          <tr> 
            <td class="taskred" align="center" > 
              <input type="image" border="0" name="submit2" src="../global/submit.gif" width="58" height="25" alt="Submit">
            </td>
          </tr>
          <input type="hidden" name="Submitted" value="True">
          <tr> 
            <td align="center" colspan="2">&nbsp; </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center">&nbsp; </td>
          </tr>
          <%
	Else
%>
          <input type="hidden" name="text1" value="<% = Server.HTMLEncode(Request.Form("text1")) %>">
          <input type="hidden" name="text2" value="<% = Server.HTMLEncode(Request.Form("text2")) %>">
          <tr> 
            <td  colspan="2" align="center"> 
              <p><span class="taskred">If you were a country squire in early 18th 
                century England, what would you say to justify the Bloody Code?</span><br>
                <% = Replace(Server.HTMLEncode(Request.Form("text1")), vbCRLF, "<BR>") %>
                <br>
              </p>
            </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center"> 
              <p><span class="taskred">What criticisms would you make of the Bloody 
                Code?</span> <br>
                <% = Replace(Server.HTMLEncode(Request.Form("text2")), vbCRLF, "<BR>") %>
              </p>
            </td>
          </tr>
          <tr>
            <td  colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td  colspan="2" align="center"> 
              <input type="image" border="0" name="Submit" src="../global/edit.gif" width="48" height="25" alt="Edit">
            </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center"> 
              <p class="taskred">You can print this page by clicking on the print 
                link below.</p>
              <p class="taskred"> 
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
