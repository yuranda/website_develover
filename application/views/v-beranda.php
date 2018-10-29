    <!-- Start HomePage Slider -->
    <section id="home">
      <!-- Carousel -->
      <div id="main-slide" class="carousel slide" data-ride="carousel">

        <!-- ini adalah Carousel inner -->
        <div class="carousel-inner">

        <?php 
        $no=1;
        foreach ($slider as $key => $values): ?>
          
         <div class="item <?php if ($no++ == '1') {  echo 'active';  } ?>">
            <img class="img-responsive" src="<?php echo base_url('assets/images/slider/'.$values->img) ?>" alt="<?php echo $values->title; ?>">
            <div class="slider-content">
              <div class="col-md-12 text-center">
                <h3 class="animated5">
                  <span><?php echo $values->title; ?></span>
                </h3>
                <h4 class="animated4">
                <br>
                  <span><?php echo $values->short_description; ?></span>
                  </br>
                </h4>
                <p class="animated5"><a href="<?php echo $values->link; ?>" class="slider btn btn-system btn-large">Selengkapnya</a></p>
              </div>
            </div>
          </div>
          <!--/ini adalah Carousel item end -->
         
        <?php endforeach ?>

        </div>
        <!-- Carousel inner end-->

        <!-- Controls -->
        <a class="left carousel-control" href="#main-slide" data-slide="prev">
          <span><i class="fa fa-angle-left"></i></span>
        </a>
        <a class="right carousel-control" href="#main-slide" data-slide="next">
          <span><i class="fa fa-angle-right"></i></span>
        </a>
      </div>
      <!-- /carousel -->
    </section>
    <!-- End HomePage Slider -->


    <!-- Start Content -->
    <div id="content">
      <div class="container">
        <!-- Divider -->
        <div class="hr5" style="margin-top:-20px; margin-bottom:35px;"></div>
        <div class="row">

          <div class="big-title text-center">
            <h1>Produk dan Layanan</h1>
            <p class="title-desc"></p>
          </div>
        <div class="row">
          <div class="col-md-3 box-service text-center">
            <div class="icon-service">
              <i class="fa fa-globe fa-5x"></i>
              <br><br>
              <h1>Web Development</h1>
            </div>
            <p>Mengembangkan aplikasi berbasis web dengan modern</p>
          </div>

          <div class="col-md-3 box-service text-center">
            <div class="icon-service">
              <i class="fa fa-mobile fa-5x"></i>
              <br><br>
              <h1>Mobile Aplications</h1>
            </div>
            <p>Mengembangkan Aplikasi berbasis mobile</p>
          </div>
          <div class="col-md-3 box-service text-center">
            <div class="icon-service">
              <i class="fa fa-cloud fa-5x"></i>
              <br><br>
              <h1>Server & Network</h1>
            </div>
            <p>Pengadaan Server komputer serta instalasi jaringan</p>
          </div>
          <div class="col-md-3 box-service text-center">
            <div class="icon-service">
              <i class="fa fa-cloud fa-5x"></i>
              <br><br>
              <h1>Server & Network</h1>
            </div>
            <p>Pengadaan Server komputer serta instalasi jaringan</p>
          </div>
        </div>
        </div>
        <!-- Divider -->
        <div class="hr5" style="margin-top:45px; margin-bottom:30px;"></div>



        <div class="row">
        <div class="col-md-12">
           <div class="big-title text-center">
            <h1>Project  <span class="accent-color">Out</span></h1>        
          </div>
            
          <div class="recent-projects">
            <h4 class="title"><span>Foto Album</span></h4>
            <div class="projects-carousel touch-carousel">

            <?php foreach ($berita_slide as $key => $value): ?>
          
              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="<?php echo base_url('berita/get/'.$value->slug); ?>">
                      <div class="thumb-overlay"></div>
                      <img alt="<?php echo $value->title; ?>" src="<?php echo base_url('assets/images/news/'.$value->foto)  ?>" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="<?php echo base_url('berita/get/'.$value->slug); ?>">
                      <h6><?php echo $value->title; ?></h6>
                      <span><small><i class="fa fa-user"></i> <?php echo $value->uploaded; ?></small></span>
                       <span><small><i class="fa fa-calendar"></i> <?php $cut = substr($value->dates, 0,10); echo date_id($cut); ?></small></span>
                    </a>
                  </div>
                  <div class="post-content">
                    <p>
                    <?php echo $value->short_descriptions; ?>
                    <a class="read-more" href="<?php echo base_url('berita/get/'.$value->slug); ?>">Selengkapnya...</a>
                    </p>
                  </div>
                </div>

              </div>
            
            <?php endforeach ?>

            </div>
          </div>
   
          </div>

        </div>

          <!-- Divider -->
        <div class="hr5" style="margin-top:65px; margin-bottom:55px;"></div>


        <div class="row">

          <div class="col-md-3">
            <!-- Start Big Heading -->
            <div class="big-title">
              <h1><span class="accent-color">Mitra</span> Kerja</h1>
              <p class="title-desc">Mitra Kerja sama kami</p>
            </div>
            <!-- End Big Heading -->
          </div>

          <div class="col-md-9">
            <!--Start Clients Carousel-->
            <div class="our-clients">
              <div class="clients-carousel custom-carousel touch-carousel navigation-4" data-appeared-items="6" data-navigation="true">

              <?php foreach ($mitra as $key => $value): ?>
                
                <div class="client-item item text-center">
                  <a href="<?php echo $value->link ?>"><img class=" itl-tooltip" data-placement="bottom" title="<?php echo $value->title ?>" width="60" src="<?php echo base_url('assets/images/mitra-kerja/'.$value->img) ?>" alt="" /></a>
                </div>
             
              <?php endforeach ?>

              </div>
            </div>
            <!--End Clients Carousel-->
          </div>

        </div>

      </div>
    </div>

    <!-- End Content -->


