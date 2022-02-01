<?php
namespace App\Http\Controllers;
use App\Models\Newsletter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
use Carbon\Carbon;
Use Exception;
use Validator;
use App\Mail\NewsletterMail;
use Mail;
use Config;

class NewsletterController extends Controller
{
    
    public function store_newsletter(Request $request)
    {


        
        $isexits_newsletter = Newsletter::where('email',$request->email)->where('subcribe','yes')->get()->count();

        $request->validate([
            'email'=>'required|email',
            
        ]);





        if ($isexits_newsletter > 0) {
            return response()->json(['statusCode'=>'202','error'=>'You Have been Already Subscribed Thank you']);

        }


	
	if($request->email){
		try{
		Mail::to($request->email)->cc(Config::get('mail.CCAddress_support.domainname'))->send(new NewsletterMail(''));
		} catch (\Exception $exception){
		}
	}



        
            Newsletter::insert([
            [
                "email"=>$request->email??'',
                "subcribe"=>$request->subcribe??'yes',
            ]  
        ]); 

            return response()->json(['statusCode'=>'200','success'=>'Thank you for Subscribing..!']);
        
        
    }

    public function listing()
    {   
        
            $newsletters_data=Newsletter::orderBy('created_at', 'DESC')->get();
            $pageTitle="Newsletter Leads";         
            return view('admin.newsletters.newsletters_list', compact('pageTitle','newsletters_data'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
            
        
        
    }
    public function delete_newsletter($id)
    {
        $ID = Crypt::decryptString($id);
            $data=Newsletter::where('id',$ID)->delete();   
         return redirect()->back()->with('success','Success! Details are deleted successfully');
        
    }
}
