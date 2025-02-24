
<div class="container-scroller">

<?php include "navbar.php"; ?>

<div class="container-fluid page-body-wrapper">

<?php include "sidenavbar.php"; ?>

<div class="main-panel">
<div class="content-wrapper">
  <h3 class="text-center fs-4 text-uppercase mb-3">Welcome to Khanjee_canada cPanel!</h3>  
<div class="page-header">
<h3 class="page-title">
  Khanjee Menu
</h3>

</div>
<div class="card">
<div class="card-body">

<button type="submit" class="btn btn-dark mb-3" data-bs-toggle="modal" data-bs-target="#add_category">Add New Menu</button>

<div class="row">
<div class="col-12">
<div class="table-responsive">
<table id="order-listing" class="table">
<thead class="text-center">
  <tr>
      <th>ID #</th>
      <th>Name</th>
      <th>Price</th>
      <th>Description</th>
      <th>Image</th>
      <th>Uploaded Date</th>
      <th>Make Favourites</th>
      <th>Actions</th>
  </tr>
</thead>

<?php
include "../connection.php";
$fetchmenu = mysqli_query($connect, 'SELECT * FROM menu');

while ($data = mysqli_fetch_Assoc($fetchmenu)) {
?>
<tbody class="text-center">
<tr>
  <td><?php echo $data['ID']; ?></td>
  <td><?php echo $data['M_Name']; ?></td>
  <td><?php echo $data['M_Price']; ?></td>
  <td><?php echo $data['M_Desc']; ?></td>
  <td><?php echo $data['M_Image']; ?></td>
  <td><?php echo $data['Date']; ?></td>
  <td>
    <a class="btn btn-success btn-sm" href="../coding.php?insert_to_favorite=<?php echo $data['ID']; ?>&name=<?php echo $data['M_Name']; ?>&price=<?php echo $data['M_Price']; ?>&desc=<?php echo $data['M_Desc']; ?>&image=<?php echo $data['M_Image']; ?>">Favoritize</a>
  </td>
  <td>
    <a class="btn btn-dark btn-sm" href="../coding.php?update_menu=<?php echo $data['ID']; ?>">Update</a>
    <a class="btn btn-outline-danger btn-sm" href="../coding.php?delete_menu=<?php echo $data['ID']; ?>">Delete</a>
  </td>
</tr>
</tbody>

<?php } ?>

</table>
</div>
</div>
</div>

</div>
</div>
</div>
<!-- content-wrapper ends -->

<?php include "footer.php"; ?>
      
</div>
<!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->

<!-- Department Modal -->
<div class="modal fade" id="add_category" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
<form action="../coding.php" method="POST" enctype="multipart/form-data">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="exampleModalLabel">Add New HomePage Men</h5>
<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>

<div class="modal-body">

<div class="input-group mb-3">
<input type="text" class="form-control" name="mname" placeholder="Menu Name" required>
</div>

<div class="input-group mb-3">
<input type="number" class="form-control" name="mprice" placeholder="Menu Price" required>
</div>


<div class="input-group mb-3">
<input type="text" class="form-control" name="mdesc" placeholder="Menu Description" required>
</div>

<div class="">
<input class="form-control form-control-sm" id="formFileSm" type="file" name="m_upload">
</div>

</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
<button type="submit" class="btn btn-dark" name="add_menu">Save changes</button>
</div>
</div>
</form>
</div>
</div>