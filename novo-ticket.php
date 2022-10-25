<h1>Novo Ticket</h1>
<form action="?page=salvar" method="POST">
	<input type="hidden" name="acao" value="cadastrar-ticket">
	<div class="mb-3">
		<label>Título</label>
		<input type="text" name="titulo_mensagem" class="form-control">
	</div>
	<div class="mb-3">
		<label>Mensagem</label>
		<textarea name="texto_mensagem" rows="5" class="form-control"></textarea>
	</div>
	<div class="mb-3">
		<button type="submit" class="btn btn-primary">Enviar</button>
	</div>
</form>