@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ $category->cat_name }}</div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    
                    <div>
                        <div class="d-grid gap-2 d-lg-block mb-3">
                            <a class="btn btn-sm btn-primary" href="{{ url()->previous() }}">Go Back</a>
                        </div>
                        <div>
                            @forelse ($todos as $todo)
                            <div class="card border-secondary mb-3">
                                <div class="card-header">{{ $todo->title }}</div>
                                <div class="card-body">
                                    <div class="mb-3">
                                        <div><b>Description:</b></div>
                                        <div>{{ $todo->description }}</div>
                                    </div>
                                    <div class="">
                                        <div><b>Categories:</b></div>
                                        @if ($todo->category_tag)
                                            <div>{{ $todo->category_tag }}</div>
                                        @else
                                            <div>No categories.</div>
                                        @endif
                                    </div>
                                </div>
                                <a href="{{ route('todos.edit', $todo->id) }}" class="btn btn-info stretched-link">View Todo</a>
                            </div>
                            @empty
                                <div>No Todos with this category.</div>
                            @endforelse
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
