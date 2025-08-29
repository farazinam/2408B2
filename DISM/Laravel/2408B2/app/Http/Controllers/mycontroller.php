<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\productsmodel;

class mycontroller extends Controller
{
    public function Home(){
        return view('Home');
    }

    public function About(){
        return view('About');
    }

    public function Contact(){
        return view('Contact');
    }

    public function create(){
        return view('create');
    }

    public function store(Request $req){
        $imagePath = time().'.'.$req->pi->extension();  // creating an image path

        $req->pi->move(public_path('uploads'), $imagePath);  //move Image in a Folder
        $data = new productsmodel;
        $data->pname = $req['pn'];
        $data->pprice = $req['pp'];
        $data->pimage = $imagePath;
        $data->save();
        return view('create');
    }
}
