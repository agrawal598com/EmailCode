<%-- 
    Document   : index
    Created on : 25 Jan, 2018, 2:11:50 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="register_task.jsp" method="post">
            <table>
                <tr>
                    <td>Email :</td>
                    <td>
                        <input type="email" name="txtemail" />
                    </td>
                </tr>
                <tr>
                    <td>Password :</td>
                    <td>
                        <input type="password" name="txtpass" />
                    </td>
                </tr>
                <tr>
                    <td>Mobile :</td>
                    <td>
                        <input type="text" name="txtmobile" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Register" />
                    </td>
                </tr>
            </table>    
        </form>
        <!--Start of Zendesk Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="https://v2.zopim.com/?5R8i0jnMNI7TV2vWQJ2xHvUrw8M2PFNH";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zendesk Chat Script-->
    </body>
</html>
