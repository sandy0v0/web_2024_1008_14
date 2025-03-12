<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Student;
use App\Models\Phone;
use App\Models\Hobby;


class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // dd('student index OK')
        // $users = DB::table('users')->get();
        // $data = DB::table('students')->get();
        // $data=Student::get();
        // dd($data);

        // $phone = User::find(1)->phone;
        // $data = Student::with('phone')->get();
        // dd($data[0]->name);
        // dd($data);

        $data = Student::with('phoneRelation')->with('hobbiesRelation')->get();
        // dd($data[0]->phoneRelation);
        
        // 一對多dd出來 ↓
        // dd($data[0]->hobbiesRelation[0]->name);
        // dd($data);
        
        // dd($data[0]);
        
        // $data foreach
        foreach ($data as $key1 => $value1) {
            $tmpArr = [];
            foreach ($value1->hobbiesRelation as $key2 => $value2) {
                array_push($tmpArr, $value2->name);
            }
            $tmpString = implode(',', $tmpArr);
            // $data[$key1]['hobbies'] = $tmpString;
            $data[$key1]['hobbyString'] = $tmpString;
        }

       
        // dd($data);

        // dd($tmpArr);
        // $myArr = ['s14-01','s14-02'];

        // dd($tmpString);

        
        return view('student.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // dd('student controller create');
        return view('student.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request);
        $input = $request->except('_token');
        // dd($input);

        $hobbyArr = explode("," ,$input['hobbies']);
        //dd($hobbyArr);

        // 主表
        $data = new Student;
        // $data->name = $request->name;
        // $data->mobile = $request->mobile;

        $data->name = $input['name'];
        $data->mobile = $input['mobile'];

        $data->save();
        
        // 子表 phone
        $item = new Phone;
        $item->student_id = $data->id;
        $item->phone = $input['phone'];

        $item->save();

 
        // 子表 hobbies
        foreach ($hobbyArr as $key => $value){
        $hobby = new Hobby;
        $hobby->student_id = $data->id;
        $hobby->name = $value;
        $hobby->save();
        }

        return redirect()->route('students.index');
        // return redirect('/students');
        
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        // $url = route('students.edit', ['student' => $id]);
        // dd($url);
        // dd("hello edit $id");

        // get 指的是 fetchAll (在主頁用的)
        // first 指的是 fetch (單一的)
        
        // $data=Student::where('id',$id)->first();
        // dd($data);

        // $data=Student::where('id',$id)->with('phone')->first();
        $data=Student::where('id',$id)->with('phoneRelation')->first();
        // dd($data);

        return view('student.edit', ['data' => $data]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // dd("Hello update $id");
        $input =$request->except('_token', '_method');
        // $data = Student::where('id',$id)->first();
        // $data = Student::find($id);

        // "name" => "cat"
        // "mobile" => "0933"


        //主表
        $data = Student::where('id',$id)->first();
        $data->name=$input['name'];
        $data->mobile=$input['mobile'];
        $data->save();

        //子表
        // 刪除子表
        Phone::where('student_id', $id)->delete();
        
        // 新增子表
        $item = new Phone;
        $item->student_id = $data->id;
        $item->phone = $input['phone'];
        $item->save();


        return redirect()->route('students.index');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // dd("Hello destroy $id");
        // $data = Student::where('id', $id)->first();
        // $data->delete();

        // 刪除子表
        Phone::where('student_id', $id)->delete();
        Hobby::where('student_id', $id)->delete();

        // 刪除主表
        Student::where('id', $id)->delete();

        return redirect()->route('students.index');

    }

    public function excel()
    {
        dd('hello student controller excel');
    }

    public function sayHello()
    {
        dd('hello kai');
    }
}
