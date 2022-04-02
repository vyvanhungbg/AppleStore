<h1>
    "Đây là danh sách sinh viên"
</h1>
<table border="1">
    <tr>
        <th>id</th>
        <th>Tên</th>
        <th>Tuổi</th>
    </tr>
    @foreach ($students as $student)
        <tr>
            <td>{{$student->id}}</td>
            <td>{{$student->name}}</td>
            <td>{{$student->get_age}}</td>
        </tr>
        @endforeach
</table>

