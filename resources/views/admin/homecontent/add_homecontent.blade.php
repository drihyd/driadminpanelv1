@extends('admin.template_v1')
@section('content')
@include('admin.pagetitle')
@include('admin.alerts')
@include('admin.errors')
 <!-- Form Starts        -->
 <div class="paddingleftright pt-2 pb-5" >
<div class="row">
	<div class="col-sm-12">
		@if(isset($homecontent_data->id))
<form method="POST" class="Addnewblog" action="{{ url('admin/homecontent/update') }}" enctype="multipart/form-data">
<input type="hidden" name="id" value="{{$homecontent_data->id}}">
@else
<form method="POST" class="Addnewblog" action="{{ url('admin/homecontent/store') }}" enctype="multipart/form-data">
@endif
			@csrf
			<div class="row">
				<div class="col-sm-5">

          <div class="form-group">
<label>pannel Type<span style="color: red">*</span></label>

<select name="pannel_type" class="form-control" required="required">
<option value="new-arrival" {{ old('pannel_type',$homecontent_data->pannel_type??'') == 'new-arrival'? 'selected':''}}>New Arrival</option>

<option value="icons" {{ old('pannel_type',$homecontent_data->pannel_type??'') == 'icons'? 'selected':''}}>Icons</option>
<option value="designed_nikitha" {{ old('pannel_type',$homecontent_data->pannel_type??'') == 'designed_nikitha'? 'selected':''}}>Designed by Nikitha</option>
<option value="shop_pannel_1" {{ old('pannel_type',$homecontent_data->pannel_type??'') == 'shop_pannel_1'? 'selected':''}}>Pannel 1</option>
<option value="shop_pannel_2" {{ old('pannel_type',$homecontent_data->pannel_type??'') == 'shop_pannel_2'? 'selected':''}}>Pannel 2</option>

</select>
</div>
			
      <div class="form-group">
            <label>Title<span style="color: red">*</span></label>
            <input type="text" name="title" id="title" class="form-control" value="{{old('title',$homecontent_data->title??'')}}" required="required">
          </div>
          <div class="form-group">
            <label>Sub Title</label>
            <input type="text" name="sub_title" id="title" class="form-control" value="{{old('sub_title',$homecontent_data->sub_title??'')}}">
          </div>
			
          <div class="form-group">
            <label>Description</label>
            <textarea  name="description" id="title" class="form-control" value="" rows="3">{{old('description',$homecontent_data->description??'')}}</textarea>
          </div>
          <div class="form-group">
            <label>Call to URL</label>
            <input type="url" name="cta" id="title" class="form-control" value="{{old('cta',$homecontent_data->cta??'')}}">
          </div>
          <div class="form-group">
        <label>Image<span style="color: red">*</span></label>       
        <input type="file"  name="image" class="file-input" />
      </div>
      <div class="form-group">
        @if(isset($homecontent_data->image) && !empty($homecontent_data->image))
        <img src="{{ asset('assets/uploads/' . $homecontent_data->image) }}" width="100"   />
        @else
        @endif
      </div>
		</div>
		<div class="col-sm-5">
			
          

      </div>
      </div>
          <div class="form-group">
          
          </div>
          <button  id="" type="submit" class="btn btn-brand submit_btn ">Submit</button>
          <a href="{{url('admin/homecontent')}}" class="btn btn-back">Back</a>
        </div>


		</div>
		
		</form>
	</div>
</div>
</div>
<!-- Form End -->
@endsection
@push('scripts')
    <!-- flot charts scripts-->    
<script type="text/javascript">
  $(document).ready(function() {
    $("form").validate({
      rules:{
        footer_title:{
          required:true,
          alphanumspace:true,
          minlength:3,
          maxlength:30
        },copyright:{
          required:true,
          
        },
        twitter_url:{
          required:true,
          url:true
        },linkedin_url:{
          required:true,
          url:true
        },facebook_url:{
          required:true,
          url:true
        },
        header_logo:{
          extension: "png|jpe?g",  
       
        },footer_logo:{
          extension: "png|jpe?g",   
        
        }
      },
      messages: { 
          header_logo: {
           extension: "File must be JPG or PNG",
      
          }
      },
      
     });
});
</script>
@endpush
