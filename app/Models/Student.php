<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $table ='students';  // kết nói với bảng nào mặc định sẽ tự kết nối với bảng theo tên model (viết lower) +'s'

}
