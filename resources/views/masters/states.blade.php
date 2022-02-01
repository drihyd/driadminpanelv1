<?php
use App\Models\State;
$states=State::orderBy('state_name', 'ASC')->where('country_id','99')->get();
$is_required=$is_required??'';
$fieldname=$fieldname??'state';
?>	
<select name="{{$fieldname}}" id="{{$fieldname}}" class="form-control form-control-sm" @if($is_required=="yes") required="required" @else @endif>
<option value="">--Select--</option>
@foreach ($states as $state)
<option value="{{Str::lower($state->state_name)??''}}" @if(old($fieldname,$default) == Str::lower($state->state_name)) {{ 'selected' }} @endif >{{Str::title($state->state_name)}}</option>
@endforeach 
</select>