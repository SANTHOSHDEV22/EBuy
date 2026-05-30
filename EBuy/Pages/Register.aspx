<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EBuy.View.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="../Assets/css/register.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link rel="icon" href="favicon.ico" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous" />
</head>
<body>
    <form id="form2" class="formModal" runat="server" novalidate="novalidate">
        <div class="container-fluid  p-4">
            <a href="Index.aspx" class="text-dark" style="text-decoration:none;">
                <i class="fa-solid fa-arrow-left fa-lg back-icon"></i>
                <span class="ml-2">Go to home</span>
            </a> 
        </div>
        <div class="container-fluid p-2">
            <div class="container-fluid py-4">
                <div class="accordion" id="userRegisterAccordion">
                    <div class="card shadow-sm">
                        <div class="card-header bg-secondary p-0"
                            id="normalRegisterHeading">
                            <button class="btn btn-block text-left text-white p-3" type="button" data-toggle="collapse" data-target="#normalRegisterCollapse" aria-expanded="true" aria-controls="normalRegisterCollapse">Normal Register Form</button>
                        </div>
                        <div id="normalRegisterCollapse" class="collapse" aria-labelledby="normalRegisterHeading" data-parent="#userRegisterAccordion">
                            <div class="card-body">
                                <div id="normalRegisterForm">
                                    <div class="row align-items-center mb-3">
                                        <div class="col-md-1">
                                            <label for="normalFname" class="mb-0 font-weight-500">
                                                Firstname:
                                            </label>
                                        </div>
                                        <div class="col-md-5">
                                            <input type="text" class="form-control" id="normalFname"
                                                placeholder="Enter firstname" />
                                            <small class="text-danger error-msg"></small>
                                        </div>
                                        <div class="col-md-1">
                                            <label for="normalLname" class="mb-0 font-weight-500">
                                                Lastname:</label>
                                        </div>
                                        <div class="col-md-5">
                                            <input type="text" class="form-control" id="normalLname" placeholder="Enter lastname" />
                                            <small class="text-danger error-msg"></small>
                                        </div>
                                    </div>
                                    <div class="row align-items-center mb-2">
                                        <div class="col-md-2">
                                            <label for="normalEmail" class="font-weight-500 mb-0">
                                                Email Address : 
                                            </label>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="email" class="form-control" id="normalEmail" placeholder="Enter email address" />
                                            <small class="text-danger error-msg"></small>
                                        </div>
                                    </div>
                                    <div class="row align-items-center mb-3">
                                        <div class="col-md-2 align-items-center">
                                            <label for="normalPhone" class="font-weight-500">
                                                Contact Number :</label>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="tel" class="form-control" minlength="1" maxlength="10" id="normalPhone" placeholder="Enter contact number" />
                                            <small class="text-danger error-msg"></small>
                                        </div>
                                    </div>
                                    <div class="row align-items-center mb-3">
                                        <div class="col-md-2">
                                            <label for="normalPassword" class="font-weight-500 mb-0">
                                                Password :</label>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control password-field" id="normalPassword" placeholder="Enter password" />
                                                <div class="input-group-append">
                                                    <span class="input-group-text togglePassword">
                                                        <i class="fa-solid fa-eye"></i>
                                                    </span>
                                                </div>
                                            </div>
                                            <small class="text-danger error-msg"></small>
                                        </div>
                                    </div>
                                    <div class="row align-items-center mb-3">
                                        <div class="col-md-2">
                                            <label for="normalConfirmPassword" class="font-weight-500 mb-5">
                                                Confirm Password :
                                            </label>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control password-field" id="normalConfirmPassword" placeholder="Confirm password" />
                                                <div class="input-group-append">
                                                    <span class="input-group-text togglePassword">
                                                        <i class="fa-solid fa-eye"></i>
                                                    </span>
                                                </div>
                                            </div>
                                            <small class="text-danger error-msg"></small>
                                            <div class="form-check mt-2">
                                                <input type="checkbox" class="form-check-input" id="showPasswordCheck" />
                                                <label class="form-check-label" for="showPasswordCheck">Show Password </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center mt-4">
                                        <button type="button" class="btn btn-success px-5" id="normalSubmitBtn">
                                            Register
                                        </button>
                                    </div>
                                    <div class="text-center mt-3">
                                        <span class="text-muted">Already have an account ?</span>
                                        <a href="#" class="font-weight-bold text-primary ml-1">Login</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow-sm mb-3">
                        <div class="card-header bg-secondary p-0"
                            id="normalTableHeading">
                            <button class="btn btn-block text-left text-white p-3" type="button" data-toggle="collapse"
                                data-target="#normalUserTableCollapse" aria-expanded="false" aria-controls="normalUserTableCollapse">
                                Normal Form User Details
                            </button>
                        </div>
                        <div id="normalUserTableCollapse" class="collapse" aria-labelledby="normalTableHeading"
                            data-parent="#userRegisterAccordion">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped"
                                        id="normalUserTable">
                                        <thead class="thead-dark text-center">
                                            <tr>
                                                <th>Firstname</th>
                                                <th>Lastname</th>
                                                <th>Email Address</th>
                                                <th>Contact Number</th>
                                                <th>Password</th>
                                                <th width="100">Edit
                                                </th>
                                                <th width="100">Delete
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="normalTableBody" class="text-center"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow-sm">
                        <div class="card-header bg-secondary d-flex justify-content-center align-items-center p-3"
                            id="modalRegisterHeading">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#registerModal">
                                <i class="fa-solid fa-plus mr-1"></i>
                                Register
                            </button>
                        </div>
                        <div class="modal fade" id="registerModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered">
                                <div class="modal-content border-0 shadow">
                                    <div class="modal-header bg-secondary text-white">
                                        <h5 class="modal-title">Register User
                                        </h5>
                                        <button type="button" class="close text-white" data-dismiss="modal">
                                            <span>&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-4">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="input-group mb-4">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Firstname
                                                        </span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalFname" placeholder="Enter firstname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-4">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Lastname
                                                        </span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalLname" placeholder="Enter lastname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text px-4">Email Address
                                                </span>
                                            </div>
                                            <input type="email" class="form-control" id="modalEmail" placeholder="Enter email address" />
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text px-3">Contact Number</span>
                                            </div>
                                            <input type="tel" class="form-control" minlength="1" maxlength="10" id="modalPhone" placeholder="Enter contact number" />
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text px-5">Password
                                                </span>
                                            </div>
                                            <input type="password" class="form-control" id="modalPassword" placeholder="Enter password" />
                                            <div class="input-group-append">
                                                <span class="input-group-text togglePassword">
                                                    <i class="fa-solid fa-eye"></i>
                                                </span>
                                            </div>
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Confirm Password
                                                </span>
                                            </div>
                                            <input type="password" class="form-control" id="modalConfirmPassword" placeholder="Confirm password" />
                                            <div class="input-group-append">
                                                <span class="input-group-text togglePassword">
                                                    <i class="fa-solid fa-eye"></i>
                                                </span>
                                            </div>
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                        <div class="form-check mt-3 mb-1">
                                            <input type="checkbox" class="form-check-input" id="modalShowPassword" />
                                            <label class="form-check-label" for="modalShowPassword">
                                                Show Password
                                            </label>
                                        </div>
                                    </div>
                                    <div class="modal-footer border-0 flex-column">
                                        <div class="d-flex justify-content-center align-items-center mb-3">
                                            <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-success px-4" id="modalSubmitBtn">
                                                Register</button>
                                        </div>
                                        <div class="text-center">
                                            <span class="text-muted">Already have an account ?</span>
                                            <a href="#" class="font-weight-bold text-success ml-1">Login</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow-sm">
                        <div class="card-header bg-secondary p-0" id="modalTableHeading">
                            <button class="btn btn-block text-left text-white p-3"
                                type="button" data-toggle="collapse" data-target="#modalUserTableCollapse"
                                aria-expanded="false" aria-controls="modalUserTableCollapse">
                                Modal Form User Details</button>
                        </div>
                        <div id="modalUserTableCollapse" class="collapse" aria-labelledby="modalTableHeading"
                            data-parent="#userRegisterAccordion">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped"
                                        id="modalUserTable">
                                        <thead class="thead-dark text-center">
                                            <tr>
                                                <th>Firstname</th>
                                                <th>Lastname</th>
                                                <th>Email Address</th>
                                                <th>Contact Number</th>
                                                <th>Password</th>
                                                <th width="120">Action
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="modalTableBody" class="text-center"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="editUserModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered">
                            <div class="modal-content border-0 shadow">
                                <div class="modal-header bg-secondary text-white">
                                    <h5 class="modal-title">Update User Details
                                    </h5>
                                    <button type="button" class="close text-white" data-dismiss="modal">
                                        <span>&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body p-4">
                                    <input type="hidden" id="editIndex" />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Firstname
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control editInput" id="editFname" placeholder="Enter firstname" />
                                                <small class="text-danger error-msg w-100 mt-1"></small>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Lastname
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control editInput" id="editLname"
                                                    placeholder="Enter lastname" />
                                                <small class="text-danger error-msg w-100 mt-1"></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Email Address
                                            </span>
                                        </div>
                                        <input type="email" class="form-control editInput" id="editEmail"
                                            placeholder="Enter email address" />
                                        <small class="text-danger error-msg w-100 mt-1"></small>
                                    </div>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Contact Number
                                            </span>
                                        </div>
                                        <input type="tel" class="form-control editInput" id="editPhone"
                                            placeholder="Enter contact number" minlength="1" maxlength="10" />
                                        <small class="text-danger error-msg w-100 mt-1"></small>
                                    </div>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Password</span>
                                        </div>
                                        <input type="password" class="form-control editInput" id="editPassword" placeholder="Enter password" />
                                        <div class="input-group-append">
                                            <button type="button" class="input-group-text togglePassword">
                                                <i class="fa-solid fa-eye"></i>
                                            </button>
                                        </div>
                                        <small class="text-danger error-msg w-100 mt-1"></small>
                                    </div>
                                </div>
                                <div class="modal-footer border-0 flex-column">
                                    <div class="d-flex justify-content-center align-items-center mb-3">
                                        <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">
                                            Close</button>
                                        <button type="button" class="btn btn-danger mr-2" id="deleteUserBtn">
                                            Delete</button>
                                        <button type="button" class="btn btn-success" id="updateUserBtn">
                                            Update</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            //declaration and global utilities
            let userListnormal = JSON.parse(localStorage.getItem("userdetailsNormal")) || [];
            let userListmodal = JSON.parse(localStorage.getItem("userdetailsModal")) || [];
            let currentEditIcon = null;
            const showerror = (message) => {
                Swal.fire({
                    icon: "error",
                    title: "Error",
                    text: message,
                });
            }
            const successmsg = (message) =>      {
                Swal.fire({
                    icon: "success",
                    title: "Thank you",
                    text: message,
                });
            }
            $("#registerModal").on("hidden.bs.modal", function () {
                $(this).find("input").val("");
                $(this).find("input").removeClass("is-valid is-invalid");
                $(this).find(".error-msg").text("");
                $("#modalPassword, #modalConfirmPassword").attr("type", "password");
                $("#modalShowPassword").prop("checked", false);

                $(this).find(".togglePassword i")
                    .removeClass("fa-eye-slash")
                    .addClass("fa-eye");
            });
            $("#normalRegisterCollapse").on("hidden.bs.collapse", function () {
                $(this).find("input").val("");
                $(this).find("input").removeClass("is-valid is-invalid");
                $(this).find(".error-msg").text("");
                $("#normalPassword, #normalConfirmPassword").attr("type", "password");
                $("#showPasswordCheck").prop("checked", false);
                $(this).find(".togglePassword i")
                    .removeClass("fa-eye-slash")
                    .addClass("fa-eye");
            });
            $('#registerModal').on('show.bs.modal', function () {
                $('#normalRegisterCollapse').collapse('hide');
                $('#normalUserTableCollapse').collapse('hide');
                $('#modalUserTableCollapse').collapse('hide');
                $('#editUserModal').modal('hide');
            });
            $('#modalUserTableCollapse').on('show.bs.collapse', function () {
                $('#normalRegisterCollapse').collapse('hide');
                $('#normalUserTableCollapse').collapse('hide');
                $('#registerModal').modal('hide');
                $('#editUserModal').modal('hide');
            });
            $('#normalRegisterCollapse').on('show.bs.collapse', function () {
                $('#normalUserTableCollapse').collapse('hide');
                $('#modalUserTableCollapse').collapse('hide');
                $('#registerModal').modal('hide');
                $('#editUserModal').modal('hide');
            });
            $('#normalUserTableCollapse').on('show.bs.collapse', function () {
                $('#normalRegisterCollapse').collapse('hide');
                $('#modalUserTableCollapse').collapse('hide');
                $('#registerModal').modal('hide');
                $('#editUserModal').modal('hide');
            });
            
        
            //normalForm validation,events
            const fnamevalidate = () => {
                let isvalid = true;
                const fnameinp = $('#normalFname');
                const fname = fnameinp.val();
                const fnameerror = fnameinp.siblings('.error-msg');
                const fnamepattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                fnameinp.removeClass("is-valid is-invalid");
                if (fname.trim() === "") {
                    fnameerror.text("First name is required!");
                    fnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(fname)) {
                    fnameerror.text("Spaces are not allowed!");
                    fnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!fnamepattern.test(fname)) {
                    fnameerror.text("Only alphabets, and apostrophe are allowed!");
                    fnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    fnameerror.text("");
                    fnameinp.addClass("is-valid");
                }
                return isvalid;
            };
            const fnamenofocus = () => {
                let fnameinp = $('#normalFname');
                let fname = fnameinp.val();
                let fnameerror = fnameinp.siblings('.error-msg');
                if (fname.trim() === "") {
                    fnameerror.text("First name is required!");
                }
            }
            $("#normalFname").on({ input: fnamevalidate, blur: fnamenofocus });
            const lnamevalidate = () => {
                let isvalid = true;
                let lnameinp = $('#normalLname');
                let lname = lnameinp.val();
                let lnameerror = lnameinp.siblings('.error-msg');
                let lnamepattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                lnameinp.removeClass("is-valid is-invalid");
                if (lname.trim() === "") {
                    lnameerror.text("Last name is required!");
                    lnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(lname)) {
                    lnameerror.text("Spaces are not allowed!");
                    lnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!lnamepattern.test(lname)) {
                    lnameerror.text("Only alphabets, and apostrophe are allowed!");
                    lnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    lnameerror.text("");
                    lnameinp.addClass("is-valid");
                }
                return isvalid;
            };
            const lnamenofocus = () => {
                let lnameinp = $('#normalLname');
                let lname = lnameinp.val();
                let lnameerror = lnameinp.siblings('.error-msg');
                if (lname.trim() === "") {
                    lnameerror.text("Last name is required!");
                }
            };
            $("#normalLname").on({ input: lnamevalidate, blur: lnamenofocus });
            const emailvalidate = () => {
                let isvalid = true;
                let emailinp = $('#normalEmail');
                let email = emailinp.val();
                let emailerror = emailinp.siblings('.error-msg');
                let emailpattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                emailinp.removeClass("is-valid is-invalid");
                if (email.trim() === "") {
                    emailerror.text("Email address is required!");
                    emailinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(email)) {
                    emailerror.text("Spaces are not allowed!");
                    emailinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!emailpattern.test(email)) {
                    emailerror.text("Please enter a valid email address!");
                    emailinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    emailerror.text("");
                    emailinp.addClass("is-valid");
                }
                return isvalid;
            };
            const emailnofocus = () => {
                let emailinp = $('#normalEmail');
                let email = emailinp.val();
                let emailerror = emailinp.siblings('.error-msg');

                if (email.trim() === "") {
                    emailerror.text("Email address is required!");
                }
            };
            $("#normalEmail").on({ input: emailvalidate, blur: emailnofocus });
            $('#normalPhone').on('keydown', function (e) {
                let key = e.key;
                let phoneerror = $(this).siblings('.error-msg');
                let allowedControls = ['Backspace', 'Delete', 'ArrowLeft', 'ArrowRight', 'Tab', 'Enter'];
                if (allowedControls.includes(key)) {
                    return;
                }
                if (!/^[0-9]$/.test(key)) {
                    e.preventDefault();
                    phoneerror.text("Only numbers are allowed!");
                    $(this).addClass("is-invalid");
                }
            });
            const phonevalidate = () => {
                let isvalid = true;
                let phoneinp = $('#normalPhone');
                let phone = phoneinp.val();
                let phoneerror = phoneinp.siblings('.error-msg');
                let phonepattern = /^[0-9]{10}$/;
                if (phone.trim() === "") {
                    phoneerror.text("Contact number is required!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid");
                    isvalid = false;
                }
                else if (!phonepattern.test(phone)) {
                    phoneerror.text("Please enter a valid 10 digit number!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    phoneerror.text("");
                    phoneinp.removeClass("is-invalid").addClass("is-valid");
                }
                return isvalid;
            };
            $('#normalPhone').on('input', function () {
                phonevalidate();
            });
            const phonenofocus = () => {
                let phoneinp = $('#normalPhone');
                let phone = phoneinp.val();
                let phoneerror = phoneinp.siblings('.error-msg');
                if (phone.trim() === "") {
                    phoneerror.text("Contact number is required!");
                    phoneinp.addClass("is-invalid");
                }
            };
            $("#normalPhone").on('blur', phonenofocus);
            const passvalidate = () => {
                let isvalid = true;
                let passinp = $('#normalPassword');
                let pass = passinp.val();
                let passerror = passinp.closest('.col-md-10').find('.error-msg');
                let passpattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/;
                passinp.removeClass("is-valid is-invalid");
                if (pass.trim() === "") {
                    passerror.text("Password is required!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(pass)) {
                    passerror.text("Spaces are not allowed!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (pass.length < 8) {
                    passerror.text("Password length must be minimum 8 characters!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!passpattern.test(pass)) {
                    passerror.text("Password must contain uppercase, lowercase, number and special character!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    passerror.text("");
                    passinp.addClass("is-valid");
                }
                return isvalid;
            };
            const passnofocus = () => {
                let passinp = $('#normalPassword');
                let pass = passinp.val();
                let passerror = passinp.closest('.col-md-10').find('.error-msg');
                if (pass.trim() === "") {
                    passerror.text("Password is required!");
                }
            };
            $("#normalPassword").on({ input: passvalidate, blur: passnofocus });
            $('#normalPassword').on('input', function () {
                let cpass = $('#normalConfirmPassword').val();
                if (cpass.trim() !== "") {
                    cpassvalidate();
                }
            });
            const cpassvalidate = () => {
                let isvalid = true;
                let cpassinp = $('#normalConfirmPassword');
                let cpass = cpassinp.val();
                let pass = $('#normalPassword').val();
                let cpasserror = cpassinp.closest('.col-md-10').find('.error-msg');
                cpasserror.removeClass("text-success").addClass("text-danger");
                cpassinp.removeClass("is-valid is-invalid");
                if (cpass.trim() === "") {
                    cpasserror.text("Confirm password is required!");
                    cpassinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(cpass)) {
                    cpasserror.text("Spaces are not allowed!");
                    cpassinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (cpass !== pass) {
                    cpasserror.text("Password doesn't match!");
                    cpassinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    cpasserror.text("Password matched");
                    cpasserror.removeClass("text-danger").addClass("text-success");
                    cpassinp.addClass("is-valid");
                }
                return isvalid;
            };
            $('#normalConfirmPassword').on('input', function () {
                cpassvalidate();
            });
            const cpassnofocus = () => {
                let cpassinp = $('#normalConfirmPassword');
                let cpass = cpassinp.val();
                let cpasserror = cpassinp.closest('.col-md-10').find('.error-msg');
                if (cpass.trim() === "") {
                    cpasserror.text("Confirm your password!");
                    cpassinp.addClass("is-invalid");
                }
            };
            $("#normalConfirmPassword").on('blur', cpassnofocus);
            $(document).on("change click", "#showPasswordCheck, .input-group .togglePassword", function (e) {
                let container = $(this).closest(".modal, body");
                let inputs = container.find(".password-field");
                let icons = container.find(".togglePassword i");
                if ($(this).is("#showPasswordCheck")) {
                    let showAll = $(this).is(":checked");
                    inputs.attr("type", showAll ? "text" : "password");
                    icons.toggleClass("fa-eye", !showAll).toggleClass("fa-eye-slash", showAll);
                    let input = $(this).closest(".input-group").find("input");
                    let icon = $(this).find("i");
                    let isPassword = input.attr("type") === "password";
                    input.attr("type", isPassword ? "text" : "password");
                    icon.toggleClass("fa-eye fa-eye-slash");
                    let allVisible = inputs.filter("[type='text']").length === inputs.length;
                    container.find("#showPasswordCheck").prop("checked", allVisible);
                }
            });
            $(document).on('click', '.toggle-password', function () {
                let input = $(this).siblings('.editInput');
                if (input.attr('type') === 'password') {
                    input.attr('type', 'text');
                    $(this).removeClass('fa-eye').addClass('fa-eye-slash');
                } else {
                    input.attr('type', 'password');
                    $(this).removeClass('fa-eye-slash').addClass('fa-eye');
                }
            });
            const formcheckres = () => {
                let validateFname = fnamevalidate();
                let validateLname = lnamevalidate();
                let validateEmail = emailvalidate();
                let validatePhone = phonevalidate();
                let validatePass = passvalidate();
                let validateCpass = cpassvalidate();

                return (validateFname && validateLname && validateEmail && validatePhone && validatePass && validateCpass);
            };
            const submitNormalForm = (event) => {
                event.preventDefault();
                let validateFname = fnamevalidate();
                let validateLname = lnamevalidate();
                let validateEmail = emailvalidate();
                let validatePhone = phonevalidate();
                let validatePass = passvalidate();
                let validateCpass = cpassvalidate();
                let validateall = (validateFname && validateLname && validateEmail && validatePhone && validatePass && validateCpass);
                if (!validateall) {
                    let firstInvalid = $(".is-invalid").first();
                    let errorMessage = firstInvalid.siblings(".error-msg").text() || firstInvalid.closest(".col-md-10").find(".error-msg").text();
                    showerror(errorMessage || "Please correct the highlighted errors.");
                }
                else {
                    let userData = {
                        fname: $("#normalFname").val().trim(),
                        lname: $("#normalLname").val().trim(),
                        email: $("#normalEmail").val().trim(),
                        phone: $("#normalPhone").val().trim(),
                        pass: $("#normalPassword").val().trim()
                    };
                    userListnormal.push(userData);
                    localStorage.setItem("userdetailsNormal", JSON.stringify(userListnormal));
                    successmsg(`Welcome, ${userData.fname} ${userData.lname}`);
                    let userTable = `
                        <tr>
                            <td class="tdata align-middle">${userData.fname}</td>
                            <td class="tdata align-middle">${userData.lname}</td>
                            <td class="tdata align-middle">${userData.email}</td>
                            <td class="tdata align-middle">${userData.phone}</td>
                            <td class="tdata align-middle">${"*".repeat(userData.pass.length)}</td>
                            <td>
                                <button type="button" class="btn btn-link updateBtn">
                                    <i class="fa-solid fa-sm fa-pencil back-icon"></i>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="btn btn-link deleteBtn">
                                    <i class="fa-solid fa-sm fa-trash back-icon"></i>
                                </button>
                            </td>
                        </tr>
                    `;
                    $("#normalTableBody").append(userTable);
                    $("#form2")[0].reset();
                    $("input").removeClass("is-valid is-invalid");
                    $(".error-msg").text("");
                }
            };
            $("#normalSubmitBtn").on("click", submitNormalForm);
            userListnormal.forEach(function (userData) {
                let userTable = `
                    <tr>
                        <td class="tdata align-middle">${userData.fname}</td>
                        <td class="tdata align-middle">${userData.lname}</td>
                        <td class="tdata align-middle">${userData.email}</td>
                        <td class="tdata align-middle">${userData.phone}</td>
                        <td class="tdata align-middle">${"*".repeat(userData.pass.length)}</td>
                        <td>
                            <button type="button" class="btn btn-link updateBtn">
                                <i class="fa-solid fa-sm fa-pencil back-icon"></i>
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-link deleteBtn">
                                <i class="fa-solid fa-sm fa-trash back-icon"></i>
                            </button>
                        </td>
                    </tr>
                `;
                $("#normalTableBody").append(userTable);
            });
            const deleteNormalUser = () => {
                $("#normalTableBody").on("click", ".deleteBtn", function () {
                    let row = $(this).closest("tr");
                    let rowIndex = row.index();
                    let fname = userListnormal[rowIndex].fname;
                    let lname = userListnormal[rowIndex].lname;
                    Swal.fire({
                        title: "Caution",
                        text: `Are you sure you want to delete ${fname} ${lname}'s record?`,
                        icon: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#3085d6",
                        cancelButtonColor: "#d33",
                        confirmButtonText: "Yes"
                    })
                        .then((result) => {
                            if (result.isConfirmed) {
                                userListnormal.splice(rowIndex, 1);
                                localStorage.setItem("userdetailsNormal", JSON.stringify(userListnormal));
                                row.remove();
                                Swal.fire({
                                    title: "Deleted!",
                                    text: `${fname} ${lname}'s data is deleted.`,
                                    icon: "success"
                                });
                            }
                        });
                });
            };
            deleteNormalUser();
            $("#normalTableBody").on("click", ".updateBtn", function () {
                let updateBtn = $(this);
                let row = updateBtn.closest("tr");
                let sym = updateBtn.find("i");
                let rIndex = row.index();
                if (sym.hasClass("fa-pencil")) {
                    let activeEdit = $("#normalTableBody").find(".fa-save");
                    if (activeEdit.length > 0) {
                        showerror("Please save your current changes!");
                        return;
                    }
                    row.find("td.tdata").each(function (index) {
                        let content = $(this).text().trim();
                        if (index === 4) {
                            content = userListnormal[rIndex].pass;
                            $(this).html(`
                                <div class="position-relative">
                                    <input type="password" class="form-control editInput pe-5" value="${content}">
                                    <i class="fas fa-eye fa-sm position-absolute toggle-password" style="top: 50%; right: 10px; transform: translateY(-50%); cursor: pointer; z-index: 10;"></i>
                                </div>
                                <small class="error-msg text-danger d-block float-left"></small>
                            `);
                        }
                        else if (index == 2) {
                            $(this).html(`
                                <input type="text" class="form-control editInput" value="${content}">
                                <small class="error-msg text-danger d-block float-left"></small>
                            `);
                        }
                        else if (index === 3) {
                            $(this).html(`
                                <input type="tel" class="form-control editInput" minlength="1" maxlength="10" value="${content}">
                                <small class="error-msg text-danger d-block float-left"></small>
                            `);
                        }
                        else {
                            $(this).html(`
                                <input type="text" class="form-control editInput" value="${content}">
                                <small class="error-msg text-danger d-block float-left"></small>
                            `);
                        }
                    });
                    sym.removeClass("fa-pencil").addClass("fa-save");
                }
                else {
                    let hasErrors = false;
                    row.find("input.editInput").each(function () {
                        let parentTd = $(this).closest("td");
                        let errorText = parentTd.find(".error-msg").text().trim();
                        if (errorText !== "" || $(this).val().trim() === "") {
                            hasErrors = true;
                        }
                    });
                    if (hasErrors) {
                        showerror("Please fill all fields correctly!");
                        return;
                    }
                    let modifiedUserDetails = [];
                    row.find("td.tdata").each(function (index) {
                        let data = $(this).find("input").val();
                        modifiedUserDetails.push(data);

                        if (index === 4) {
                            $(this).text("*".repeat(data.length));
                        } else {
                            $(this).text(data.trim());
                        }
                    });
                    userListnormal[rIndex] = {
                        fname: modifiedUserDetails[0].trim(),
                        lname: modifiedUserDetails[1].trim(),
                        email: modifiedUserDetails[2].trim(),
                        phone: modifiedUserDetails[3].trim(),
                        pass: modifiedUserDetails[4]
                    };
                    localStorage.setItem("userdetailsNormal", JSON.stringify(userListnormal));
                    sym.removeClass("fa-save").addClass("fa-pencil");
                    successmsg(`${userListnormal[rIndex].fname} ${userListnormal[rIndex].lname}'s data is updated.`);
                }
            });
            $("#normalTableBody").on("input", ".editInput", function () {
                let input = $(this);
                let row = input.closest("tr");
                let inputs = row.find("input.editInput");
                let index = inputs.index(input);
                let value = input.val();
                let errorcontent = input.closest("td").find(".error-msg");
                input.removeClass("is-valid is-invalid");
                if (index === 0) {
                    let pattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                    if (value.trim() === "") {
                        errorcontent.css("font-size", "9px").text("First name is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.css("font-size", "9px").text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.css("font-size", "9px").text("Only alphabets and ' allowed!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else if (index === 1) {
                    let pattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                    if (value.trim() === "") {
                        errorcontent.css("font-size", "9px").text("Last name is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.css("font-size", "9px").text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.css("font-size", "9px").text("Only alphabets and ' allowed!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else if (index === 2) {
                    let pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (value.trim() === "") {
                        errorcontent.css("font-size", "9px").text("Email is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.css("font-size", "9px").text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.css("font-size", "9px").text("Enter a valid email address!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else if (index === 3) {
                    input.val(value.replace(/[^0-9]/g, ''));
                    value = input.val();
                    let pattern = /^[0-9]{10}$/;
                    if (value.trim() === "") {
                        errorcontent.css("font-size", "9px").text("Contact number is required!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.css("font-size", "9px").text("Please enter a valid 10 digit number!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else {
                    let pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/;
                    if (value.trim() === "") {
                        errorcontent.css("font-size", "9px").text("Password is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.css("font-size", "9px").text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.css("font-size", "9px").text("Please enter a valid password!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
            });
            $("#normalTableBody").on("blur", ".editInput", function () {
                let input = $(this);
                let value = input.val();
                let errorcontent = input.closest("td").find(".error-msg");
                if (value.trim() === "") {
                    errorcontent.css("font-size", "9px").text("This field is required!");
                    input.removeClass("is-valid").addClass("is-invalid");
                }
            });


            //modalForm - validation,events
            const fnameModalvalidate = () => {
                let isvalid = true;
                const fnameinp = $('#modalFname');
                const fname = fnameinp.val();
                const fnameerror = fnameinp.closest('.col-md-6').find('.error-msg');
                const fnamepattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                fnameinp.removeClass("is-valid is-invalid");
                if (fname.trim() === "") {
                    fnameerror.text("First name is required!");
                    fnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(fname)) {
                    fnameerror.text("Spaces are not allowed!");
                    fnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!fnamepattern.test(fname)) {
                    fnameerror.text("Only alphabets and apostrophe are allowed!");
                    fnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    fnameerror.text("");
                    fnameinp.addClass("is-valid");
                }
                return isvalid;
            };
            const fnameModalnofocus = () => {
                let fnameinp = $('#modalFname');
                let fname = fnameinp.val();
                let fnameerror = fnameinp.closest('.col-md-6').find('.error-msg');

                if (fname.trim() === "") {
                    fnameerror.text("First name is required!");
                    fnameinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalFname").on({ input: fnameModalvalidate, blur: fnameModalnofocus });
            const lnameModalvalidate = () => {
                let isvalid = true;
                let lnameinp = $('#modalLname');
                let lname = lnameinp.val();
                let lnameerror = lnameinp.siblings('.error-msg');
                let lnamepattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                lnameinp.removeClass("is-valid is-invalid");
                if (lname.trim() === "") {
                    lnameerror.text("Last name is required!");
                    lnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(lname)) {
                    lnameerror.text("Spaces are not allowed!");
                    lnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!lnamepattern.test(lname)) {
                    lnameerror.text("Only alphabets, and apostrophe are allowed!");
                    lnameinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    lnameerror.text("");
                    lnameinp.addClass("is-valid");
                }
                return isvalid;
            };
            const lnameModalnofocus = () => {
                let lnameinp = $('#modalLname');
                let lname = lnameinp.val();
                let lnameerror = lnameinp.closest('.col-md-6').find('.error-msg');

                if (lname.trim() === "") {
                    lnameerror.text("Last name is required!");
                    lnameinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalLname").on({ input: lnameModalvalidate, blur: lnameModalnofocus });
            const emailModalvalidate = () => {
                let isvalid = true;
                let emailinp = $('#modalEmail');
                let email = emailinp.val();
                let emailerror = emailinp.closest('.modal-body').find('.error-msg').eq(2);
                let emailpattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                emailinp.removeClass("is-valid is-invalid");

                if (email.trim() === "") {
                    emailerror.text("Email address is required!");
                    emailinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(email)) {
                    emailerror.text("Spaces are not allowed!");
                    emailinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!emailpattern.test(email)) {
                    emailerror.text("Please enter a valid email address!");
                    emailinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    emailerror.text("");
                    emailinp.addClass("is-valid");
                }
                return isvalid;
            };
            const emailModalnofocus = () => {
                let emailinp = $('#modalEmail');
                let email = emailinp.val();
                let emailerror = emailinp.closest('.modal-body').find('.error-msg').eq(2);

                if (email.trim() === "") {
                    emailerror.text("Email address is required!");
                    emailinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalEmail").on({ input: emailModalvalidate, blur: emailModalnofocus });
            $('#modalPhone').on('keydown', function (e) {
                let key = e.key;
                let phoneerror = $(this).closest('.modal-body').find('.error-msg').eq(3);
                let allowedControls = ['Backspace', 'Delete', 'ArrowLeft', 'ArrowRight', 'Tab', 'Enter'];

                if (allowedControls.includes(key)) {
                    return;
                }

                if (!/^[0-9]$/.test(key)) {
                    e.preventDefault();
                    phoneerror.text("Only numbers are allowed!");
                    $(this).addClass("is-invalid");
                }
            });
            const phoneModalvalidate = () => {
                let isvalid = true;
                let phoneinp = $('#modalPhone');
                let phone = phoneinp.val();
                let phoneerror = phoneinp.closest('.modal-body').find('.error-msg').eq(3);
                let phonepattern = /^[0-9]{10}$/;

                if (phone.trim() === "") {
                    phoneerror.text("Contact number is required!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid");
                    isvalid = false;
                }
                else if (!phonepattern.test(phone)) {
                    phoneerror.text("Please enter a valid 10 digit number!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    phoneerror.text("");
                    phoneinp.removeClass("is-invalid").addClass("is-valid");
                }
                return isvalid;
            };
            $('#modalPhone').on('input', function () {
                phoneModalvalidate();
            });
            const phoneModalnofocus = () => {
                let phoneinp = $('#modalPhone');
                let phone = phoneinp.val();
                let phoneerror = phoneinp.closest('.modal-body').find('.error-msg').eq(3);
                if (phone.trim() === "") {
                    phoneerror.text("Contact number is required!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalPhone").on('blur', phoneModalnofocus);
            const passModalvalidate = () => {
                let isvalid = true;
                let passinp = $('#modalPassword');
                let pass = passinp.val();
                let passerror = passinp.closest('.modal-body').find('.error-msg').eq(4);
                let passpattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/;
                passinp.removeClass("is-valid is-invalid");
                if (pass.trim() === "") {
                    passerror.text("Password is required!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(pass)) {
                    passerror.text("Spaces are not allowed!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (pass.length < 8) {
                    passerror.text("Password length must be minimum 8 characters!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (!passpattern.test(pass)) {
                    passerror.text("Password must contain uppercase, lowercase, number and special character!");
                    passinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    passerror.text("");
                    passinp.addClass("is-valid");
                }
                return isvalid;
            };
            const passModalnofocus = () => {
                let passinp = $('#modalPassword');
                let pass = passinp.val();
                let passerror = passinp.closest('.modal-body').find('.error-msg').eq(4);

                if (pass.trim() === "") {
                    passerror.text("Password is required!");
                    passinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalPassword").on({ input: passModalvalidate, blur: passModalnofocus });
            $('#modalPassword').on('input', function () {
                let cpass = $('#modalConfirmPassword').val();
                if (cpass.trim() !== "") {
                    cpassModalvalidate();
                }
            });
            const cpassModalvalidate = () => {
                let isvalid = true;
                let cpassinp = $('#modalConfirmPassword');
                let cpass = cpassinp.val();
                let pass = $('#modalPassword').val();

                let cpasserror = cpassinp.closest('.modal-body').find('.error-msg').eq(5);

                cpasserror.removeClass("text-success").addClass("text-danger");
                cpassinp.removeClass("is-valid is-invalid");

                if (cpass.trim() === "") {
                    cpasserror.text("Confirm password is required!");
                    cpassinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (/\s/.test(cpass)) {
                    cpasserror.text("Spaces are not allowed!");
                    cpassinp.addClass("is-invalid");
                    isvalid = false;
                }
                else if (cpass !== pass) {
                    cpasserror.text("Password doesn't match!");
                    cpassinp.addClass("is-invalid");
                    isvalid = false;
                }
                else {
                    cpasserror.text("Password matched");
                    cpasserror.removeClass("text-danger").addClass("text-success");
                    cpassinp.addClass("is-valid");
                }
                return isvalid;
            };
            const cpassModalnofocus = () => {
                let cpassinp = $('#modalConfirmPassword');
                let cpass = cpassinp.val();
                let cpasserror = cpassinp.closest('.modal-body').find('.error-msg').eq(5);

                if (cpass.trim() === "") {
                    cpasserror.text("Confirm your password!");
                    cpassinp.addClass("is-invalid");
                }
            };
            $('#modalConfirmPassword').on('input', function () {
                cpassModalvalidate();
            });
            $("#modalConfirmPassword").on('blur', cpassModalnofocus);
            $(document).on("change click", "#modalShowPassword, .input-group .togglePassword", function (e) {
                let container = $(this).closest(".modal, body");
                let inputs = container.find("#modalPassword, #modalConfirmPassword");
                let icons = container.find(".togglePassword i");

                if ($(this).is("#modalShowPassword")) {
                    let showAll = $(this).is(":checked");
                    inputs.attr("type", showAll ? "text" : "password");
                    icons.toggleClass("fa-eye", !showAll).toggleClass("fa-eye-slash", showAll);
                } else {
                    let input = $(this).closest(".input-group").find("input");
                    let icon = $(this).find("i");
                    let isPassword = input.attr("type") === "password";
                    input.attr("type", isPassword ? "text" : "password");
                    icon.toggleClass("fa-eye fa-eye-slash");
                    let allVisible = inputs.filter("[type='text']").length === inputs.length;
                    container.find("#modalShowPassword").prop("checked", allVisible);
                }
            });
            const formcheckresModal = () => {
                let validateFname = fnameModalvalidate();
                let validateLname = lnameModalvalidate();
                let validateEmail = emailModalvalidate();
                let validatePhone = phoneModalvalidate();
                let validatePass = passModalvalidate();
                let validateCpass = cpassModalvalidate();

                return (validateFname && validateLname && validateEmail && validatePhone && validatePass && validateCpass);
            };
            const submitModalForm = (event) => {
                event.preventDefault();

                let validateFname = fnameModalvalidate();
                let validateLname = lnameModalvalidate();
                let validateEmail = emailModalvalidate();
                let validatePhone = phoneModalvalidate();
                let validatePass = passModalvalidate();
                let validateCpass = cpassModalvalidate();

                let validateall = (validateFname && validateLname && validateEmail && validatePhone && validatePass && validateCpass);

                if (!validateall) {
                    let firstInvalid = $("#registerModal .is-invalid").first();
                    let errorMessage = firstInvalid.closest('.col-md-6, .modal-body').find('.error-msg').text() || "Please correct the highlighted errors.";

                    showerror(errorMessage);
                }
                else {
                    let userData = {
                        fname: $("#modalFname").val().trim(),
                        lname: $("#modalLname").val().trim(),
                        email: $("#modalEmail").val().trim(),
                        phone: $("#modalPhone").val().trim(),
                        pass: $("#modalPassword").val().trim()
                    };

                    userListmodal.push(userData);
                    localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                    successmsg(`Welcome, ${userData.fname} ${userData.lname}`);

                    let userTable = `
                        <tr>
                            <td class="tdata align-middle">${userData.fname}</td>
                            <td class="tdata align-middle">${userData.lname}</td>
                            <td class="tdata align-middle">${userData.email}</td>
                            <td class="tdata align-middle">${userData.phone}</td>
                            <td class="tdata align-middle">${"*".repeat(userData.pass.length)}</td>
                            <td>
                                <button type="button" class="btn btn-link updateBtn">
                                    <i class="fa-solid fa-sm fa-pencil back-icon"></i>
                                </button>
                            </td>
                        </tr>
                    `;

                    $("#modalTableBody").append(userTable);
                    $("#registerModal").modal("hide");
                    $("#form2")[0].reset();
                    $("#registerModal input").removeClass("is-valid is-invalid");
                    $("#registerModal .error-msg").text("");
                }
            };
            $("#modalSubmitBtn").on("click", submitModalForm);
            userListmodal.forEach(function (userData, index) {
                let userTable = `
                    <tr data-index="${index}">
                        <td class="tdata align-middle">${userData.fname}</td>
                        <td class="tdata align-middle">${userData.lname}</td>
                        <td class="tdata align-middle">${userData.email}</td>
                        <td class="tdata align-middle">${userData.phone}</td>
                        <td class="tdata align-middle">${"*".repeat(userData.pass.length)}</td>
                        <td>
                            <button type="button" class="btn btn-link updateBtn">
                                <i class="fa-solid fa-sm fa-pencil back-icon"></i>
                            </button>
                        </td>
                    </tr>
                `;
                $("#modalTableBody").append(userTable);
            });
            $("#deleteUserBtn").on("click", function () {
                let rowIndex = parseInt($("#editIndex").val());
                let user = userListmodal[rowIndex];

                Swal.fire({
                    title: "Caution",
                    text: `Are you sure you want to delete ${user.fname} ${user.lname}'s record?`,
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Yes"
                })
                    .then((result) => {
                        if (result.isConfirmed) {
                            userListmodal.splice(rowIndex, 1);
                            localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                            $(`#modalTableBody tr[data-index="${rowIndex}"]`).remove();
                            $("#modalTableBody tr").each(function (newIndex) {
                                $(this).attr("data-index", newIndex);
                            });
                            $("#editUserModal").modal("hide");
                            Swal.fire({
                                title: "Deleted!",
                                text: `${user.fname} ${user.lname}'s data is deleted.`,
                                icon: "success"
                            });
                        }
                    });
            });
            $("#modalTableBody").on("click", ".updateBtn", function () {
                let activeInlineEdit = $("#modalTableBody").find(".fa-save");
                if (activeInlineEdit.length > 0) {
                    showerror("Please save your changes!");
                    return;
                }

                let row = $(this).closest("tr");
                let rowIndex = row.data("index");
                let user = userListmodal[rowIndex];
                $("#editUserModal .editInput").removeClass("is-valid is-invalid");
                $("#editUserModal .error-msg").text("");

                $("#editIndex").val(rowIndex);
                $("#editFname").val(user.fname);
                $("#editLname").val(user.lname);
                $("#editEmail").val(user.email);
                $("#editPhone").val(user.phone);
                $("#editPassword").val(user.pass);
                $("#editUserModal").modal("show");
            });
            $("#updateUserBtn").on("click", function () {
                $(".editInput").trigger("input");
                if ($("#editUserModal .is-invalid").length > 0) {
                    showerror("Please fill all the fields correctly!");
                    return;
                }

                let rowIndex = $("#editIndex").val();
                let updatedUser = {
                    fname: $("#editFname").val().trim(),
                    lname: $("#editLname").val().trim(),
                    email: $("#editEmail").val().trim(),
                    phone: $("#editPhone").val().trim(),
                    pass: $("#editPassword").val().trim()
                };

                userListmodal[rowIndex] = updatedUser;
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));

                let row = $(`#modalTableBody tr[data-index="${rowIndex}"]`);
                row.find("td").eq(0).text(updatedUser.fname);
                row.find("td").eq(1).text(updatedUser.lname);
                row.find("td").eq(2).text(updatedUser.email);
                row.find("td").eq(3).text(updatedUser.phone);
                row.find("td").eq(4).text("*".repeat(updatedUser.pass.length));

                $("#editUserModal").modal("hide");
                successmsg(`${updatedUser.fname} ${updatedUser.lname}'s data is updated.`);
            });
            $("#editUserModal").on("input", ".editInput", function () {
                let input = $(this);
                let value = input.val();
                let field = input.attr("id");
                let errorcontent = input.closest(".col-md-10, td, div").find(".error-msg, + .error-msg");
                if (!errorcontent.length) {
                    errorcontent = input.closest(".input-group").next(".error-msg");
                }

                input.removeClass("is-valid is-invalid");

                if (field === "editFname") {
                    let pattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                    if (value.trim() === "") {
                        errorcontent.text("First name is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.text("Only alphabets and ' allowed!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else if (field === "editLname") {
                    let pattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                    if (value.trim() === "") {
                        errorcontent.text("Last name is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.text("Only alphabets and ' allowed!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else if (field === "editEmail") {
                    let pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (value.trim() === "") {
                        errorcontent.text("Email is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.text("Enter valid email!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else if (field === "editPhone") {
                    input.val(value.replace(/[^0-9]/g, ''));
                    value = input.val();

                    let pattern = /^[0-9]{10}$/;
                    if (value.trim() === "") {
                        errorcontent.text("Phone number is required!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.text("Enter valid 10 digit number!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
                else if (field === "editPassword") {
                    let pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/;
                    if (value.trim() === "") {
                        errorcontent.text("Password is required!");
                        input.addClass("is-invalid");
                    }
                    else if (/\s/.test(value)) {
                        errorcontent.text("Spaces are not allowed!");
                        input.addClass("is-invalid");
                    }
                    else if (!pattern.test(value)) {
                        errorcontent.text("Enter a valid password!");
                        input.addClass("is-invalid");
                    }
                    else {
                        errorcontent.text("");
                        input.addClass("is-valid");
                    }
                }
            });
            $("#editUserModal").on("blur", "input", function () {
                let input = $(this);
                let value = input.val();
                let errorcontent = input.closest(".col-md-10, td, div").find(".error-msg, + .error-msg");
                if (!errorcontent.length) {
                    errorcontent = input.closest(".input-group").next(".error-msg");
                }

                if (value.trim() === "") {
                    errorcontent.text("This field is required!");
                    input.removeClass("is-valid").addClass("is-invalid");
                }
            });
        });
    </script>
</body>
</html>
