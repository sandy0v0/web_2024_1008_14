<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\CarController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    // return redirect()->route('students.index');
    // return redirect()->route('teachers.index');
    return redirect()->route('cars.index');

});


// students
Route::get('/students_excel', [StudentController::class, 'excel']);
Route::get('/students_hello', [StudentController::class, 'sayHello']);
Route::resource('students', StudentController::class);

// teacher
// 在終端機 輸入 ↓ 即可複製一個Teacher的相關資料
// php artisan make:model Teacher -mcr 
Route::resource('teachers', TeacherController::class);

// Car 
// 記得確認CarController有沒有改
Route::resource('cars', CarController::class);
