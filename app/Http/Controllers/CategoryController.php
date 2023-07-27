<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        Log::info('Showing all categories');

        $tempCategoryCounter = [];
        foreach ($categories as $category) {
            $todosCount = DB::select('SELECT count(*) AS count FROM todos WHERE category_tag LIKE "%'. $category->cat_name .'%";');
            $tempCategoryCounter[$category->id] = $todosCount[0]->count;
        }
        //dd($tempCategoryCounter);
        
        return view('category.index', [
            'categories' => $categories,
            'tempCategoryCounter' => $tempCategoryCounter
        ]);
    }

    public function show($id)
    {
        $category = Category::find($id);
        if (!$category) {
            request()->session()->flash('error', 'Unable to locate the Category');
            Log::error('Unable to locate the Category: {id}', ['id' => $id]);
            return to_route('category.index')->withErrors([
                'error' => 'Unable to locate the Todo'
            ]);
        }
        Log::info('Showing category item details: {id}', ['id' => $id]);

        $todos = DB::select('SELECT * FROM todos WHERE category_tag LIKE "%'. $category->cat_name .'%";');
        //dd($todos);

        return view('category.show', ['category' => $category, 'todos' => $todos]);
    }
}
