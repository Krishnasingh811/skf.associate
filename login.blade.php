@extends('layouts.app')
@section('content')
<h2>Login</h2>
@if($errors->any())<div style="color:red">{{ $errors->first() }}</div>@endif
<form method="POST" action="/login">@csrf
  <div><label>Email</label><input name="email"/></div>
  <div><label>Password</label><input name="password" type="password"/></div>
  <button type="submit">Login</button>
</form>
@endsection
