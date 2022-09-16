@extends('template.base')

@section('content')
<div class="container">
    <div class="row">
        <div class="col md-12 mt-5">
            <div class="card">
                <div class="card-header">
                    Komentar
                </div>
                <div class="card-body">
                    <table class="table table-datatable">
                        <thead>
                            <th>No</th>
                            <th>Aksi</th>
                            <th>Nama</th>
                            <th>Waktu</th>
                            <th>Isi</th>
                        </thead>
                        <tbody>
                            @foreach ($list_komentar as $komentar)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="{{url('admin/komentar',$komentar->id)}}" class="btn btn-dark"><i class="fa fa-comment"></i></a>
                                        <a href="{{url('admin/komentar-delete',$komentar->id)}}" class="btn btn-danger" onclick="return confirm('Yakin Akan Menghapus Data Ini?')"><i class="fa fa-trash"></i></a>
                                        </a>
                                    </div>
                                </td>
                                <td>{{$komentar->nama}}</td>
                                <td>{{$komentar->created_at->diffForHumans()}}</td>
                                <td>{{$komentar->isi}}</td>
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