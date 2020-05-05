<%@ page import="crudadmin.produtos.Produto" %>
<%@ page import="crudadmin.produtos.ProdutosDAO" %><%--
  Created by IntelliJ IDEA.
  User: Carlos
  Date: 28/04/2020
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //declaro as variaveis a serem recebidas pelas acoes CRUD
    String acao, idproduto, idcategoria, idsubcategoria, idfabricante,
            produtonome, precoalto, preco, descricao, detalhes, ativoproduto,
            imagem, destaque;
    acao = request.getParameter("acao");

    if (acao.equals("cadastrar")) {

        idcategoria = request.getParameter("id-categoria");
        idsubcategoria = request.getParameter("id-subcategoria");
        idfabricante = request.getParameter("id-fabricante");
        produtonome = request.getParameter("produto-nome");
        precoalto = request.getParameter("precoalto");
        preco = request.getParameter("preco");
        descricao = request.getParameter("descricao");
        detalhes = request.getParameter("detalhes");
        ativoproduto = request.getParameter("ativo-produto");
        imagem = request.getParameter("imagem");
        destaque = request.getParameter("destaque");

        Produto produto = new Produto(Integer.parseInt(idcategoria),
                Integer.parseInt(idsubcategoria), Integer.parseInt(idfabricante),
                produtonome, Float.parseFloat(precoalto), Float.parseFloat(preco),
                descricao, detalhes, ativoproduto, imagem, destaque);
        ProdutosDAO pddao = new ProdutosDAO();
        Boolean cadastro = pddao.create(produto);
        response.sendRedirect("../../index.jsp?pagina=produtos&cadastrou=" + cadastro);

    }else if (acao.equals("apagar")){

        ProdutosDAO produtosdao = new ProdutosDAO();
        idproduto = request.getParameter("id-produto");
        response.sendRedirect("../../index.jsp?pagina=produtos&apagou="
                +produtosdao.delete(Integer.parseInt(idproduto)));

    }else if(acao.equals("atualizar")){

        idproduto = request.getParameter("id-produto");
        idcategoria = request.getParameter("id-categoria");
        idsubcategoria = request.getParameter("id-subcategoria");
        idfabricante = request.getParameter("id-fabricante");
        produtonome = request.getParameter("produto-nome");
        precoalto = request.getParameter("precoalto");
        preco = request.getParameter("preco");
        descricao = request.getParameter("descricao");
        detalhes = request.getParameter("detalhes");
        ativoproduto = request.getParameter("ativo-produto");
        imagem = request.getParameter("imagem");
        destaque = request.getParameter("destaque");

        Produto produto = new Produto(Integer.parseInt(idproduto),
                Integer.parseInt(idcategoria), Integer.parseInt(idsubcategoria),
                Integer.parseInt(idfabricante), produtonome,
                Float.parseFloat(precoalto), Float.parseFloat(preco),
                descricao, detalhes, ativoproduto, imagem, destaque);

        ProdutosDAO pddao = new ProdutosDAO();
        Boolean update = pddao.update(produto);
        response.sendRedirect("../../index.jsp?pagina=produtos&atualizou=" + update);

    }else if(acao.equals("visualizar")){

        response.sendRedirect("../../index.jsp?pagina=produtos");

    }
%>