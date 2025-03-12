<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Phone extends Model
{
   /**
     * Get the user that owns the phone.
     */
    public function student(): BelongsTo
    {
        return $this->belongsTo(student::class);
    }
}
