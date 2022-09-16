@php
    function checkRouteActive($route){
        if(Route::current()->uri == $route) return 'active';
    }
@endphp
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img width="50px" src="{{url('public')}}/assets/favicon.ico" alt="" class="">
      <span class="brand-text font-weight-light"></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{url('public')}}/assets/img/saya.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">
            @if(Auth::check())
            {{request()->user()->nama}}
            @else
            Silahkan Login
            @endif
          </a>
        </div>
      </div>
      <!-- SidebarSearch Form -->

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
            <a href="{{url('beranda')}}" class="nav-link {{request()->is('beranda') ? 'active' :''}}">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Beranda
              </p>
            </a>
          </li> 
          <li class="nav-item">
            <a href="{{url('admin/artikel')}}" class="nav-link {{request()->is('admin/artikel') ? 'active' :''}}">
              <i class="nav-icon fas fa-newspaper"></i>
              <p>
                Artikel
              </p>            </a>
          </li>
          <li class="nav-item">
            <a href="{{url('admin/komentar')}}" class="nav-link {{request()->is('admin/komentar') ? 'active' :''}}">
              <i class="nav-icon fas fa-comment"></i>
              <p>
                Komentar
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{url('admin/user')}}" class="nav-link {{request()->is('admin/user') ? 'active' :''}}">
              <i class="nav-icon fas fa-user"></i>
              <p>
                User
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>