<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blog;
use Validator;
use Auth;

class BlogController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['posts'] = Blog::where('status',1)->get();
        return view('backend.blogs.view',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.blogs.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'image' => 'nullable|mimes:jpeg,png,jpg',
        ]);


	        $post = New Blog();
	        $post->title = $request->title;
	        $post->slug =  $request->slug;
	        
	        $image = $request->file('image');

            if($image){
                 $uniqname = uniqid();
                 $ext = strtolower($image->getClientOriginalExtension());
                 $filepath = 'public/images/blogs/';
                 $imagename = $filepath.$uniqname.'.'.$ext;
                 /*@unlink($data->photo);*/
                $image->move($filepath,$imagename);
                $post->image = $imagename;
            }
        
 
            $post->description = $request->description;
            $post->status = 1;
            $post->is_admin = Auth::user()->id;
            $result = $post->save();

        	if($result)
            {
                $notification = array(
                    'message' => 'Blog Post Entry Successfully!',
                    'alert-type' => 'success'
                );

                return redirect()->route('blog.index');
               
            }

           
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\models\Blogpost  $blogpost
     * @return \Illuminate\Http\Response
     */
    public function show(Blogpost $blogpost,$id)
    {
         $data['post'] = Blogpost::findOrFail($id);

        return view('backend.blogs.show',$data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\models\Blogpost  $blogpost
     * @return \Illuminate\Http\Response
     */
    public function edit(Blog $blog,$id)
    {
        
        $data['post'] = Blog::findOrFail($id);
        return view('backend.blogs.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\models\Blogpost  $blogpost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Blog $blog ,$id)
    {
         $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'image' => 'nullable|mimes:jpeg,png,jpg',
         ]);


	        $post =  Blog::find($id);
	        $post->title = $request->title;
	        $post->slug =  $request->slug;
	        
	        $image = $request->file('image');

            if($image){
                 $uniqname = uniqid();
                 $ext = strtolower($image->getClientOriginalExtension());
                 $filepath = 'public/images/blogs/';
                 $imagename = $filepath.$uniqname.'.'.$ext;
                 /*@unlink($data->photo);*/
                $image->move($filepath,$imagename);
                $post->image = $imagename;
            }
        
 
            $post->description = $request->description;
            $post->status = 1;
            $post->is_admin = Auth::user()->id;
            $result = $post->save();

        	if($result)
            {
                $notification = array(
                    'message' => 'Blog Post Update Successfully!',
                    'alert-type' => 'success'
                );

                return redirect()->route('blog.index');
               
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\models\Blogpost  $blogpost
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blog $blog,$id)
    {   
        $blog = Blog::findOrFail($id)->delete();

        if($blog)
            {
                $notification = array(
                    'message' => 'Blog Post delete Successfully!',
                    'alert-type' => 'success'
                );

                return redirect()->route('blog.index');
               
          }
    }
}
