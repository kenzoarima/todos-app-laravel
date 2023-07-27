@extends('layouts.app')

@section('content')
<?php
// foreach ($temp_category_object_arr as $temp_category_object) {
//     echo $temp_category_object. '<br>';
// }
?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>
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
                            <div class="mb-3">
                                <div><b>Title:</b></div>
                                <div>{{ $todo->title }}</div>
                            </div>
                            <div class="mb-3">
                                <div><b>Description:</b></div>
                                <div>{{ $todo->description }}</div>
                            </div>
                            <div class="mb-3">
                                <div><b>Categories:</b></div>
                                @forelse ($temp_category_object_arr as $temp_category_object)
                                    <div data-cat-id="{{ $temp_category_object[0]->id }}">{{ $temp_category_object[0]->cat_name }}</div>
                                @empty
                                    <div>No categories.</div>
                                @endforelse
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
