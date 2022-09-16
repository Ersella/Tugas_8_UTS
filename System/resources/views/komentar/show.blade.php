@extends('template.base')

@section('content')
<div class="container">
    <div class="row">
        <div class="col md-12 mt-5">
            <div class="card">
                <div class="card-header">
                    Balas Komentar
                </div>
                <div class="card-body">
                    <form action="{{url('admin/komentar')}}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="" class="control-label">Nama</label>
                            <input type="text" class="form-control" name="nama">
                        </div>
                        <div class="from-group">
                            <label for="" class="control-label">
                                Balasan :
                            </label>
                            <br>
                            <textarea name="isi" id="" cols="30" rows="10" class="form-control">
                            </textarea>
                        </div>
                        <br>
                        <button style="float: right" class="btn btn-dark"><i class="fa fa-save"></i>
                    Post Komentar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection