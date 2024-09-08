<?php 

    namespace App\Models;
    use CodeIgniter\Model;

    class Artista extends Model
    {
        protected $table = 'artista';
        protected $primaryKey = 'artista_id';
        protected $allowedFields = [ 'artista_id','nombre', 'apellido', 'fecha_nacimiento', 'fecha_muerte','pais_id'];

    }
?>




