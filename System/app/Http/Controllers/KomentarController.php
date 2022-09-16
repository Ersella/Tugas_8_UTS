<?php

namespace App\Http\Controllers;

use App\Models\Komentar;

class KomentarController extends Controller
{
    function store(){
        $komen = new Komentar();
        $komen->isi = request('isi');
        $komen->nama = request('nama');
        $komen->save();

        return redirect()->back();

    }
    function destroy(Komentar $komentar){ 
        $komentar->delete();
        return redirect('admin/komentar')->with('danger', 'Data Berhasil Dihapus');

    }

}