<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Wine extends Model
{
    use HasFactory;

    public function grape(): BelongsTo
    {
        return $this->belongsTo(Grape::class);
    }

    public function type(): BelongsTo
    {
        return $this->belongsTo(Type::class);
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'description',
        'comment',
        'source',
        'year',
        'grape_id',
        'type_id',
        'price',
    ];
}
