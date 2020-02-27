<%-- 
    Document   : tampilan1
    Created on : Feb 4, 2020, 1:00:37 PM
    Author     : Aku
--%>

<%@page import="javax.servlet.jsp.jstl.sql.Result"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Projek 2 Pemanasan</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
        color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
	.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {        
		padding-bottom: 15px;
		background: #435d7d;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
	.table-title .btn-group {
		float: right;
	}
	.table-title .btn {
		color: #fff;
		float: right;
		font-size: 13px;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
    }
	table.table tr th:first-child {
		width: 60px;
	}
	table.table tr th:last-child {
		width: 100px;
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
		outline: none !important;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    
	/* Custom checkbox */
	.custom-checkbox {
		position: relative;
	}
	.custom-checkbox input[type="checkbox"] {    
		opacity: 0;
		position: absolute;
		margin: 5px 0 0 3px;
		z-index: 9;
	}
	.custom-checkbox label:before{
		width: 18px;
		height: 18px;
	}
	.custom-checkbox label:before {
		content: '';
		margin-right: 10px;
		display: inline-block;
		vertical-align: text-top;
		background: white;
		border: 1px solid #bbb;
		border-radius: 2px;
		box-sizing: border-box;
		z-index: 2;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		content: '';
		position: absolute;
		left: 6px;
		top: 3px;
		width: 6px;
		height: 11px;
		border: solid #000;
		border-width: 0 3px 3px 0;
		transform: inherit;
		z-index: 3;
		transform: rotateZ(45deg);
	}
	.custom-checkbox input[type="checkbox"]:checked + label:before {
		border-color: #03A9F4;
		background: #03A9F4;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		border-color: #fff;
	}
	.custom-checkbox input[type="checkbox"]:disabled + label:before {
		color: #b8b8b8;
		cursor: auto;
		box-shadow: none;
		background: #ddd;
	}
	/* Modal styles */
	.modal .modal-dialog {
		max-width: 400px;
	}
	.modal .modal-header, .modal .modal-body, .modal .modal-footer {
		padding: 20px 30px;
	}
	.modal .modal-content {
		border-radius: 3px;
	}
	.modal .modal-footer {
		background: #ecf0f1;
		border-radius: 0 0 3px 3px;
	}
    .modal .modal-title {
        display: inline-block;
    }
	.modal .form-control {
		border-radius: 2px;
		box-shadow: none;
		border-color: #dddddd;
	}
	.modal textarea.form-control {
		resize: vertical;
	}
	.modal .btn {
		border-radius: 2px;
		min-width: 100px;
	}	
	.modal form label {
		font-weight: normal;
	}	
</style>
<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
<script>
function validasi(form){
  if (form.nim.value == ""){
    alert("No Induk Mahasiswa tidak boleh kosong!");
    form.nim.focus();
    return (false);
  }else if(form.nama.value.length < 3){
    alert("Nama minimal 3 huruf!");
    form.nama.focus();
    return (false);
  }pola_nama=/^[a-zA-Z ]+$/;
    if (!pola_nama.test(form.nama.value)){
    alert ('Nama harus huruf!');
    form.nama.focus();
    return false;    
  }else if(form.nama.value == ""){
    alert("Nama tidak boleh kosong!");
    form.nama.focus();
    return(false);
  }else if (form.nim.value.length < 10){
    alert("No induk minimal 10 digit!");
    form.nim.focus();
    return (false);
  }else if(form.nim.value.length > 10){
    alert("No induk lebih dari 10!");
    form.nim.focus();
    return(false);
  }else if (form.jk.value == ""){
   alert("Pilih jenis kelamin!");
   form.jk.focus();
   return (false);
  }else if (form.alamat.value == ""){
   alert("Masukkan Alamat!");
   form.alamat.focus();
   return (false);
  }if (form.agama.value =="-Pilih Agama-"){
    alert("Pilih Agama");
    return (false);
  }var x = (form.nim.value);
   var status = true;
   var list = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
   for (i=0; i<=x.length-1; i++)
   {
   if (x[i] in list) cek = true;
   else cek = false;
   status = status && cek;
   }
   if (status == false)
   {
   alert("Nim harus di isi dengan angka!");
   form.nim.focus();
   return false;
   }pola_email=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!pola_email.test(form.email.value)){
    alert ('Penulisan Email salah');
    form.email.focus();
    return false;
  }
  if(form.p1 && form.p2 && form.p3.value == ""){
      alert ('Peminatan Tidak Boleh Kosong!');
      return false;
  }
   return (true);
  }

</script>
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
			<h2>Daftar <b>Calas</b></h2>
                    </div>
			<div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Tambah Calas</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
                        </div>
                </div>
            </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Nim</th>
                            <th>Nama</th>
                            <th>Jenis Kelamin</th>
                            <th>Peminatan</th>
                            <th>Alamat</th>
                            <th>Agama</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                        <tbody>
                            <%
                                        try{
                                            koneksi konek=new koneksi();
                                            Connection conn=konek.bukaKoneksi();
                                            Statement st=conn.createStatement();
                                            String sql="SELECT * FROM `calas19`";
                                            ResultSet variabel =st.executeQuery(sql);
                                        
                                            while (variabel.next()){
                                            %>
                            <tr>
                                    <%@page import="jdbc.koneksi"%>
                                    <%@page import="java.sql.*" %>
                                    <%
                                            out.print("<td>"+variabel.getString("NIM")+"</td>");
                                            String nim = variabel.getString("NIM");
                                            out.print("<td>"+variabel.getString("NAMA")+"</td>"); 
                                            out.print("<td>"+variabel.getString("JK")+"</td>");
                                            out.print("<td>"+variabel.getString("PEMINATAN")+"</td>");
                                            out.print("<td>"+variabel.getString("ALAMAT")+"</td>");
                                            out.print("<td>"+variabel.getString("AGAMA")+"</td>");
                                            out.print("<td>"+variabel.getString("EMAIL")+"</td>");
                                       %>
                                       <td><a href="#editEmployeeModal<%= variabel.getString("NIM") %>" class="edit" name="cmdedit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="#deleteEmployeeModal<%= variabel.getString("NIM") %>" class="delete" name="cmddelete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
                                    <div id="editEmployeeModal<%= variabel.getString("NIM") %>" class="modal fade">
                                        <!--String nim = request.-->
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form method="post" action="prosessave.jsp" onsubmit="return validasi(this)">
                                                    <div class="modal-header">						
                                                        <h4 class="modal-title">Ubah Data</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    </div>
                                                    <div class="modal-body">					
                                                    <div class="form-group">
                                                        <label>Nim</label>
                                                        <br><font color="red">*wajib diisi</font></br><input type="number" value="<%= variabel.getString("NIM") %>" name="nim" value="NIM" class="form-control" placeholder="Masukkan Nim" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Nama</label>
                                                        <input type="text" name="nama" class="form-control" value="<%= variabel.getString("NAMA") %>" placeholder="Masukkan Nama" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Jenis Kelamin</label>
                                                            <br><input type="radio" name="jk" value="L" required>Laki-laki
                                                                <input type="radio" name="jk" value="P" required>Perempuan</br>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Peminatan</label>
                                                            <br><input type="checkbox" name="p1" value="Programming" >Programming
                                                                <input type="checkbox" name="p2" value="Networking">Networking
                                                                <input type="checkbox" name="p3" value="Accounting">Accounting </br>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Alamat</label>
                                                        <br><textarea name="alamat" class="form-control" placeholder="Masukkan Alamat" required><%= variabel.getString("ALAMAT") %></textarea></br>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Agama</label>
                                                            <select name="agama" class="form-control">
                                                                <option>-Pilih Agama-</option>
                                                                <option value="Islam" >Islam</option>
                                                                <option value="Protestan ">Protestan</option>
                                                                <option value="Katolik">Katolik</option>
                                                                <option value="Hindu">Hindu</option>
                                                                <option value="Budha">Budha</option>
                                                            </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>E-mail</label>
                                                        <input type="text" name="email" class="form-control" value="<%=variabel.getString("EMAIL") %>" placeholder="Masukkan Email" required>
                                                    </div>
                                                    </div>
                                                        <div class="modal-footer">
                                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                            <input type="submit" name="cmdedit" class="btn btn-info" value="Save">
                                                        </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                        
                                    <!-- Delete Modal HTML -->
                                    <div id="deleteEmployeeModal<%= variabel.getString("NIM") %>" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form action="prosesdelete.jsp" method="post">
                                                    <div class="modal-header">						
                                                        <h4 class="modal-title">Delete Employee</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    </div>
                                                    <div class="modal-body">					
                                                        <p>Are you sure you want to delete these Records?</p>
                                                        <p class="text-warning"><small>This action cannot be undone.</small></p>
                                                    </div>
                                                    <input type="hidden" value="<%= variabel.getString("NIM") %>" name="nim" value="NIM" class="form-control" >
                                                    
                                                    <div class="modal-footer">
                                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                        <input type="submit" name="cmddelete" class="btn btn-danger" value="Delete">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                            </tr>
                            <%
                                             }
                                             conn.close();
                    
                                             }
                                             catch(Exception e)
                                             {
                                                out.print(e);
                                             }
                                        %> 
                        </tbody>
                </table>
        </div>
    </div>
	<!-- Edit Modal HTML -->
	<div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
		<div class="modal-content">
                    <form method="post" action="prosesadd.jsp" onsubmit="return validasi(this)">
                        <div class="modal-header">						
                            <h4 class="modal-title">Tambah Calas</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Nim</label>
                                    <br><font color="red">*wajib diisi</font></br><input type="number" name="nim" class="form-control" placeholder="Masukkan Nim" required>
                            </div>
                            <div class="form-group">
                                <label>Nama</label>
                                    <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama" required>
                            </div>
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                    <br><input type="radio" name="jk" value="L" required>Laki-laki
                                        <input type="radio" name="jk" value="P" required>Perempuan</br>
                            </div>
                            <div class="form-group">
                                <label>Peminatan</label>
                                    <br><input type="checkbox" name="p1" value="Programming" >Programming
                                        <input type="checkbox" name="p2" value="Networking">Networking
                                        <input type="checkbox" name="p3" value="Accounting">Accounting </br>
                            </div>
                            <div class="form-group">
                                <label>Alamat</label>
                                    <br><textarea name="alamat" class="form-control" placeholder="Masukkan Alamat" required></textarea></br>
                            </div>
                                <div class="form-group">
                                    <label>Agama</label>
                                    <select name="agama" class="form-control"> 
                                        <option>-Pilih Agama-</option>
                                        <option value="Islam">Islam</option>
                                        <option value="Protestan">Protestan</option>
                                        <option value="Katolik">Katolik</option>
                                        <option value="Hindu">Hindu</option>
                                        <option value="Budha">Budha</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>E-mail</label>
                                        <input type="text" name="email" class="form-control" placeholder="Masukkan Email" required>
                                </div>
                        </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="cmdsimpan" class="btn btn-success" value="Add">
                            </div>
                    </form>
                </div>
            </div>
	</div>
<!--	 Delete Modal HTML 
	<div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
		<div class="modal-content">
                    <form action="prosesdelete.jsp" method="post">
			<div class="modal-header">						
                            <h4 class="modal-title">Delete Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
			<div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" name="cmddelete" class="btn btn-danger" value="Delete">
			</div>
                    </form>
		</div>
            </div>
	</div>-->
</body>
</html>
