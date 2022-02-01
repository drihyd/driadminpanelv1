<header id="main-header" class="hidden-print">
   <div class="container-fluid">
      <nav class="navbar navbar-expand-lg">
         <div id="menu-overlay" class="main-menu-toggler"></div>
         <a href="{{ URL('/')}}" class="navbar-brand">
         <img src="{{URL::to('assets/uploads/'.$theme_options_data->header_logo??'')}}" class="logo header-logo img-fluid" alt="JBN Brand Logo"></a>
         <!--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">-->
         <!--       <span class="navbar-toggler-icon"></span>-->
         <!--     </button>-->
         <ul class="navbar-nav d-block d-lg-none d-xl-none ml-auto mobile-cart-warpper">
            <li>
               <a href="{{ URL('/mywishlist')}}" class="cart-icon">
               <i class="fas fa-heart"></i>  
               </a>
               <a href="{{ URL('/cart')}}" class="cart-icon">
               <i class="fas fa-shopping-cart"></i>
               @if(isset($cartCount) && $cartCount>0)
               <span class="cart-count" id="nav_no_cart_items">
               {{$cartCount??''}}
               </span>
               @else
               @endif
               </a> 
            </li>
         </ul>
         <div id="header-nav" class="collapse navbar-collapse desktop-header-collapse">
            <!--<div class="close-menu main-menu-toggler"></div>-->



@php

$parent_menu=DB::table('menus')->select('menu_name as parentmenu','id as parentmenuid','mapping_sub_cat','menu_url as menu_url')
->where('parent_id',0)
->where("menu_category","header-menu")
->where('is_active', "Yes") 
->orderBy('menu_sorting', 'ASC')
->get();

@endphp
      
         <nav class="navbar navbar-expand-lg navbar-light p-0">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse desktop-header-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav desktop-header-navbar-nav">



@foreach($parent_menu as $key => $item_parent)


@php
$subcat_menus=DB::table('menus')->select('menu_name as childname','id as childid','menu_url as menu_url')
->where('parent_id',$item_parent->parentmenuid)
->where('child_id',0)
->where('is_active',"Yes") 
->orderBy('menu_sorting', 'ASC')  
->get();
@endphp


<li class="nav-item dropdown active">
@if($item_parent->menu_url)
    <a class="nav-link link-about @if($subcat_menus->count()>0) dropdown-toggle @else @endif" @if($subcat_menus->count()>0) data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" @else @endif href="{{$item_parent->menu_url??''}}">{{$item_parent->parentmenu??''}}</a>
@else
<a class="nav-link link-about no-toggle" href="{{$item_parent->menu_url??''}}" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
{{$item_parent->parentmenu??''}}
</a>
@endif





@if($subcat_menus->count()>0 && $item_parent->mapping_sub_cat=="yes")

    <div class="dropdown-menu navitem-submenu mega-menu " aria-labelledby="navbarDropdownMenuLink">
        <div>
            <div class="row">
               
                    @foreach($subcat_menus as $key => $item_subcat)
                     <div class="col-sm-2 col-6">
                    <div class="dropdown-menu-wrapper">
                        
                        <a class="" href="@if($item_subcat->menu_url) {{$item_subcat->menu_url??''}}@else # @endif"><h4>{{$item_subcat->childname??''}}</h4></a>




@php

$subchild_cat_menus=DB::table('menus')->select('menu_name as subchildname','id as subchildid','menu_url as menu_url')
->where('parent_id',$item_parent->parentmenuid)
->where('child_id',$item_subcat->childid)
->where('is_active', "Yes")
->orderBy('menu_sorting', 'ASC')   
->get();

@endphp

                        @foreach($subchild_cat_menus as $key => $item_subchildname)
                        <a class="dropdown-item " href="{{$item_subchildname->menu_url??''}}">{{$item_subchildname->subchildname??''}}</a>
                        @endforeach
                    </div>
                     </div>
                    @endforeach
               
            </div>
        </div>
    </div>

