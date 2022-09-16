<?php

namespace App\Http\Controllers;

use App\Models\Komentar;

class KomentarAdminController extends Controller{

    function index(){
        $data['list_komentar'] = Komentar::all();
        return view('komentar.index', $data);
    }

    function store(){
        $komen = new Komentar();
        $komen->isi = request('isi');
        $komen->nama = request('nama');
        $komen->save();
        return redirect('admin/komentar');
    }

    function show(Komentar $komentar){
        $data['komentar'] = $komentar;
        return view('komentar.show', $data);
    }

}