@extends('template.base')

@section('content')

<div class="container">
            <div class="row">
                <div class="col md-12 mt-5">
                <a href="{{url('admin/artikel')}}"><fa class="btn btn-primary">Kembali</a>
                    <div class="card mt-3">
                        <div class="card-header">
                        Detail Data Artikel
                        <a href="{{url('admin/artikel', $artikel->id)}}/edit" class="btn btn-dark btn-sm float-right"><i class="fa fa-edit"></i> Edit
                    </a>
                    </div>
                    <div class="card-body">
                        <h3>{{$artikel->judul}}</h3>
                        <p>
                            Penulis : {{$artikel->penulis}}
                        </p>
                        <p>
                            {!! nl2br($artikel->deskripsi) !!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection