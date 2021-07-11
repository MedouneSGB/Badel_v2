<%-- 
    Document   : delete
    Created on : 8 janv. 2021, 01:23:42
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <%
        String formulaire_id = (String) request.getAttribute("formulaire_id");
        String idform = request.getParameter("formulaire_id");
        String table = request.getParameter("table");

        if (idform == null) {
            idform = formulaire_id;
        }
        String ix = request.getParameter("id");
        String idx = (String) request.getAttribute("id");
        if (idx == null) {
            idx = ix;
        }


    %>

    <form  action = "Delete" method = "POST" > 
        <input type="hidden" name="formulaire_id" value="<%=idform%>">
        <input type="hidden" name="id" value="<%=idx%>">
        <input type="hidden" name="table" value="<%=table%>">
        <input type="submit" value="Confirmer la suppression" />
        </form>
</html>
