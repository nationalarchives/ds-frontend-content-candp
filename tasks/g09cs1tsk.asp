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
        <table border="0" cellspacing="3" cellpadding="0" width="70%">
          <tr valign="top"> 
            <td colspan="3" > 
              <p class="tasktitlered">Case-Study 1- What were the pros and cons 
                of transportation as a form of punishment?</p>
            </td>
          </tr>
          <tr valign="top"> 
            <td colspan="3" >&nbsp;</td>
          </tr>
          <tr> 
            <td valign="top" align="left" class="taskred" ><img src="../punishment/g09/jpgs/g09tsk1a.jpg" width="67" height="82"></td>
            <td valign="top" align="left" class="taskred" colspan="2" >1. You 
              are George Bonfield, the missing son from Source 5. Write the letter 
              home which poor Anne Bonfield is so anxious to hear from.</td>
          </tr>
          <tr> 
            <td valign="top" align="left" class="taskred" colspan="2" >&nbsp;</td>
            <td align="center" width="51%" >&nbsp;</td>
          </tr>
          <tr> 
            <td valign="top" align="left" class="taskred" colspan="2" >2. Design 
              a &quot;Snakes and Ladders&quot; board-game for transportation. 
              Start by listing the &quot;snakes&quot; - things that could go wrong 
              for you as a convict sentenced to transportation. Then list the 
              &quot;ladders&quot;, the things that could go right. The sources 
              give plenty of examples of each.<br>
              Then design and decorate the Board. What will you put at the end 
              of the game - the destination for the winner?</td>
            <td align="center" width="51%" ><img src="../punishment/g09/jpgs/g9tsk1.jpg" width="250" height="236"></td>
          </tr>
          <tr> 
            <td align="center" class="taskred" colspan="2" >Snakes</td>
            <td align="center" class="taskred" width="51%" >Ladders</td>
          </tr>
          <%
	If Not Request.Form("Submitted") = "True" Then
%>
          <input type="hidden" name="Submitted" value="True">
          <tr> 
            <td align="center" colspan="2"> 
              <textarea name="text1" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text1")) %></textarea>
            </td>
            <td align="center" width="51%"> 
              <textarea name="text2" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text2")) %></textarea>
            </td>
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
          <tr> 
            <td align="center" colspan="2"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text1")), vbCRLF, "<BR>") %>
            </td>
            <td align="center" width="51%"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text2")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr> 
            <td align="center" colspan="2">&nbsp; </td>
          </tr>
          <tr> 
            <td  colspan="3" align="center"> 
              <input type="image" border="0" name="Submit" src="../global/edit.gif" width="48" height="25" alt="Edit">
            </td>
          </tr>
          <tr> 
            <td  colspan="3" align="center"> 
              <p class="taskred">You can print this page by clicking on the print 
                link below.</p>
              <p> 
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
