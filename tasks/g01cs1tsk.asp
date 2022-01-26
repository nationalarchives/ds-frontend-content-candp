<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script language="JavaScript" type="text/javascript">
<!--
	function ClosePopup(s_redirect) {
		var h_opener = window.opener;

		if(h_opener && s_redirect) {
			h_opener.window.location = s_redirect;
		}
		window.close();
	}
//-->
</script>

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
            <td colspan="2" > 
              <p class="tasktitlegreen">Case Study 1- Was violent crime in the 
                Middle Ages similar to, or different from, today?</p>
            </td>
          </tr>
          <tr valign="top"> 
            <td colspan="2" >&nbsp;</td>
          </tr>
          <tr align="left" valign="top"> 
            <td colspan="2" > 
              <p class="taskgreen">Imagine a time-helicopter is travelling over 
                England in the 1240s. Two historians are on board: Miss Laura 
                Biding and Ms Vi O'Lent. The two historians cannot agree on what 
                medieval England was like. Miss Biding thinks they did their best 
                to live by the law and to make the legal system work; Ms. O'Lent 
                thinks people were uneducated and violent. Criminals got away 
                with murder (literally) as well as other crimes. The courts were 
                feeble and ineffective.</p>
              <p class="taskgreen">There is one more seat in the helicopter: yours. 
                Help the two researchers by supplying them with statements which 
                support one or both of them in their point of view. Use what you 
                have learnt from the Case-Studies and anything else you have found 
                out from this section of the Gallery. Add the relevant information 
                to each box below.</p>
              <span class="taskgreen">(Some key-words for adding to one side or 
              other: <br>
              O'Lent: murder, domestic violence, rape, arson, outlaws.<br>
              Biding: jury, Eyre court, statistics, judge, outlaw)</span></td>
          </tr>
          <tr> 
            <td align="center" colspan="2" ><img src="../crime/g01/jpgs/g01tsk1.jpg" width="321" height="350" alt=""></td>
          </tr>
          <%
	If Not Request.Form("Submitted") = "True" Then
%>
          <input type="hidden" name="Submitted" value="True">
          <tr> 
            <td align="center"> 
              <textarea name="text1" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text1")) %></textarea>
            </td>
            <td align="center"> 
              <textarea name="text2" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text2")) %></textarea>
            </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center"> 
              <input type="image" border="0" name="submit2" src="../global/submit.gif" width="58" height="25" alt="Submit">
            </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center">&nbsp;</td>
          </tr>
          <%
	Else
%>
          <input type="hidden" name="text1" value="<% = Server.HTMLEncode(Request.Form("text1")) %>">
          <input type="hidden" name="text2" value="<% = Server.HTMLEncode(Request.Form("text2")) %>">
          <input type="hidden" name="text3" value="<% = Server.HTMLEncode(Request.Form("text3")) %>">
          <input type="hidden" name="text4" value="<% = Server.HTMLEncode(Request.Form("text4")) %>">
          <input type="hidden" name="text5" value="<% = Server.HTMLEncode(Request.Form("text5")) %>">
          <tr> 
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text1")), vbCRLF, "<br>") %>
            </td>
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text2")), vbCRLF, "<br>") %>
            </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center"> 
              <input type="image" border="0" name="Submit" src="../global/edit.gif" width="48" height="25" alt="Edit">
            </td>
          </tr>
          <tr> 
            <td  colspan="2" align="center"> 
              <p class="taskgreen">You can print this page by clicking on the 
                print link below.</p>
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
            <td  colspan="2" align="right">
<script language="JavaScript" type="text/javascript">
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
