<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Artistas</title>
</head>
<body class="fondo">
<h1>Artistas </h1>
<br>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Agregar Artistas
        </button>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Artista Nuevo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="<?=base_url('agregar_artista')?>" method="post">
                    <div class="mb-3">
                        <label for="txt_artista" class="form-label">Artista_id</label>
                        <input type="text" class="form-control"  name="txt_artista" placeholder="Nuevo artista">
                    </div>
                    <div class="mb-3">
                        <label for="txt_nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control"  name="txt_nombre" placeholder="Nuevo Nombre">
                    </div>
                    <div class="mb-3">
                        <label for="txt_apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control"  name="txt_apellido" placeholder="Nuevo Apellido">
                    </div>
                    <div class="mb-3">
                        <label for="txt_fechana" class="form-label">Fecha nacimiento</label>
                        <input type="date" class="form-control" name="txt_fechana" placeholder="Nuevo fecha">
                    </div>
                    <div class="mb-3">
                        <label for="txt_fechamu" class="form-label">Fecha muerte</label>
                        <input type="date" class="form-control"  name="txt_fechamu" placeholder="Nuevo fecha">
                    </div>
                    <div class="mb-3">
                        <label for="txt_pais" class="form-label">Pais </label>
                        <input type="text" class="form-control"  name="txt_pais" placeholder="Nuevo pais">
                    </div>
                    <input type="submit" class="btn btn-primary" id="btn_guardar" name="btn_guardar" value="Agregar Nuevo ">
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
            </div>
            </div>
        </div>
        </div>

        <br><br>
   <table class="table table-striped table-hover">
    <thead>
      <tr>
        <th>artista_id</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>fecha_nacimiento</th>
        <th>fecha_muerte</th>
        <th>pais_id</th>
        <th>Accion</th>
      </tr>
    </thead>
    <tbody>
        <?php
          foreach($artistabd as $registros):
        ?>
       <tr>
        <td><?php echo $registros['artista_id'] ?> </td>
        <td><?php echo $registros['nombre'] ?> </td>
        <td><?php echo $registros['apellido'] ?> </td>
        <td><?php echo $registros['fecha_nacimiento'] ?> </td>
        <td><?php echo $registros['fecha_muerte'] ?> </td>
        <td><?php echo $registros['pais_id'] ?> </td>
        <td>
                        <a href="<?= base_url('datos_artista/' .$registros['artista_id']) ?>">
                            Actualizar
                        </a>/
                        <a href="<?= base_url('eliminar_artista/' . $registros['artista_id']) ?>">
                            Eliminar
                        </a>
                    </td>

       </tr> 
       <?php
          endforeach;
        ?>
    </tbody>
   </table>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>