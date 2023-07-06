<?php

namespace App\Http\Controllers;

use App\Http\Requests\TodoRequest;
use App\Models\Todo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class TodoController extends Controller
{
    public function index()
    {
        $todos = Todo::all();
        Log::info('Showing all todos');

        return view('todos.index', [
            'todos' => $todos
        ]);
    }

    public function create()
    {
        Log::info('Showing create todos page');
        return view('todos.create');
    }

    public function store(TodoRequest $request)
    {
        // $request->validated();
        Todo::create([
            'title' => $request->title,
            'description' => $request->description,
            'is_completed' => 0
        ]);

        $request->session()->flash('alert-success', 'Todo Created Successfully');

        Log::info('Saving todo item details');
        return to_route('todos.index');
    }

    public function show($id)
    {
        $todo = Todo::find($id);
        if (!$todo) {
            request()->session()->flash('error', 'Unable to locate the Todo');
            Log::error('Unable to locate the Todo: {id}', ['id' => $id]);
            return to_route('todos.index')->withErrors([
                'error' => 'Unable to locate the Todo'
            ]);
        }
        Log::info('Showing todo item details: {id}', ['id' => $id]);
        return view('todos.show', ['todo' => $todo]);
    }

    public function edit($id)
    {
        $todo = Todo::find($id);
        if (!$todo) {
            request()->session()->flash('error', 'Unable to locate the Todo');
            Log::error('Unable to locate the Todo: {id}', ['id' => $id]);
            return to_route('todos.index')->withErrors([
                'error' => 'Unable to locate the Todo'
            ]);
        }
        Log::info('Showing todo item details: {id}', ['id' => $id]);
        return view('todos.edit', ['todo' => $todo]);
    }

    public function update(TodoRequest $request)
    {
        $todo = Todo::find($request->todo_id);
        if (!$todo) {
            request()->session()->flash('error', 'Unable to locate the Todo');
            Log::error('Unable to locate the Todo: {id}', ['id' => $request->todo_id]);
            return to_route('todos.index')->withErrors([
                'error' => 'Unable to locate the Todo'
            ]);
        }

        $todo->update([
            'title' => $request->title,
            'description' => $request->description,
            'is_completed' => $request->is_completed
        ]);

        $request->session()->flash('alert-info', 'Todo Updated Successfully');

        Log::info('Saving todo item details: {id}', ['id' => $request->todo_id]);
        return to_route('todos.index');
    }

    public function destroy(Request $request)
    {
        $todo = Todo::find($request->todo_id);
        if (!$todo) {
            request()->session()->flash('error', 'Unable to locate the Todo');
            Log::error('Unable to locate the Todo: {id}', ['id' => $request->todo_id]);
            return to_route('todos.index')->withErrors([
                'error' => 'Unable to locate the Todo'
            ]);
        }

        $todo->delete();
        $request->session()->flash('alert-success', 'Todo Deleted Successfully');

        Log::info('Deleted todo item: {id}', ['id' => $request->todo_id]);
        return to_route('todos.index');
    }
}
