<?php

namespace App\Http\Controllers;

use App\Models\Contacts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Crypt;
use Carbon\Carbon;
Use Exception;
use Validator;
use App\Mail\ContactUs;
use Mail;
use Config;

class ContactsController extends Controller
{
    public function index()
    {   
        
            $contacts_data=DB::table('contacts')->orderby('created_at','DESC')->get();
            $pageTitle="Contacts";         
            return view('admin.contacts.contacts_list', compact('pageTitle','contacts_data'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
            
        
        
    }
    public function frontend_contact_page()
    {

		$contacts_data='Contact Us';
        return view('frontend.contactus',compact('contacts_data'));
    }

    public function store_contact(Request $request)
    {
        
		
     
        
		try{
			
			   $request->validate([
            'name'=>'required',
            'email'=>'required',
            'mobile'=>'required',
            'message'=>'required',
            'subject'=>'required',
            'appointment_type'=>'required',
            
        ]);

			
        DB::table('contacts')->insert([
            [
                "name"=>$request->name??'',
                "email"=>$request->email??'',
                "mobile"=>$request->mobile??'',
                "message"=>$request->message??'',
                "subject"=>$request->subject??'',
                "appointment_type"=>$request->appointment_type??'',
            ]  
        ]); 
		
		
		if($request->email){
			
			$mail_params = [
			'name' =>$request->name??'',
			'email' =>$request->email??'',
			'mobile' =>$request->mobile??'',
			'message' =>$request->message??'',
            "subject"=>$request->subject??'',
            "appointment_type"=>$request->appointment_type??'',
			];
		Mail::to(Config::get('mail.CCAddress_support.domainname'))->send(new ContactUs($mail_params));
		}
		
		
        return redirect()->back()->with('success', "Success! Details are added successfully"); 
		
		} catch (\Exception $exception){
			
			//dd($exception);
		}
		
    }
    public function delete_contacts($id)
    {
        $ID = Crypt::decryptString($id);
            $data=Contacts::where('id',$ID)->delete();   
         return redirect()->back()->with('success','Success! Details are deleted successfully');
        
    }

}
