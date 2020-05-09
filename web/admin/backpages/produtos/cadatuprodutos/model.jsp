<%@ page import="crudadmin.produtos.cadatuprodutos.CadatuprodutosDAO" %>
<%@ page import="crudadmin.produtos.cadatuprodutos.Cadatuproduto" %>
<%@ page import="java.util.List" %>
<%@ page import="crudadmin.subcategorias.Subcategoria" %>
<%@ page import="crudadmin.categorias.Categoria" %>
<%@ page import="crudadmin.fabricante.Fabricante" %><%--
  Created by IntelliJ IDEA.
  User: Carlos
  Date: 09/05/2020
  Time: 00:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    if ("visualizar".equals(request.getParameter("acao"))) {

        CadatuprodutosDAO cadatuprodutosDAO = new CadatuprodutosDAO();

        List<Categoria> dadoscat = cadatuprodutosDAO.readcategoria();
        List<Subcategoria> dadossub = cadatuprodutosDAO.readsubcategoria();
        List<Fabricante> dadosfab = cadatuprodutosDAO.readfabricante();

        session.removeAttribute("dadoscat");
        session.removeAttribute("dadossub");
        session.removeAttribute("dadosfab");

        session.setAttribute("dadoscat", dadoscat);
        session.setAttribute("dadossub", dadossub);
        session.setAttribute("dadosfab", dadosfab);

        response.sendRedirect("../../../index.jsp?pagina=produtoscadatu");
    }

%>