<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['name', 'photo', 'slug', 'parent_id'];

    protected $hidden = [''];

    public function getPhoto()
    {
        return '/storage/' . $this->photo;
    }
    public function category()
    {
        return $this->belongsTo(self::class, 'parent_id', 'id');
    }

    public function subCategory()
    {
        return $this->hasMany(self::class, 'id', 'parent_id');
    }
}
