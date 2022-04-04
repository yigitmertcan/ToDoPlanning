<!DOCTYPE html>
<html lang="en">
@include('main/header')
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-left: auto;" >
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Providers</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Providers</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><a class="btn btn-outline-success" href="{{ route('reload') }}">Reload Provides</a> </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>Developer</th>
                    <th>ID</th>
                    <th>Level</th>
                    <th>Estimated Duration</th>
                    <th>Week</th>
                  </tr>
                  </thead>
                  <tbody>
                      @foreach($lists as $k => $list)
                      @foreach($list as  $work)
                  <tr>
                    <td>Developer {{ $k }}</td>
                    <td>{{ $work['name'] }}</td>
                    <td>{{ $work['level'] }}</td>
                    <td>{{ $work['est'] }}</td>
                    <td>{{ $work['week'] }}</td>
                  </tr>
                   @endforeach
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>ID</th>
                    <th>Level</th>
                    <th>Estimated Duration</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <center>İş minimum {{$total}} haftada bitecektir.</center>
              <br>
              <br>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      Mertcan Yiğit
  </footer>

</div>
<!-- ./wrapper -->

@include('main/footer')
</body>
</html>
