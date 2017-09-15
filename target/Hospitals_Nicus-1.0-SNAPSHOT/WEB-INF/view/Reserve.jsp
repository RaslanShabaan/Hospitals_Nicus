<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table border=1 style="width: 80% ">

    <tr style="padding: 20px;color: #d43f3a;font-weight: bold;font-style: italic;font-size:18px">
        <td>Nicu Id </td>
        <td>Nicu Cost </td>
        <td>Hosp Name </td>
        <td>Nicu Gov </td>
        <td>Hosp Address </td>
        <td>Nicu  Email</td>

    </tr>

    <%
        HttpSession d=request.getSession();
        ArrayList v= (ArrayList) d.getAttribute("Search");
        int count=v.size()/6;
        int o=0;
        for (int t=0;t<count;t++)
        {

    %>

    <tr  style="padding: 20px;color: #000;font-weight: bold;font-style: italic;font-size:15px">
        <td>   <%= v.get(o)%> </td>
        <td>   <%= v.get(o+4)%> </td>
        <td>   <%= v.get(o+3)%></td>
        <td>   <%= v.get(o+1)%> </td>
        <td>   <%= v.get(o+2)%></td>
        <td>   <%= v.get(o+5)%> </td>

    </tr>

    <%
            o=o+6;
        }

    %>


</table>
<h2 style="color:#d43f3a;font-weight: bold;font-style: italic"> Nicus Count Is : <%= count%></h2>


<form onsubmit="return Security()" name="S_Form" method="post" action="/UserReserve" style="border: 2px dashed #c7254e;width: 40%;margin-left: 30%;padding:2%">
    <br>
    <label style="font-size: 15px;font-weight: bold;font-style: italic"> Please Nicu Id :</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input name="NID"/>

    <br> <br>

    <label style="font-size: 15px;font-weight: bold;font-style: italic"> Please User Name :</label>
    &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp; <input name="UNAME"/>

    <br><br>

    <label style="font-size: 15px;font-weight: bold;font-style: italic"> Please User Id :</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="UID"/>

    <br><br>

    <label style="font-size: 15px;font-weight: bold;font-style: italic"> Please User Phone :</label>
    &nbsp;&nbsp;&nbsp;  &nbsp;    <input name="UPHONE"/>

    <br><br>

    <button style="height:5%;background-color: #c7254e;color: #fff;font-size: 15px;font-style: italic;font-weight: bold;margin-left: 30%;width: 40%"> Reserve :) </button>

    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>

</form>

<script>
function Security(){

var text=/^[A-Za-z0-9,@.]+$/;
// UserName Validation //
if (document.S_Form.NID.value.length <1) {
alert("Nicu  Id Is Requred.");
return false;
}
if(document.S_Form.NID.value.length >20) {
alert("Nicu Id Is InValid Too Long .");
return false;
}

if( document.S_Form.NID.value.match(text)) {

}else{
alert("Not A Text Nicu Id");
return false;
}

if (document.S_Form.UNAME.value.length <1) {
alert("User Name Is Requred.");
return false;
}
if(document.S_Form.UNAME.value.length >20) {
alert("User Name Is InValid Too Long .");
return false;
}

if( document.S_Form.UNAME.value.match(text)) {

}else{
alert("Not A Text  User Name ");
return false;
}

// Phone  Validation //
if (document.S_Form.UPHONE.value.length <1 ) {
alert("User Phone Is Requred .");
return false;
}if (document.S_Form.UPHONE.value.length != 11 ) {
alert("Not A Phone Number .");
return false;
}if (isNaN(document.S_Form.UPHONE.value) ) {
alert("Not A Phone Number .");
return false;
}

    if (document.S_Form.UID.value.length <1 ) {
        alert("User  Id Is Requred .");
        return false;
    }if (document.S_Form.UID.value.length != 14 ) {
        alert("Not A ID Number .");
        return false;
    }if (isNaN(document.S_Form.UID.value) ) {
        alert("Not A ID Number .");
        return false;
    }

    else {
return true;

}

}

</script>

</body>
</html>
