@extends('layouts.app')

@section('content')
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
                        <div class="d-grid gap-2 mb-3">
                            <a class="btn btn-sm btn-primary" href="{{ url()->previous() }}">Go Back</a>
                        </div>
                        <div>
                            <div class="mb-3">
                                <div><b>Your Todo title is: </b></div>
                                <div>{{ $todo->title }}</div>
                            </div>
                            <div class="mb-3">
                                <div><b>Your Todo description is: </b></div>
                                <div>{{ $todo->description }}</div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
