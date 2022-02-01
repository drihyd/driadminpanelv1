@extends('admin.template_v1')
@section('content')
@include('admin.pagetitle')		
            <div class="paddingleftright pt-2 pb-5" >
            	
                <div class="table-responsive"></div>
                <table id="orders-table" class="table customdatatable" style="width:100%">
                  <thead>
                      <tr>
                      	<th width="10%">S.No.</th>
                        <th>Pannel type</th>
                        <th>Title</th>
                        <th>Image</th>
                        <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                     @foreach($homecontent_data as $homecontent)
                      <tr >
                        <td>{{$loop->iteration}}</td>
                          <td>{{ucwords($homecontent->pannel_type)??''}}</td>
                          <td>{{ucwords($homecontent->title)??''}}</td>
                          <td>
                          	@if($homecontent->image)
                          	<img src="{{url('assets/uploads/'.$homecontent->image??'')}}" width="100px">
                          	@else
                          	No image
                          	@endif
                          </td>

                          <td width="10%">
                            <a href="{{url('admin/homecontent/edit/'.Crypt::encryptString($homecontent->id))}}" class="edit mr-2" title="Edit" ><i class="fas fa-pen"></i></a>
<a href="{{url('admin/homecontent/delete/'.Crypt::encryptString($homecontent->id))}}" class="delete" title="Delete" onclick="return confirm('Are you sure to delete this?')"><i class="fas fa-trash-alt"></i></a>
      
                          </td>
                      </tr>
                      @endforeach
                  </tbody>
              </table>
            </div>
            </div>
@endsection