


		<!-- Sidebar -->
		<nav id="sidebar">
		<div class="sidebar-header">
		@php
		$theme_options_data=DB::table('themeoptions')->get()->first();
		@endphp
		<img src="{{URL::to('assets/uploads/'.$theme_options_data->header_logo??'')}}" class="img-fluid">
		</div>

		<ul class="list-unstyled components sidebar-accordions">
		<li class="{{ (request()->is('admin/dashboard')) ? 'active' : '' }}"><a href="{{url('admin/dashboard')}}">Dashboard</a></li>
		<div id="accordion">
                          
                          
                          
                         
                          
                          
						  
						  
						   <div class="card">
                            <div class="card-header" id="headingSeven">
                              <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                  Pages
                                </button>
                              </h5>
                            </div>
                            <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion" style="">
                              <div class="card-body">
                                  <ul class="list-unstyled" id="pageSubmenu">
                                      <li class="{{ (request()->is('admin/banners') || request()->is('admin/banners/*')) ? 'active' : '' }}">
                                          <a href="{{url('admin/banners')}}">Banners</a>
                                      </li>
                                      <li class="{{ (request()->is('admin/testimonials') || request()->is('admin/testimonials/*')) ? 'active' : '' }}">
                                          <a href="{{url('admin/testimonials')}}">Testimonials</a>
                                      </li>
                                      <li class="{{ (request()->is('admin/pages') || request()->is('admin/pages/*')) ? 'active' : '' }}">
                                          <a href="{{url('admin/pages')}}">Pages</a>
                                      </li>
                                   
                                     
                                    
                                  </ul>
                              </div>
                            </div>
                          </div>
						  
						  
						   <div class="card">
                            <div class="card-header" id="headingThree">
                              <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                  Customers
                                </button>
                              </h5>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion" style="">
                              <div class="card-body">
                                  <ul class="list-unstyled" id="cusSubmenu">
                                      <li class="{{ (request()->is('admin/customers') || (request()->is('admin/customers/*'))) ? 'active' : '' }}" >
                                          <a href="{{url('admin/customers')}}">View All</a>
                                      </li>                               
                          
                                  </ul>
                              </div>
                            </div>
                          </div>
						  
						  
                          <div class="card">
                            <div class="card-header" id="headingFive">
                              <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                  Setting
                                </button>
                              </h5>
                            </div>
                            <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion" style="">
                              <div class="card-body">
                                  <ul class="list-unstyled" id="masterSubmenu">
                                 
                                      
                                      <li>
                                          <a href="{{url('admin/underconstruction')}}">Countries</a>
                                      </li>
                                      <li>
                                          <a href="{{url('admin/underconstruction')}}">States</a>
                                      </li>
                                      <li>
                                          <a href="{{url('admin/underconstruction')}}">Cities</a>
                                      </li>
                                     
                                  </ul>
                              </div>
                            </div>
                          </div>
                          
                          
                         
                          
                          <div class="card">
                            <div class="card-header" id="headingEight">
                              <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                 Configuration
                                </button>
                              </h5>
                            </div>
                            <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion" style="">
                              <div class="card-body">
                                  <ul class="list-unstyled" id="settingsSubmenu">
                                      <li class="{{ (request()->is('admin/menu') || request()->is('admin/menu/*')) ? 'active' : '' }}">
                                          <a href="{{url('admin/menu')}}">Menus</a>
                                      </li>
                                      <li class="{{ (request()->is('admin/theme_options') || request()->is('admin/theme_options/*')) ? 'active' : '' }}">
                                          <a href="{{url('admin/theme_options')}}">Theme Options</a>
                                      </li>
                                  
                                      <li class="{{ (request()->is('admin/gtm_tracking') || request()->is('admin/gtm_tracking/*')) ? 'active' : '' }}">
                                          <a href="{{url('admin/gtm_tracking')}}">Conversion Tracking</a>
                                      </li>
                                    
                                  </ul>
                              </div>
                            </div>
                          </div>
						  
						  <li class="{{ (request()->is('admin/users') || request()->is('admin/user/*')) ? 'active' : '' }}"><a href="{{url('admin/users')}}">Admin Users</a></li>
						  
						  
						  
                          
                  
                          
                          <div class="card">
                            <div class="card-header" id="headingTen">
                              <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                 Leads
                                </button>
                              </h5>
                            </div>
                            <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion" style="">
                              <div class="card-body">
                                  <ul class="list-unstyled" id="leadsmubmenu">
                                  
                                      <li class="{{ (request()->is('admin/contacts')) ? 'active' : '' }}">
                                          <a href="{{url('admin/contacts')}}">Contacts</a>
                                      </li>
                                      <li class="{{ (request()->is('admin/newsletters')) ? 'active' : '' }}">
                                          <a href="{{url('admin/newsletters')}}">Newsletter</a>
                                      </li>
                                  </ul>
                              </div>
                            </div>
                          </div>                          
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="{{route('admin.logout')}}">Logout</a></li>
                          
                        </div>
              </ul>

          </nav>