@extends('admin.template_v1')
@section('content')
@include('admin.pagetitle')	
            <div class="paddingleftright pt-2 pb-5" >
            	
   
                <table id="orders-table" class="table customdatatable" style="width:100%">
                  <thead>
                      <tr>
                      	<th>S.No.</th>
                        <th>Name</th>
                        <th>email</th>
                        <th>Mobile</th>
                        <th>Subject</th>
                        <th>Appointment Type</th>
                        <th>Message</th>
                        <th>Date</th>
                        <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                  	 @foreach($contacts_data as $contact)
                      <tr >
                      	<td>{{$loop->iteration}}</td>
                          <td>{{ucwords($contact->name)??''}}</td>
                          <td>{{$contact->email??''}}</td>
                          <td>{{$contact->mobile??''}}</td>
                          <td>{{$contact->subject??''}}</td>
                          @if($contact->appointment_type == 'contact_us_an_whatsapp')
                          <td>Contact us on Whatsapp</td>
                          @else
                            <td>Book video call appointment</td>
                          @endif

                          <td>{{$contact->message??''}}</td>
                          <td><td>{{date('F j, Y', strtotime($contact->created_at??''))}}</td></td>
                          <td><a href="{{url('admin/contacts/delete/'.Crypt::encryptString($contact->id))}}" class="delete" title="Delete" onclick="return confirm('Are you sure to delete this?')"><i class="fas fa-trash-alt"></i></a></td>
                      </tr>
                      @endforeach
                  </tbody>
              </table>
            </div>
@endsection