@else


    @php

    $subchild_cat_menus=DB::table('menus')->select('menu_name as subchildname','id as subchildid','menu_url as menu_url')
    ->where('parent_id',$item_parent->parentmenuid)
    ->where('child_id',0)
    ->where('is_active', "Yes")
    ->orderBy('menu_sorting', 'ASC')   
    ->get();
    @endphp



    @if($subchild_cat_menus->count()>0 && $item_parent->mapping_sub_cat=="no" )
    <div class="dropdown-menu navitem-submenu" aria-labelledby="navbarDropdownMenuLink">
    @foreach($subchild_cat_menus as $key => $item_subchildname)
    <a class="dropdown-item" href="{{$item_subchildname->menu_url??''}}">{{$item_subchildname->subchildname??''}}</a> 
    @endforeach  
    </div>
    @endif
   
   
   


@endif



</li>
@endforeach



                
               






                
              
                  
                </ul>
                <div class="desktop-header-login-div">
                    <ul class="navbar-nav navbar-custom ml-auto">
			
			
			@if (Auth::check()) 
               <li class="nav-item dropdown">
                  <a href="#" class="nav-link dropdown-toggle arrow-right" data-toggle="dropdown">My Dashboard</a>
                  <div class="dropdown-menu dropdown-menu-right dropdown-menu-shadow" role="menu">
                     <div class="dropdown-menu-wrapper p-3">
                        <h4 class="p-0 mb-2">{{ucwords(auth()->user()->firstname)??''}}   {{ucwords(auth()->user()->lastname??'')}}</h4>
                        <p class="text-gray small">Access account & manage your orders.</p>
                        <ul class="list-inline mt-0 mt-md-3 mb-0 scrollEnable">
                           <li class="list-inline-item">
                              <a href="{{ route('customer.myaccount')}}" class="btn btn-sm btn-brand m-0">My Orders</span></a>
                           </li>
                           <li class="list-inline-item">
                              <a href="{{ route('register.logout')}}" class="btn btn-sm btn-brand m-0">Logout</a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </li>
			   
			   @else
				   
			                  <li class="nav-item dropdown">
                  <a href="#" class="nav-link dropdown-toggle arrow-right" data-toggle="dropdown">Login</a>
                  <div class="dropdown-menu dropdown-menu-right dropdown-menu-shadow" role="menu">
                     <div class="dropdown-menu-wrapper p-3">
                        <h4 class="p-0 mb-2">Your Account</h4>
                        <p class="text-gray small">Access account & manage your orders.</p>
                        <ul class="list-inline mt-0 mt-md-3 mb-0 scrollEnable">
                           <li class="list-inline-item">
                              <a href="{{ URL('registration')}}" class="btn btn-sm btn-brand m-0">Sign Up</span></a>
                           </li>
                           <li class="list-inline-item">
                              <a href="{{ route('customer.signin')}}" class="btn btn-sm btn-default default-gray m-0">Login</a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </li>
				   
			   @endif
			   
			   
               <li class="nav-item">
                  <a href="{{url('help')}}" class="nav-link">Support</a>
               </li>
               <li class="nav-item align-items-center d-none d-lg-flex d-xl-flex">
                  <form class="navbar-form" role="search" action="{{ route('products.headersearch') }}" method="GET">
                     <div class="form-group has-search m-0">
                        <span class="fa fa-search form-control-feedback"></span>
                        <input name="q" type="search" class="form-control" placeholder="Search">
                     </div>
                  </form>
               </li>
               <li class="nav-item d-none d-lg-flex d-xl-block ml-2">
                  <span class="nav-link">
                  <a href="{{ URL('/mywishlist')}}" class="cart-icon"><i class="fas fa-heart"></i>  
                
				  @if(isset($wishlistsCount) && $wishlistsCount>0)
			<span class="cart-count" id="nav_no_cart_items">
			{{$wishlistsCount??''}}
			</span>
			@else
			@endif
		  </a>
				  
				  
                  </span>
               </li>
               <li class="nav-item d-none d-lg-flex d-xl-block">
                  <span class="nav-link">
                  <a href="{{ URL('/cart')}}" class="cart-icon"><i class="fas fa-shopping-cart"></i>
                  @if(isset($cartCount) && $cartCount>0)
                  <span class="cart-count" id="nav_no_cart_items">
                  {{$cartCount??''}}
                  </span>
                  @else
                  @endif
                  </a>      
                  </span>
               </li>
            </ul>
                </div>




              </div>
      </nav>



            
         </div>
      </nav>
   </div>
</header>