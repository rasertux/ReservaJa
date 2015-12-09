<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Quarto</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="author"
	content="Rafael Sergio" />
<link rel='stylesheet' href="<c:url value='/themes/css/bootstrap.min.css' />">
<script src="<c:url value='/themes/js/jquery-1.11.3.min.js' />"></script>
<script src='<c:url value='/themes/js/bootstrap.min.js' />'></script>
</head>
<body class='container-fluid'>
	<div class='row'>
		<div class='col-sm-4'></div>
		<div class='col-sm-4'>
			<div class='panel panel-default' style='margin-top: 50px;'>
				<div class='panel-heading'>
					<h1 class='text-center'>Alterar Quarto</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form class='form-group' action="/reservaja/alteraquarto"
						method="post">
						<label>Numero do quarto: </label> <input class='form-control'
							type="text" size="30" name="numero" readonly
							value="${quarto.getNumero()}" required="required"><br>
						<label>Nome do Hotel: </label> <input class='form-control'
							type="text" size="20" name="nomehotel"
							value="${quarto.getNomehotel()}" required="required"><br>
						<label>Tipo: </label> <input class='form-control' type="text"
							size="20" name="tipo" value="${quarto.getTipo()}"
							required="required"><br> <label>Andar: </label> <input
							class='form-control' type="text" size="30" name="andar"
							value="${quarto.getAndar()}" required="required"><br>
						<label>Camas: </label> <input class='form-control' type="text"
							size="30" name="camas" value="${quarto.getCamas()}"
							required="required"><br> 
							<div class='row-fluid'>	
								<div class="col-sm-4">
									<label>Televisão: </label><br> 
									<c:choose>
										<c:when test="${quarto.isTelevisao()}">
											<input type="radio" name="televisao" value="True" checked >Sim<br>
											<input type="radio" name="televisao" value="False">Não
										</c:when>
										<c:otherwise>
											<input type="radio" name="televisao" value="True" >Sim<br>
											<input type="radio" name="televisao" value="False" checked >Não
										</c:otherwise>
									</c:choose>
								</div>
							<div class="col-sm-4">
						    	<label>Frigobar: </label><br> 
						    	<c:choose>
						    		<c:when test="${quarto.isFrigobar()}">
						    			<input type="radio" name="frigobar" value="True" checked >Sim<br>
						    			<input type="radio" name="frigobar" value="False">Não
						    		</c:when>
						    		<c:otherwise>
						    			<input type="radio" name="frigobar" value="True" >Sim<br>
						    			<input type="radio" name="frigobar" value="False" checked >Não
						    		</c:otherwise>
						    	</c:choose>   	
						    </div>
						    <div class="col-sm-4">
						    	<label>ArCondicionado: </label><br>
						    	<c:choose>
						    		<c:when test="${quarto.isArcondicionado()}">
						    			<input type="radio" name="arcondicionado" value="True" checked >Sim<br>
						    			<input type="radio" name="arcondicionado" value="False">Não
						    		</c:when>
						    		<c:otherwise>
						    			<input type="radio" name="arcondicionado" value="True">Sim<br>
						    			<input type="radio" name="arcondicionado" value="False" checked >Não
						    		</c:otherwise>
						    	</c:choose>	
						    </div>
						</div>
							<br>					  
							<input class='btn btn-default' type="submit" value="Alterar">
						<hr>
						<a href='/reservaja/listarquartos'>Listar Quartos</a>
					</form>
				</div>
				<div class='panel-footer'>
					<small>&copy <a target='_blank' href='https://github.com/rasertux'>Rafael Sérgio</a></small>
				</div>
			</div>
		</div>
		<div class='col-sm-4'></div>
	</div>
</body>
</html>