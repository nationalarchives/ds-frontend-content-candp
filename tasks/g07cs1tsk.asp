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
        <table border="0" cellspacing="3" cellpadding="0" width="90%">
          <tr valign="top"> 
            <td colspan="3" > 
              <p class="tasktitlegreen">Case Study 1- How had Changes In Britain 
                Led to New Crimes?</p>
            </td>
          </tr>
          <tr valign="top"> 
            <td colspan="3" >&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="3" align="center" ><img src="../crime/g07/jpgs/g7tsk1.jpg" width="350" height="256"></td>
          </tr>
          <tr> 
            <td colspan="3" align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="3"> 
              <p class="taskgreen">These Sources give details of some 12 offences:<br>
                <br>
                1. Sarah and Caroline, who robbed Mr. Free (Source 1)<br>
                2. Two lads who burgled Mr Powell (Source 1)<br>
                3. A short man and two others, one dressed as a sailor, who burgled 
                Mrs. Hardcastle (Source 1)<br>
                4. John Jannary, who burgled Reynolds warehouse (Source 1)<br>
                5. Two men who robbed Walters, Voss and Walters Bank (Source 2)<br>
                6. Henry Mason, charged with stealing 5lbs of tea (Source 3)<br>
                7. George Nightingale (Source 4)<br>
                8. John Spittal (Source 4)<br>
                9. Those who pilfered bales of wool from canal barges (Source 
                5)<br>
                10. Those who stole a crate of lace from Wapping railway station 
                (Source 6)<br>
                11. Joseph Openshaw and George Arnold (Source 7)<br>
                12. George Henry Gold (Source 8)</p>
              <p><span class="taskgreen">(a) Divide these cases among your class 
                or group. For each, read the information carefully. Note what 
                the offence was.<br>
                (b) What punishment would you give, in each case?<br>
                (c) Explain the reasons behind your sentence.<br>
                (d) Where the punishment is known (cases 7, 8, 11 and 12), compare 
                your verdict with the real ones. <br>
                (e) Research Strand 3 to find out reasons for any major differences.</span><br>
              </p>
            </td>
          </tr>
          <tr>
            <td align="center" class="taskgreen" width="313">&nbsp;</td>
            <td align="center" class="taskgreen" width="132">&nbsp;</td>
            <td align="center" class="taskgreen" width="277">&nbsp;</td>
          </tr>
          <tr> 
            <td align="center" class="tasktitlegreen" width="313">Crime</td>
            <td align="center" class="tasktitlegreen" width="132">My Punishment</td>
            <td align="center" class="tasktitlegreen" width="277">Why?</td>
          </tr>
          <%
	If Not Request.Form("Submitted") = "True" Then
%>
          <input type="hidden" name="Submitted" value="True">
          <tr> 
            <td align="center" width="313" > 
              <textarea name="text1" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text1")) %></textarea>
            </td>
            <td align="center" width="132"> 
              <textarea name="text2" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text2")) %></textarea>
            </td>
            <td align="center" width="277" > 
              <textarea name="text3" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text3")) %></textarea>
            </td>
          </tr>
          <tr> 
            <td align="center" width="313">&nbsp;</td>
            <td align="center" width="132">&nbsp;</td>
            <td align="center" width="277">&nbsp;</td>
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
          <tr> 
            <td align="center" width="313" > 
              <% = Replace(Server.HTMLEncode(Request.Form("text1")), vbCRLF, "<BR>") %>
            </td>
            <td align="center" width="132" > 
              <% = Replace(Server.HTMLEncode(Request.Form("text2")), vbCRLF, "<BR>") %>
            </td>
            <td align="center" width="277"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text3")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr> 
            <td align="center" width="313">&nbsp;</td>
            <td align="center" width="132">&nbsp;</td>
            <td align="center" width="277">&nbsp;</td>
          </tr>
          <tr> 
            <td  colspan="3" align="center"> 
              <input type="image" border="0" name="Submit" src="../global/edit.gif" width="48" height="25" alt="Edit">
            </td>
          </tr>
          <tr> 
            <td  colspan="3" align="center"> 
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
