
<table border="1">
    <tr>
       <td><a href="{{route('create')}}">Thêm</a></td>
       <td colspan="2">Danh sách</td>
    </tr>
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

