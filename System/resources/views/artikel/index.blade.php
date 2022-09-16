@extends('template.base')

@section('content')

        <div class="container">
            <div class="row">
                <div class="col md-12 mt-5">
                    <div class="card">
                        <div class="card-header">
                            Filter
                        </div>
                        <div class="card-body">
                            <form action="{{url('admin/artikel/filter')}}" method="post">
                                @csrf 
                                <div class="form-group">
                                    <label for="" class="control-label">Judul</label>
                                    <input type="text" class="form-control" name="judul" value="{{$judul ?? ''}}">
                                </div>
                                <button class="btn btn-dark float-right"><i class="fa fa-search"></i>Filter</button>
                            </form>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                        Data Artikel
                        <a href="{{url('admin/artikel/create')}}" class="btn btn-dark float-right"><i class="fa fa-plus"></i> Tambah Data </a>
                    </div>
                    <div class="card-body">
                        <table class="table table-datatable">
                            <thead>
                                <th>No</th>
                                <th>Aksi</th>
                                <th>Judul</th>
                                <th>Penulis</th>
                                <th>Waktu</th>
                                <th>Deskripsi</th>
                            </thead>
                            <tbody>
                                @foreach($list_artikel as $artikel)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>
                                        <div class="btn-group">
                                        <a href="{{url('admin/artikel',$artikel->id)}}" class="btn btn-dark"><i class="fa fa-info"></i></a>
                                        <a href="{{url('admin/artikel',$artikel->id)}}/edit" class="btn btn-warning"><i class="fa fa-edit"></i></a>
                                        <a href="{{url('admin/artikel-delete',$artikel->id)}}" class="btn btn-danger" onclick="return confirm('Yakin Akan Menghapus Data Ini?')"><i class="fa fa-trash"></i></a>
                                        </div>
                                    </td>
                                    <td>{{$artikel->judul}}</td>
                                    <td>{{$artikel->penulis}}</td>
                                    <td>{{$artikel->created_at->diffForHumans()}}</td>
                                    <td>{{$artikel->deskripsi}}</td>
                                </tr>

                                @endforeach
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection