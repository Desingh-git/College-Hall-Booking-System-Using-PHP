
  <?php $page = $_SERVER['QUERY_STRING'] ? $_SERVER['QUERY_STRING'] : 'dashboard'; ?>
  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link <?php echo ($page == 'dashboard') ? '' : 'collapsed'; ?>" href="index.php?dashboard">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link <?php echo ($page == 'book') ? '' : 'collapsed'; ?>" href="index.php?book">
          <i class="bi bi-layout-text-window-reverse"></i>
          <span>Booking</span>
        </a>
      </li><!-- End Booking Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="./../logout.php">
          <i class="bi bi-box-arrow-right"></i>
          <span>Logout</span>
        </a>
      </li><!-- End Register Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->