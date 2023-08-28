<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controlempresas.entidaddenegocio.Contacto"%>
<%@page import="controlempresas.accesoadatos.ContactoDAL"%>
<%@page import="java.util.ArrayList"%>

<% ArrayList<Contacto> contactos = ContactoDAL.obtenerTodos();
    int id = Integer.parseInt(request.getParameter("id"));
%>
<select id="slContacto" name="idContacto">
    <option <%=(id == 0) ? "selected" : ""%>  value="0">SELECCIONAR</option>
    <% for (Contacto contacto : contactos) {%>
        <option <%=(id == contacto.getId()) ? "selected" : "" %>  value="<%=contacto.getId()%>"><%= contacto.getNombre()%></option>
    <%}%>
</select>
<label for="idContacto">Contacto</label>