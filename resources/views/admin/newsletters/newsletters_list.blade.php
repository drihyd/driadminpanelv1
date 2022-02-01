@extends('admin.template_v1')
@section('content')
@include('admin.pagetitle')
@include('admin.alerts')
@include('admin.errors')			
            <div class="paddingleftright pt-2 pb-5" >
            	
   
                <table id="orders-table" class="table customdatatable" style="width:100%">
                  <thead>
                      <tr>
                      	<th>S.No.</th>
                        <th>email</th>
                        <th>Subscription</th>
                        <th>Date</th>
                        <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                  	 @foreach($newsletters_data as $newsletter)
                      <tr >
                      	<td>{{$loop->iteration}}</td>
                          <td>{{$newsletter->email??''}}</td>
                          <td>{{Str::ucfirst($newsletter->subcribe??'')}}</td>
                          <td>{{date('F j, Y', strtotime($newsletter->created_at??''))}}</td>
                          <td><a href="{{url('admin/newsletters/delete/'.Crypt::encryptString($newsletter->id))}}" class="delete" title="Delete" onclick="return confirm('Are you sure to delete this?')"><i class="fas fa-trash-alt"></i></a></td>
                      </tr>
                      @endforeach
                  </tbody>
              </table>
            </div>
@endsection