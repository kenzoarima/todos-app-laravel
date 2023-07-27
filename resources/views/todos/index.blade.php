@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">List of Todos</div>

                <div class="card-body">
                    @if (Session::has('alert-success'))
                    <div class="alert alert-success" role="alert">
                        {{ Session::get('alert-success') }}
                    </div>
                    @endif

                    @if (Session::has('alert-info'))
                    <div class="alert alert-info" role="alert">
                        {{ Session::get('alert-info') }}
                    </div>
                    @endif

                    @if (Session::has('error'))
                    <div class="alert alert-danger" role="alert">
                        {{ Session::get('error') }}
                    </div>
                    @endif

                    <div class="d-grid gap-2 d-lg-block mb-3">
                        <a class="btn btn-sm zbtn-block btn-primary" href="{{ route('todos.create') }}">Create Todo</a>
                        <a class="btn btn-sm zbtn-block btn-primary" href="{{ route('todos.index') }}">View Todos</a>
                        <a class="btn btn-sm zbtn-block btn-primary" href="{{ route('category.index') }}">View Categories</a>
                    </div>
                    

                    @if (count($todos) > 0)
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Title</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Completed</th>
                                    <th scope="col">Categories</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($todos as $todo)
                                    <tr>
                                        <td>{{ $todo->title }}</td>
                                        <td>{{ $todo->description }}</td>
                                        <td>
                                            @if ($todo->is_completed == 1)
                                                <a class="btn btn-sm btn-success" href="">Completed</a>
                                            @else
                                                <a class="btn btn-sm btn-danger" href="">Incomplete</a>
                                            @endif
                                        </td>
                                        <td>{{ $todo->category_tag }}</td>
                                        <td>
                                            <a class="btn btn-sm btn-success" href="{{ route('todos.show', $todo->id) }}">View</a>
                                            <a class="btn btn-sm btn-info" href="{{ route('todos.edit', $todo->id) }}">Edit</a>
                                            <form method="post" action="{{ route('todos.destroy') }}" class="style-inline-block">
                                                @csrf
                                                @method('DELETE')
                                                <input type="hidden" name="todo_id" value="{{ $todo->id }}">
                                                <input type="submit" class="btn btn-sm btn-warning" value="Delete">
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    @else
                        <h4>No todos are created yet.</h4>
                    @endif
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection