<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;


class Student extends Model
{
     /**
     * Get the phone associated with the user.
     */

    // 這裡是一對一(單數)
    // public function phone(): HasOne
    public function phoneRelation(): HasOne
    {
        return $this->hasOne(Phone::class);
    }


/**
      * Get the comments for the blog post.
      */

    // 這裡是一對多(複數)
    
    public function hobbiesRelation(): HasMany
    {
        return $this->hasMany(Hobby::class);
    }

}