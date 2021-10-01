<div class="navbar-default sidebar" role="navigation">
  <div class="sidebar-nav navbar-collapse">
    <ul class="nav" id="side-menu">
      <li class="sidebar-search">
        <div class="input-group custom-search-form">
          <!--<input type="text" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
             <button class="btn btn-primary" type="button">
              <i class="fa fa-search"></i>
            </button> -->
            <?= $this->session->userdata('nama') ?>
          </span>
        </div>
        <!-- /input-group -->
      </li>
      <li>
        <a href="<?= base_url('dashboard') ?>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
      </li>
      <!-- <li>
        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <li>
            <a href="flot.html">Flot Charts</a>
          </li>
          <li>
            <a href="morris.html">Morris.js Charts</a>
          </li>
        </ul>
      </li> -->
      <!-- /.nav-second-level -->
      <li>
        <a href="<?= base_url('klasifikasi') ?>"><i class="fa fa-list fa-fw"></i> Klasifikasi</a>
      </li>
      <li>
        <a href="<?= base_url('surat_masuk') ?>"><i class="fa  fa-envelope fa-fw"></i> Surat Masuk</a>
      </li>
      <li>
        <a href="<?= base_url('surat_keluar') ?>"><i class="fa  fa-envelope-o fa-fw"></i> Surat Keluar</a>
      </li>
      <li>
        <a href="<?= base_url('instansi') ?>"><i class="fa fa-institution fa-fw"></i> Instansi</a>
      </li>
      <li>
        <a href="<?= base_url('pegawai') ?>"><i class="fa fa-user fa-fw"></i> Pegawai</a>
      </li>
      <li>
        <a href="#"><i class="fa fa-book fa-fw"></i>Laporan<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <li>
            <a href="<?= base_url('laporan/surat_masuk') ?>">Surat Masuk</a>
          </li>
          <li>
            <a href="<?= base_url('laporan/surat_masuk') ?>">Surat Keluar</a>
          </li>
          <li>
            <a href="<?= base_url('laporan/pegawai') ?>">pegawai</a>
          </li>



        </ul>
        <!-- /.nav-second-level -->
      </li>

    </ul>
  </div>
  <!-- /.sidebar-collapse -->
</div>



<!-- /.navbar-static-side -->
</nav>