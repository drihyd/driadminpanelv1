@php
$theme_options_data=DB::table('themeoptions')->get()->first();
@endphp
<footer class="bg-bright pt-3 pb-3 pt-lg-5 pb-xl-5 hidden-print">
   <div class="container">
      <div class="row">
         <div class="col-lg-8 col-xl-8">
            <div class="row" id="listItems">
               <div class="footer-wrapper">
                  <ul class="footer-list">
                     <h5><strong>Know your Jewellery</strong></h5>
                     <li ><a href="{{url('cut')}}"><strong>Cut</strong></a></li>
                     <li ><a  href="{{url('gemstones')}}"><strong>Gemstones</strong></a></li>
                     <li ><a  href="{{url('color')}}"><strong>Color</strong></a></li>
                     <li ><a  href="{{url('clarity')}}"><strong>Clarity</strong></a></li>
                     <li ><a  href="{{url('diamond-guide')}}"><strong>Diamond Guide</strong></a></li>
                  </ul>
               </div>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="footer-wrapper">
                  <ul class="footer-list">
                     <h5><strong>Policies</strong></h5>
                     <li ><a  href="{{url('terms-and-conditions')}}"><strong>General Terms</strong></a></li>
                    
                     <li ><a  href="{{url('refund-policy')}}"><strong>Refund Policy</strong></a></li>
                     
                     <li ><a  href="{{url('exchange-and-buyback-policy')}}"><strong>Exchange & Buyback</strong></a></li>
                     
                     <li ><a  href="{{url('cancellation-policy')}}"><strong>Cancellation Policy</strong></a></li>
                    
                     <li ><a  href="{{url('shipping-and-delivery-policy')}}"><strong>Shipping Policy</strong></a></li>
                     
                     <li ><a  href="{{url('privacy-policy')}}"><strong>Privacy Policy</strong></a></li>
                     
                  </ul>
               </div>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="footer-wrapper">
                  <ul class="footer-list">
                     <h5><strong>Jewellery by Nikitha</strong></h5>
                     <li ><a  href="{{url('about')}}"><strong>About Us</strong></a></li>
                    
                     <li ><a target="_new" href="https://igi.org"><strong>Verify Your Certificate</strong></a></li>
                     
                     <li ><a  href="{{url('contact-us')}}"><strong>Contact Us</strong></a></li>
                     
                  </ul>
               </div>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
         </div>
         <div class="col-md-4 col-lg-3 col-xl-3 align-self-center">
            <div class="footer-wrapper">
               <ul class="footer-list text-left text-lg-right text-xl-right">
                  <li class="nav-item">
                     <form  action="#" method="post" data-parsley-validate id="newslettersform">
                        @csrf
                        <div class="input-group mb-3">
                           <input type="email" class="form-control" name="email" id="email" placeholder="Email ID" aria-label="Your Email" data-parsley-type="email" aria-describedby="basic-addon2" required="required">
                           <div class="input-group-append">
                              <button type="button" class="input-group-text btn btn-accent border-0 m-0 newslettersubmit" id="basic-addon2">Subscribe</button>
                              <!-- <span class="input-group-text btn btn-accent border-0 m-0" id="basic-addon2">Subscribe</span> -->
                           </div>
                        </div>
                     </form>
                  </li>
                  <li class="nav-item mb-0">
                     <ul class="list-inline">
                        <li class="list-inline-item"><a  alt="facebook" title="facebook" href="{{$theme_options_data->facebook_url??''}}" target="_new"><img src="{{ URL::to('assets/img/facebook1.png')}}" alt=""></a></li>
                        <li class="list-inline-item"><a  alt="instagram" title="instagram" href="{{$theme_options_data->instagram_url??''}}" target="_new"><img src="{{ URL::to('assets/img/instagram1.png')}}" alt=""></a></li>
                        <li class="list-inline-item"><a  alt="youtube" title="youtube" href="{{$theme_options_data->youtube_url??''}}" target="_new"><img src="{{ URL::to('assets/img/youtube1.png')}}" alt="" width="125%"></a></li>
                        <li class="list-inline-item"><a  alt="Pinterest" title="Pinterest" href="{{$theme_options_data->pinterest_url??''}}" target="_new"><img src="{{ URL::to('assets/img/piterest.png')}}" alt="" width="21"></a></li>
                     </ul>
                  </li>
                  <li class="nav-item"><span>{{$theme_options_data->copyright??''}}</span></li>
               </ul>
            </div>
         </div>
      </div>
   </div>
</footer>

<div class="fixedfloating hidden-print">
<a href="https://api.whatsapp.com/send?phone={{env('WHATSAPP_NB')}}" class="floatwhatsapp" target="_blank">
<i class="fab fa-whatsapp my-float"></i></a>
</div>