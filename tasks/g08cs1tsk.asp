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
        <table border="0" cellspacing="3" cellpadding="0" width="400">
          <tr valign="top"> 
            <td colspan="3" > 
              <p class="tasktitleblue">Case Study 3 - Did other parts of Britain 
                want to copy the Metropolitan Police?</p>
            </td>
          </tr>
          <tr> 
            <td colspan="3" ><span class="taskblue">These documents all come from 
              the moment of change-over from the old system of constables and 
              watchmen (see Galleries Crime Prevention before 1450 and Crime Prevention 
              1450-1750) to the new police. Use this table to compare the two 
              crime prevention systems.</span></td>
          </tr>
          <tr> 
            <td colspan="3" align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td align="center">&nbsp;</td>
            <td align="center"><span class="taskblue">As they saw it then</span><br>
            </td>
            <td align="center"><span class="taskblue">As you see it now</span></td>
          </tr>
          <%
	If Not Request.Form("Submitted") = "True" Then
%>
          <input type="hidden" name="Submitted" value="True">
          <tr> 
            <td><span class="taskblue">The old constables and watchmen: GOOD points 
              </span></td>
            <td align="center"> 
              <textarea name="text1" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text1")) %></textarea>
            </td>
            <td align="center"> 
              <textarea name="text2" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text2")) %></textarea>
            </td>
          </tr>
          <tr> 
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center" width="168">&nbsp;</td>
          </tr>
          <tr> 
            <td width="141"><span class="taskblue">The old constables and watchmen: 
              BAD points </span></td>
            <td align="center"> <br>
              <textarea name="text3" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text3")) %></textarea>
            </td>
            <td align="center"><br>
              <textarea name="text4" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text4")) %></textarea>
            </td>
          </tr>
          <tr> 
            <td align="center" width="141">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td width="141"><span class="taskblue">The new police:GOOD points 
              </span></td>
            <td align="center"> <br>
              <textarea name="text5" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text5")) %></textarea>
            </td>
            <td align="center"> <br>
              <textarea name="text6" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text6")) %></textarea>
            </td>
          </tr>
          <tr> 
            <td align="center" width="141">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td width="141"><span class="taskblue">The new police:BAD points </span></td>
            <td align="center"> 
              <textarea name="text7" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text7")) %></textarea>
            </td>
            <td align="center"> 
              <textarea name="text8" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text8")) %></textarea>
            </td>
          </tr>
          <tr> 
            <td align="center" width="141">&nbsp;</td>
            <td align="center" width="121">&nbsp;</td>
            <td align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td  colspan="3" align="center"> 
              <input type="image" border="0" name="submit2" src="../global/submit.gif" width="58" height="25" alt="Submit">
            </td>
          </tr>
          <tr> 
            <td  colspan="3" align="center">&nbsp;</td>
          </tr>
          <%
	Else
%>
          <input type="hidden" name="text1" value="<% = Server.HTMLEncode(Request.Form("text1")) %>">
          <input type="hidden" name="text2" value="<% = Server.HTMLEncode(Request.Form("text2")) %>">
          <input type="hidden" name="text3" value="<% = Server.HTMLEncode(Request.Form("text3")) %>">
          <input type="hidden" name="text4" value="<% = Server.HTMLEncode(Request.Form("text4")) %>">
          <input type="hidden" name="text5" value="<% = Server.HTMLEncode(Request.Form("text5")) %>">
          <input type="hidden" name="text6" value="<% = Server.HTMLEncode(Request.Form("text6")) %>">
          <input type="hidden" name="text7" value="<% = Server.HTMLEncode(Request.Form("text7")) %>">
          <input type="hidden" name="text8" value="<% = Server.HTMLEncode(Request.Form("text8")) %>">
          <tr> 
            <td align="center"><span class="taskblue">The old constables and watchmen: 
              GOOD points </span></td>
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text1")), vbCRLF, "<BR>") %>
            </td>
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text2")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr> 
            <td align="center"><span class="taskblue">The old constables and watchmen: 
              BAD points </span></td>
            <td align="center"> <br>
              <% = Replace(Server.HTMLEncode(Request.Form("text3")), vbCRLF, "<BR>") %>
            </td>
            <td align="center"> <br>
              <% = Replace(Server.HTMLEncode(Request.Form("text4")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr> 
            <td align="center"><span class="taskblue">The new police:GOOD points 
              </span></td>
            <td align="center"> <br>
              <% = Replace(Server.HTMLEncode(Request.Form("text5")), vbCRLF, "<BR>") %>
            </td>
            <td align="center"> <br>
              <% = Replace(Server.HTMLEncode(Request.Form("text6")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr>
            <td align="center"><span class="taskblue">The new police:BAD points 
              </span></td>
            <td align="center">
              <% = Replace(Server.HTMLEncode(Request.Form("text7")), vbCRLF, "<BR>") %>
            </td>
            <td align="center">
              <% = Replace(Server.HTMLEncode(Request.Form("text8")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr> 
            <td  colspan="3" align="center"> 
              <input type="image" border="0" name="Submit" src="../global/edit.gif" width="48" height="25" alt="Edit">
            </td>
          </tr>
          <tr> 
            <td  colspan="3" align="center"> 
              <p class="taskblue">You can print this page by clicking on the print 
                link below.</p>
              <p class="taskblue"> 
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
          <tr> 
            <td  colspan="3" align="right">      <SCRIPT LANGUAGE="JavaScript" type="text/javascript">
<!--
	document.write('<p align="right" class="cplink"><a href="JavaScript:ClosePopup(\'\')">Close Window</a></p>');
//-->
</script>
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
