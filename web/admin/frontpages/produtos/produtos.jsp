<%@ page contentType="text/html; charset=UTF-8" %>
<div class="container pagina-inicio" align="center">
    <h2>Área administrativa - Produtos</h2>
    <hr />
    <div class="input-group col-8 pesquisar">
        <select class="form-control col-3" id="searching-option">
            <option>Categoria</option>
            <option>Ativo (S)</option>
            <option>Ativo (N)</option>
        </select>
        <input type="text" class="form-control" placeholder="Pesquisar">
        <span class="input-group-btn">
        <a class="btn btn-default" type="button"><img src="img/searching.png" width="21px"></a>
      </span>
        <button class="btn btn-cadastrar" onclick="window.location.href = 'index.jsp?pagina=produtoscadatu'" >Cadastrar</button>
    </div>

    <div class="tabela col-8">

        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Preço</th>
                <th scope="col">Ação</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>
                    <button class="acao btn"><img src="img/editar.png" width="15px" height="15px"></button>
                    <button class="acao btn"><img src="img/apagar.png" width="15px" height="15px"></button>
                </td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>
                    <button class="acao btn"><img src="img/editar.png" width="15px" height="15px"></button>
                    <button class="acao btn"><img src="img/apagar.png" width="15px" height="15px"></button>
                </td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>
                    <button class="acao btn"><img src="img/editar.png" width="15px" height="15px"></button>
                    <button class="acao btn"><img src="img/apagar.png" width="15px" height="15px"></button>
                </td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>
                    <button class="acao btn"><img src="img/editar.png" width="15px" height="15px"></button>
                    <button class="acao btn"><img src="img/apagar.png" width="15px" height="15px"></button>
                </td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>
                    <button class="acao btn"><img src="img/editar.png" width="15px" height="15px"></button>
                    <button class="acao btn"><img src="img/apagar.png" width="15px" height="15px"></button>
                </td>
            </tr>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">Anterior</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Próximo</a>
            </li>
        </ul>
    </div>
</div>
</div>