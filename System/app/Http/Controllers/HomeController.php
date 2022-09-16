<?php

namespace App\Http\Controllers;

class HomeController extends Controller{

    function showIndex(){
        return view('frontview.index');
    }

    function showBlog(){
        return view('frontview.blog');
    }

    function showBase(){
        return view('template.base');
    }
    function showArtikel(){
        return view('admin.artikel');
    }
    function showKomentar(){
        return view('admin/komentar');
    }

    function showBeranda(){
        return view('admin/beranda');
    }

    function showPromo(){
        return view('admin/promo');
    }
}