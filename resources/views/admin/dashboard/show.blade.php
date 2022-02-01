@extends('admin.template_v1')
@section('content')
<div class="paddingleftright pt-2 pb-5" >
<h4>{{$page->name??''}}</h4>

<div class="paddingleftright">
             
              </div>

              <section class="stats-section">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-sm-12 text-center">
                      <a href="#"><div class="inline stat-card">
                        <h3></h3>
                        <p></p>
                      </div></a>
                       <a href="#"><div class="inline stat-card">
                        <h3></h3>
                        <p></p>
						</div>
					  </a>
					  
		
					  
                      <a href="#"><div class="inline stat-card">
                        <h3></h3>
                        <p></p>
                      </div></a>
                    </div>
                  </div> <!-- ./row -->
                </div>
              </section>

              <section class="stats-section analytics-section">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-sm-12 text-center">                    
					  <a href="#" class="inline stat-card">
                        <h3 class="mb-0"><span class="far fa-list-alt"></span> View Leads</h3>
                      </a>
                     
                      <a href="#" class="inline stat-card">
                        <h3 class="mb-0"><span class="fas fa-signal"></span> Leads Analytics</h3>
                      </a>
					  
                     
                    </div>
                  </div>
                </div>
              </section>
 

</div>
@endsection