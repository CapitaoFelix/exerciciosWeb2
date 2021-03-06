<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="header.jsp" %>  
	<title>Editar cliente</title>
	</head>
<body>
	<c:if test="${loginBean.nome == null }">	
		<jsp:forward page="index.jsp"> 
			<jsp:param name="msg" value="Usuario deve se autenticar para acessar o sistema" /> 
		</jsp:forward> 
	</c:if>
	<c:if test="${loginBean.nome != null }">
	<c:set var="cliente" scope="request" value="${cliente}"/>
		<div class="flex-container">
			<div class="form-cliente">
				<form class="purple-box" action="ClientesServlet?action=update" method="post" class="form-group">
					<input type="hidden" name="id" value="${cliente.id}"/>
					<h2 class="form-title">Alterar cliente</h2>
					<div class="row">
						<div class="col-md-6">
							CPF: <input  type="text" name="cpf" maxlength="11" class="form-control"  value="${cliente.cpf}" required/>
						</div>
						<div class="col-md-6">
							Nome: <input type="text" name="nome" class="form-control" value="${cliente.nome}" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							Email <input type="email" name="email" class="form-control"  value="${cliente.email}" required/>
						</div>
						<div class="col-md-6">
							Data <input type="text" name="data" class="form-control" value="${cliente.data}" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							Rua <input type="text" name="rua" class="form-control" value="${cliente.rua}" required/>
						</div>
						<div class="col-md-2">
							Numero <input type="number" name="nr" class="form-control" value="${cliente.nr}" required/>
						</div>
						<div class="col-md-4">
							CEP <input type="text" name="cep" maxlength="8" class="form-control" value="${cliente.cep}" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">						
							Cidade <input type="text" name="cidade" class="form-control" value="${cliente.cidade}" required/>
						</div>
						<div class="col-md-6">
							UF <input type="text" name="uf" maxlength="2" class="form-control" value="${cliente.uf}" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<a href='${pageContext.request.contextPath}/ClientesServlet' class="btn btn-warning btn-new" type="button">Cancelar</a>
						</div>
						<div class="col-md-6">
							<button class="btn btn-success btn-new" type="submit">Salvar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</c:if>
</body>
</html>