<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use App\Models\Komentar;

class ClientController extends Controller
{
    // function filter()
    // {
    //     $nama = request('judul');
    //     $data['judul'] = $judul;
    //     $data['list_artikel'] = Artikel::where('judul', 'like', "%$judul%")->get();

    //     return view('frontview.index', $data);
    // }

    function showIndex()
    {
        $data['list_artikel'] = Artikel::all();
        return view('frontview.index', $data);
    }

    function showBlog(Artikel $artikel)
    {
        $data['list_artikel'] = Artikel::all();
        $data['list_komentar'] = Komentar::all();
        return view('frontview.blog', $data);
    }

}
