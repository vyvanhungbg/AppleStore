<?php


namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentsController extends Controller
{
    public function index()
    {
        $students = Student::all();
        return view('students.index',data : ['students' => $students]);
    }

    public function create()
    {
        return view('students.create');
    }

    public function store(Request $request)
    {

        $name = $request->get('name');
        $birthdate = $request->get('birthdate');
        $students = new Student();
        $students->name = $name;
        $students->birthdate = $birthdate;
        $students->save();

        //return view('students.create');
    }
}
