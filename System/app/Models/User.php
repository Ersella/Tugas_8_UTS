<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\UserDetail;
use App\Models\Artikel;

class User extends Authenticatable
{
    protected $table = 'user';
    use HasApiTokens, HasFactory, Notifiable;

    function detail(){
        return $this->hasOne(UserDetail::class, 'id_user');
    }

    function artikel(){
        return $this->hasMany(Artikel::class, 'id_user');
    }
}
