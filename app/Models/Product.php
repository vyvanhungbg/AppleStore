<?php

namespace App\Models;

use DateTime;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use League\CommonMark\Extension\Attributes\Node\Attributes;

class Product extends Model
{
    use HasFactory;
    protected $table ='product';  // kết nói với bảng nào mặc định sẽ tự kết nối với bảng theo tên model (viết lower) +'s'



}
