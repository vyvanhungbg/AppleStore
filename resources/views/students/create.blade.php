<form action="{{route('store')}}" method="POST">
    @csrf
    <table border="1">
        <tr>
            <td>Tên</td>
            <td>Ngày sinh</td>
        </tr>

        <tr>
            <td><input type="text" name="name"></td>
            <td><input type="date" required name="birthdate"></td>
        </tr>

        <tr>
            <td align="center" colspan="2"><input type="submit" value="Nhập"></td>
        </tr>
    </table>
</form>
