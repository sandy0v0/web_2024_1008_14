<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return redirect()->route('student.index');
});


Route::get('/students_excel', [StudentController::class, 'excel']);
Route::get('/students_hello', [StudentController::class, 'sayHello']);
Route::resource('students', StudentController::class);
