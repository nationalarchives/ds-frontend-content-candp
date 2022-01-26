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
            <td colspan="2" > 
              <p class="tasktitlered">Case-Study 2: Were the new Victorian prisons 
                better than the old unreformed ones?</p>
            </td>
          </tr>
          <tr valign="top"> 
            <td colspan="2" >&nbsp;</td>
          </tr>
          <tr valign="top"> 
            <td colspan="2" >&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="2" align="center" ><img src="../punishment/g09/jpgs/g9tsk2.jpg" width="400" height="270" alt=""></td>
          </tr>
          <tr> 
            <td align="center" class="taskred" >19th century prisoner</td>
            <td align="center" class="taskred" >18th century prisoner</td>
          </tr>
          <tr> 
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="2" height="116"> 
              <p class="taskred"> &quot;What I like about my prison is&#133;.&quot; 
                &amp; &quot;What I hate about my prison is &#133;..&quot;<br>
                <br>
                Use the Sources in this Case-Study to complete the speech-bubbles. 
                (You could also use Case-Study 3). <br>
                <br>
                Add you own comments in answer to these questions: <br>
                1. Which was better for the prisoners: unreformed or reformed 
                prison?<br>
                2. Which was more likely to reform the prisoner?<br>
                3. Which was better for society? <br>
                Explain your choices in each case.</p>
            </td>
          </tr>
          <tr> 
            <td align="center" class="taskred">Like</td>
            <td align="center" class="taskred">Like</td>
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
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
          </tr>
          <tr> 
            <td align="center" class="taskred">Dislike</td>
            <td align="center" class="taskred">Dislike</td>
          </tr>
          <tr> 
            <td align="center"> <br>
              <textarea name="text3" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text3")) %></textarea>
            </td>
            <td align="center"> <br>
              <textarea name="text4" cols="20" rows="2"><% = Server.HTMLEncode(Request.Form("text4")) %></textarea>
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
          <tr> 
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text1")), vbCRLF, "<BR>") %>
            </td>
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text2")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr> 
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text3")), vbCRLF, "<BR>") %>
            </td>
            <td align="center"> 
              <% = Replace(Server.HTMLEncode(Request.Form("text4")), vbCRLF, "<BR>") %>
            </td>
          </tr>
          <tr> 
            <td align="center">&nbsp; </td>
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
            <td  colspan="2" align="right">      <SCRIPT LANGUAGE="JavaScript" type="text/javascript">
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
