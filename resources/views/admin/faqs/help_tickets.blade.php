@extends('admin.template_v1')
@section('content')
@include('admin.pagetitle')	
            <div class="paddingleftright pt-2 pb-5" >
            	
   
                <table id="orders-table" class="table customdatatable" style="width:100%">
                  <thead>
                      <tr>
                      	<th>S.No.</th>
                        <th>Name</th>
                        <th>Issue</th>
                        <th>Message</th>
                        <th>Status</th>
                        <th>Reply Message</th>
                        <th>Date</th>
                        <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                  	 @foreach($support_data as $faq)
                      <tr >
                      	<td>{{$loop->iteration}}</td>
                          <td>{{ucwords($faq->fullname)??'' }}<br>{{$faq->email??'' }}<br>{{$faq->mobile??'' }}</td>
                          <td>{{$faq->issue??''}}</td>
                          <td>{{$faq->message??'' }}</td>
                          <td>{{ucwords($faq->status)??'' }}</td>
                          <td>{{ucwords($faq->status_remarks)??'' }}</td>
                          <td>{{date('F j, Y', strtotime($faq->created_at??''))}}</td>
                          <td><a href="{{url('admin/support_leads/reply/'.$faq->id)}}" class="edit mr-2" title="Reply" ><i class="fas fa-reply"></i></a>
                            <a href="{{url('admin/support_leads/delete/'.Crypt::encryptString($faq->id))}}" class="delete" title="Delete" onclick="return confirm('Are you sure to delete this?')"><i class="fas fa-trash-alt"></i></a>
                          </td>
                      </tr>
                      @endforeach
                  </tbody>
              </table>
            </div>
@endsection