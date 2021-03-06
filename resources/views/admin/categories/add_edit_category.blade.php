@extends('admin.template_v1')
@section('content')
@include('admin.pagetitle')
@include('admin.alerts')
@include('admin.errors')
@php
if(isset($categories_data->applicable_attributes) && !empty($categories_data->applicable_attributes)){
$attributes=json_decode($categories_data->applicable_attributes);
if($attributes){
  $attributes=$attributes;
}
else{
$attributes=[];
  
}

}
else{
$attributes=[];
}



$attributes_data=DB::table('attributes')->orderBy('id','ASC')->get();
@endphp
<div class="paddingleftright pt-2 pb-5" >
          
@if(isset($categories_data->id))
<form id="crudTable" action="{{ url('admin/categories/update') }}" method="POST"  enctype="multipart/form-data">
<input type="hidden" name="id" value="{{$categories_data->id}}">
@else
<form id="crudTable" action="{{ url('admin/categories/store') }}" method="POST"  enctype="multipart/form-data">
@endif  
      @csrf
      <input type="hidden" name="parent_id" class="form-control" value="0">
              <div class="row">
              <div class="col-md-6">
                <div class="form-group" id="ParentID">
        <label for="ParentID">Department<span class="text-red"style="color: red;">*</span></label>
        <select  class="form-control" name="department_id" id="ParentID" required="required">
          <option value="">-- Select --</option>
          @foreach($departments_data as $department)
            <option value="{{$department->id}}" {{ old('department_id',$categories_data->department_id??'') == $department->id ? 'selected':''}}>{{$department->dept_name}}</option>
          @endforeach
              
        </select>
      </div>
                <div class="form-group">
            <label>Name<span style="color: red">*</span></label>
            <input type="text" name="name" id="title" class="form-control nameForSlug" value="{{old('name',$categories_data->name??'')}}" required="required">
          </div>
          <div class="form-group">
            <label>Slug<span style="color: red">*</span></label>
            <input type="text" name="slug" id="title" class="form-control slugForName" value="{{old('slug',$categories_data->slug??'')}}" required="required" >
          </div>
          <div class="form-group">
            <label>Applicable Attributes<span style="color: red">*</span></label>
          </div>
          <div class="form-group"> 
            <div class="row">
            @foreach($attributes_data as $attribute) 
              <div class="col-md-4"> 
                @if(in_array($attribute->slug??[],$attributes))

      <input  type="checkbox" checked name="applicable_attributes[]" value="{{$attribute->slug??''}}">&nbsp; {{ucfirst($attribute->attr_name??'')}}&nbsp;
      @else 
      <input  type="checkbox" name="applicable_attributes[]" value="{{$attribute->slug??''}}">&nbsp; {{ucfirst($attribute->attr_name??'')}}&nbsp;
      @endif
              </div>
               @endforeach
            </div>
         
                
          </div>
          <div class="form-group inline">
            <label>Shipping Weight (In Kg)<span style="color: red">*</span></label>
            <input type="number" name="shipping_weight" id="title" class="form-control " value="{{old('shipping_weight',$categories_data->shipping_weight??'')}}" required="required" >
          </div>
          <div class="form-group inline">
            <label>SKU Prefix</label>
            <input type="text" name="sku_prefix" id="title" class="form-control " value="{{old('sku_prefix',$categories_data->sku_prefix??' ')}}" >
          </div>
          <div class="form-group">
        <label>Category Image<span style="color: red">*</span></label>       
        <input type="file"  name="cat_image" class="file-input" />
      </div>
      <div class="form-group">
        @if(isset($categories_data->cat_image) && !empty($categories_data->cat_image))
        @if(file_exists('assets/uploads/categories/' . $categories_data->cat_image)) 
            <img src="{{ asset('assets/uploads/categories/' . $categories_data->cat_image) }}" width="100"   />
          
        @endif
        @else
        @endif
      </div>
	  <!--
      <div class="row">
        <div class="col-sm-6">
          <div class="form-group">
        <label><b>Alteration</b><span style="color: red;">*</span></label>
      </div>
      <div class="form-group">
        <input type="radio" class="rdbtn"  name="alteration" value="1" {{ old('alteration',$categories_data->alteration??'') == '1'?'checked':''}}/>
                <label>Yes</label>
                <input type="radio" class="rdbtn" name="alteration" value="0" required="required"    {{ old('alteration',$categories_data->alteration??'') == '0'?'checked':''}}/>
                  <label>No</label>
      </div>
        </div>
        <div class="col-sm-6">
          
      <div class="form-group">
        <label><b>Sleeve</b><span style="color: red;">*</span></label>
      </div>
      <div class="form-group">
        <input type="radio" class="rdbtn"  name="sleeve" value="1" {{ old('sleeve',$categories_data->sleeve??'') == '1'?'checked':''}}/>
                <label>Yes</label>
                <input type="radio" class="rdbtn" name="sleeve" value="0" required="required"    {{ old('sleeve',$categories_data->sleeve??'') == '0'?'checked':''}}/>
                  <label>No</label>
      </div>
        </div>

      </div>
      -->
      <button type="submit" class="btn btn-outline-success btn-sm mt-3">Save</button>
              <a href="{{url('admin/categories')}}" class="btn btn-outline-danger btn-sm mt-3">Back</a>
    </div>
    <div class="col-md-6"> 
          <div class="form-group">
            <label>Position Score</label>
            <input type="number" name="position_score" id="title" class="form-control " value="{{old('shipping_weight',$categories_data->shipping_weight??'0')}}" >
          </div>
          <div class="form-group">
            <label>Description<span style="color: red">*</span></label>
            <textarea name="desc" id="title" class="form-control ">{{old('desc',$categories_data->desc??'')}}</textarea>
            
          </div>
          <div class="form-group">
            <label>Product Images Upload Path<span style="color: red">*</span></label>
            <input type="text" name="product_upload_path" id="title" class="form-control slugForName1" value="{{old('product_upload_path',$categories_data->product_upload_path??'')}}" required="required"  @if($categories_data->product_upload_path??'') readonly @else @endif >
          </div>
           <div class="form-group">
            <label>SEO Title</label>
            <input type="text" name="seo_title" id="title" class="form-control " value="{{old('seo_title',$categories_data->seo_title??' ')}}" >
          </div>
          <div class="form-group">
            <label>SEO Description</label>
            <textarea name="seo_desc" id="title" class="form-control ">{{old('seo_desc',$categories_data->seo_desc??'')}}</textarea>
            
          </div>
          <div class="form-group">
            <label>SEO Keywords</label>
            <textarea name="seo_keywords" id="title" class="form-control ">{{old('seo_keywords',$categories_data->seo_keywords??'')}}</textarea>
            
          </div>
          <!-- <div class="form-group">
        <label>Size Chart<span style="color: red">*</span> (upload:jpg/jpeg/png)</label>       
        <input type="file"  name="size_chart" class="file-input"  />
      </div>
      <div class="form-group">
        @if(isset($categories_data->size_chart) && !empty($categories_data->size_chart))
        <img src="{{ asset('assets/uploads/categories/' . $categories_data->size_chart) }}" width="100"   />
        @else
        
        @endif
      </div>
      <div class="form-group">
        <label>Measurement Chart<span style="color: red">*</span> (upload:jpg/jpeg/png)</label>       
        <input type="file"  name="measurement_chart" class="file-input"  />
      </div>
      <div class="form-group">
        @if(isset($categories_data->measurement_chart) && !empty($categories_data->measurement_chart))
        <img src="{{ asset('assets/uploads/categories/' . $categories_data->measurement_chart) }}" width="100"   />
        @else

        @endif
      </div> -->
      <div class="form-group">
            <label>Size Guide</label>
            <textarea name="size_guide" id="page_editor" class="form-control ckeditor">{{old('size_guide',$categories_data->size_guide??'')}}</textarea>
            
          </div>
          <div class="form-group">
            <label>Diamond Guide</label>
            <textarea name="diamond_guide" id="page_editor" class="form-control ckeditor">{{old('diamond_guide',$categories_data->diamond_guide??'')}}</textarea>
            
          </div>
          <div class="row">
            <div class="col-sm-6">
              <label>Size Guide Display on Website<span style="color: red">*</span></label>
              <div class="form-group">
            <input type="radio" class="rdbtn"  name="is_size_guide_display" value="yes"  {{ old('is_size_guide_display',$categories_data->is_size_guide_display??'') == 'yes'? 'checked':''}}/>
                <label>Yes</label>
                <input type="radio" class="rdbtn" value="no"  name="is_size_guide_display"  {{ old('is_size_guide_display',$categories_data->is_size_guide_display??'') == 'no'? 'checked':''}}/>
                  <label>No</label>
            
          </div>
            </div>
            <div class="col-sm-6">
              <label>Diamond Guide Display on Website <span style="color: red">*</span></label>
              <div class="form-group">
            
            <input type="radio" class="rdbtn"  name="is_diamond_guide_display" value="yes"  {{ old('is_diamond_guide_display',$categories_data->is_diamond_guide_display??'') == 'yes'? 'checked':''}}/>
                <label>Yes</label>
                <input type="radio" class="rdbtn" value="no"  name="is_diamond_guide_display"  {{ old('is_diamond_guide_display',$categories_data->is_diamond_guide_display??'') == 'no'? 'checked':''}}/>
                  <label>No</label>
            
          </div>
            </div>
          </div>
          <label>Check Availability <span style="color: red">*</span></label>
              <div class="form-group">
            
            <input type="radio" class="rdbtn"  name="check_availability" value="yes"  {{ old('check_availability',$categories_data->check_availability??'') == 'yes'? 'checked':''}}/>
                <label>Yes</label>
                <input type="radio" class="rdbtn" value="no"  name="check_availability"  {{ old('check_availability',$categories_data->check_availability??'') == 'no'? 'checked':''}}/>
                  <label>No</label>
            
          </div>
        


          </div>
              
              </div> 
              </div>
            
            
        </form> 
      </div>
 @endsection


@push('scripts')
<script>
   $("#crudTable").validate({
  rules: {
  name: {
      required: true,
      
    },
     description: {
      required: true,
      
    },
    max_admissions: {
      required: true,
      number:true,
      minlength:1,
      maxlength:100
    },course_fee: {
      required: true,
      number:true,
      minlength:2,
      maxlength:100
    },
    institute_id: {
      required: true
    }
  }
});
 </script> 
 @endpush
 