@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">List of Categories</div>

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

                    @if (count($categories) > 0)
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Name</th>
                                    <th scope="col">Created</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($categories as $category)
                                    <tr>
                                        <td>{{ $category->cat_name }}</td>
                                        <td>{{ $category->created_at }}</td>
                                        <td>
                                            <a class="btn btn-sm btn-success" href="{{ route('category.show', $category->id) }}">View Posts</a>
                                            <div class="style-inline-block">({{ $tempCategoryCounter[$category->id] }} posts)</div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    @else
                        <h4>No categories are created yet.</h4>
                    @endif
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection