<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Carbon;
class DashboardController extends Controller
{
    public function dashboard()
		{			 
			$pageTitle = "Dashboard";	
			return view('admin.dashboard.show',compact('pageTitle'));		
		}
}
