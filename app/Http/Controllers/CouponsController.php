<?php
namespace App\Http\Controllers;
use App\Models\Coupons;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;
Use Exception;
use Validator;
class CouponsController extends Controller
{
    
    public function underconstruction()
    {
         
            $pageTitle="";
            return view('admin.underconstruction',compact('pageTitle'));   
         
    }
}
