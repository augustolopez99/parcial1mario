<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Artista;


class ControladorArtista extends BaseController
{
    public function verArtista() {
        $artista_id = new Artista();
        $datosbd['artistabd'] = $artista_id->findAll();
        return view('Artistas', $datosbd);
    }
    //agregaar
   
    public function agregarArtista()
    {
        $artista = new Artista();
        $datos=
        [
            'artista_id'=>$this->request->getPost('txt_artista'),
            'nombre'=>$this->request->getPost('txt_nombre'),
            'apellido'=>$this->request->getPost('txt_apellido'),
            'fecha_nacimiento'=>$this->request->getPost('txt_fechana'),
            'fecha_muerte'=>$this->request->getPost('txt_fechamu'),
            'pais_id'=>$this->request->getPost('txt_pais'),
        ];

        print_r($datos);

        $artista->insert($datos);      
        return redirect()->route('ver_artista');
    }
    //eliminar  

    
    public function eliminarArtista($artista = null)
    {
        $artista_id = new Artista();
        $artista_id->delete($artista);

        $datosbd['artistabd'] = $artista_id->findAll();
        return view('Artistas', $datosbd);
    }
    //ver datos
    public function verDatosArtista($artista = null)
    {
        $artista_id = new Artista();
        $datosbd['artistabd'] = $artista_id->where('artista_id', $artista)->first();
        return view('frm_actualizar_artista', $datosbd);
    }
    //actualizar
    public function actualizarArtista()
    {
        $artista_id = new Artista();
        $artista = $this->request->getVar('txt_artista');
        $nombre = $this->request->getVar('txt_nombre');
        $apellido = $this->request->getVar('txt_apellido');
        $fecha_na = $this->request->getVar('txt_fechana');
        $fecha_mu = $this->request->getVar('txt_fechamu');
        $pais = $this->request->getVar('txt_pais');

        $datosbd = [
            'nombre' => $nombre,
            'apellido' => $apellido,
            'fecha_nacimiento' => $fecha_na,
            'fecha_muerte' => $fecha_mu,
            'pais_id' => $pais,
        ];
        $artista_id->update($artista, $datosbd);

        $datosbd['artistabd'] = $artista_id->findAll();
        return view('Artistas', $datosbd);
    }
}
