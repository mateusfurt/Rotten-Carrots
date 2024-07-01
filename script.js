$(document).ready(function(){
    $('#addTaskForm').on('submit', function(e){
        e.preventDefault();

        $.ajax({
            type: 'POST',
            url: 'adicionar_tarefa.php',
            data: $(this).serialize(),
            success: function(response){
                alert(response);
                listarTarefas();
            }
        });
    });

    listarTarefas();
});

function listarTarefas() {
    $.ajax({
        url: 'listar_tarefas.php',
        method: 'GET',
        success: function(data) {
            $('#taskList').html(data);
        }
    });
}
function editarTarefa(id) {
    $.ajax({
        url: 'get_tarefa.php',
        method: 'GET',
        data: { id: id },
        success: function(response) {
            const tarefa = JSON.parse(response);
            $('#edit_id').val(tarefa.id);
            $('#edit_titulo').val(tarefa.titulo);
            $('#edit_descricao').val(tarefa.descricao);
            $('#edit_status').val(tarefa.status);
            $('#editTaskModal').show();
        }
    });
}

$('#editTaskForm').on('submit', function(e){
    e.preventDefault();

    $.ajax({
        type: 'POST',
        url: 'editar_tarefa.php',
        data: $(this).serialize(),
        success: function(response){
            alert(response);
            $('#editTaskModal').hide();
            listarTarefas();
        }
    });
});
function deletarTarefa(id) {
    if (confirm('Tem certeza que deseja deletar esta tarefa?')) {
        $.ajax({
            type: 'POST',
            url: 'deletar_tarefa.php',
            data: { id: id },
            success: function(response) {
                alert(response);
                listarTarefas();
            }
        });
    }
}

