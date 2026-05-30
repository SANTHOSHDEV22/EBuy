    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterDT.aspx.cs" Inherits="EBuy.Pages.RegisterDT" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap"
        rel="stylesheet" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <!-- DataTables Core -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.min.css" />
    <!-- DataTables Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap4.min.css" />
    <!-- DataTables Buttons -->
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.0.2/css/buttons.bootstrap4.min.css" />
    <!-- DataTables Responsive -->
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/3.0.2/css/responsive.bootstrap4.min.css" />
    <!-- DataTables SearchPanes -->
    <link rel="stylesheet" href="https://cdn.datatables.net/searchpanes/2.3.1/css/searchPanes.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/searchpanes/2.3.1/css/searchPanes.bootstrap4.min.css" />
    <!-- DataTables Select -->
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.3/css/select.bootstrap4.min.css" />
    <link rel="stylesheet" type="text/css" href="../Assets/css/register.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid p-4">
            <a href="Index.aspx" style="text-decoration: none;">
                <i class="fa-solid fa-arrow-left fa-lg back-icon"></i><span class="ml-2 text-dark">Go to home</span>
            </a>
        </div>
        <div class="container-fluid p-2">
            <div class="container-fluid py-5 my-5">
                <div class="accordion" id="userRegisterAccordion">
                    <div class="card shadow-sm">
                        <div class="card-header bg-info d-flex justify-content-center align-items-center p-3"
                            id="modalRegisterHeading">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#registerModal">
                                <i class="fa-solid fa-plus mr-1"></i>
                                Register
                            </button>
                        </div>
                        <div class="modal fade" id="registerModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered">
                                <div class="modal-content border-0 shadow">
                                    <div class="modal-header bg-info text-white">
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
                        <div class="card-header bg-info p-0" id="modalTableHeading">
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
                                        id="modalUserTable" style="width: 100% !important;">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Name</th>
                                                <th>Email Address</th>
                                                <th>Contact No.</th>
                                                <th>Password</th>
                                                <th width="120">Action</th>
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
                                <div class="modal-header bg-info text-white">
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
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- JSZip -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <!-- pdfMake -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <!-- DataTables Core -->
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.min.js"></script>
    <!-- DataTables Bootstrap 4 -->
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap4.min.js"></script>
    <!-- DataTables Buttons -->
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.colVis.min.js"></script>
    <!-- DataTables Responsive -->
    <script src="https://cdn.datatables.net/responsive/3.0.2/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/3.0.2/js/responsive.bootstrap4.min.js"></script>
    <!-- DataTables Select -->
    <script src="https://cdn.datatables.net/select/2.0.3/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/select.bootstrap4.min.js"></script>
    <!-- DataTables SearchPanes -->
    <script src="https://cdn.datatables.net/searchpanes/2.3.1/js/dataTables.searchPanes.min.js"></script>
    <script src="https://cdn.datatables.net/searchpanes/2.3.1/js/searchPanes.bootstrap4.min.js"></script>
    <!-- SearchPanes Button -->
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.searchPanes.min.js"></script>
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
            const successmsg = (message) => {
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
                $(this).find(".togglePassword i").removeClass("fa-eye-slash").addClass("fa-eye");
            });
            $('#registerModal').on('show.bs.modal', function () {
                $('#modalUserTableCollapse').collapse('hide');
                $('#editUserModal').modal('hide');
            });
            $('#modalUserTableCollapse').on('show.bs.collapse', function () {
                $('#registerModal').modal('hide');
                $('#editUserModal').modal('hide');
            });

            //modalForm - DataTable Applied
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
                return (validateFname && validateLname && validateEmail && validatePhone && validatePass &&
                    validateCpass);
            };
            const submitModalForm = (event) => {
                event.preventDefault();
                let isFnameValid = fnameModalvalidate();
                let isLnameValid = lnameModalvalidate();
                let isEmailValid = emailModalvalidate();
                let isPhoneValid = phoneModalvalidate();
                let isPassValid = passModalvalidate();
                let isCpassValid = cpassModalvalidate();
                let isServerOk = formcheckresModal();
                if (!isFnameValid) {
                    showerror("First name is required!"); return;
                }
                if (!isLnameValid) {
                    showerror("Last name is required!"); return;
                }
                if (!isEmailValid) {
                    showerror("Email address is required!"); return;
                }
                if (!isPhoneValid) {
                    showerror("Contact number is required!"); return;
                }
                if (!isPassValid) {
                    showerror("Password is required!"); return;
                }
                if (!isCpassValid) {
                    showerror("Confirm password is required!"); return;
                }
                if (!isServerOk) {
                    showerror("Server has been down!"); return;
                }
                let userData = {
                    fname: $("#modalFname").val().trim(),
                    lname: $("#modalLname").val().trim(),
                    email: $("#modalEmail").val().trim(),
                    phone: $("#modalPhone").val().trim(),
                    pass: $("#modalPassword").val().trim()
                };
                userListmodal.push(userData);
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                table.row.add(userData).draw();
                successmsg(`Welcome, ${userData.fname} ${userData.lname}`);
                $("#registerModal").modal("hide");
                $("#registerModal input").val("");
                $("#registerModal input").removeClass("is-valid is-invalid");
                $("#registerModal .error-msg").text("");
            };
            let table;
            const loadUserTable = async () => {
                try {
                    const res = await fetch("https://dummyjson.com/users");
                    const data = await res.json();
                    userListmodal = data.users || [];
                    userListmodal = data.users.map(user => ({...user,
                        fullName: `${user.firstName || user.fname || ""} ${user.lastName || user.lname || ""}`.trim(),
                        normalizedPass: `${user.password || user.pass}`
                    }));
                    if ($.fn.DataTable.isDataTable("#modalUserTable")) {
                        $("#modalUserTable").DataTable().destroy();
                        $("#modalTableBody").empty();

                    }
                    table = $("#modalUserTable").DataTable({
                        data: userListmodal,
                        responsive: true,
                        pageLength: 10,
                        ordering: true,
                        searching: true,
                        info: true,
                        autoWidth: false,
                        order: [[0, "asc"]],
                        language: {
                            search: "",
                            searchPlaceholder: "Search users...",
                            emptyTable: "No users available",
                            zeroRecords: "No matching users found",
                            info: "Showing _START_ to _END_ of _TOTAL_ users",
                            lengthMenu: "Show _MENU_ users"
                        },
                        searchPanes: {
                            cascadePanes: true,
                            viewCount: false,
                            initCollapsed: true,
                            layout: "columns-3"
                        },
                        layout: {
                            top1: {
                                buttons: [
                                    {
                                        extend: "searchPanes",
                                        text: '<i class="fa fa-filter mr-1"></i> Filters',
                                        className: "btn btn-sm mb-3"
                                    }
                                ]
                            },
                            topStart: {
                                buttons: [
                                    {
                                        extend: "copy",
                                        text: '<i class="fa fa-copy mr-1"></i> Copy',
                                        className: "btn btn-sm mb-3"
                                    },
                                    {
                                        extend: "excel",
                                        text: '<i class="fa fa-file-excel mr-1"></i> Excel',
                                        className: "btn btn-sm mb-3"
                                    },
                                    {
                                        extend: "pdf",
                                        text: '<i class="fa fa-file-pdf mr-1"></i> PDF',
                                        className: "btn btn-sm mb-3"
                                    }
                                ]
                            },
                            topEnd: {
                                search: {
                                    placeholder: "Search users..."
                                }
                            },
                            bottomStart: {
                                pageLength: {
                                    menu: [5, 10, 25, 50]
                                }
                            },
                            bottomEnd: {
                                paging: {
                                    type: "simple_numbers"
                                }
                            }
                        },
                        columns: [
                            {
                                title: "Name",
                                data: "fullName",
                                className: "text-center align-middle",
                                defaultContent: "—",
                                render: $.fn.dataTable.render.text()
                            },
                            {
                                title: "Email",
                                data: "email",
                                className: "text-center align-middle",
                                defaultContent: "—",
                                render: $.fn.dataTable.render.text()
                            },
                            {
                                title: "Phone",
                                data: "phone",
                                className: "text-center align-middle",
                                defaultContent: "—",
                                render: $.fn.dataTable.render.text()
                            },

                            {
                                title: "Password",
                                data: "normalizedPass",
                                className: "text-center align-middle",
                                orderable: false,
                                searchable: false,
                                render: function (data, type) {
                                    if (type === "display") {
                                        return data ? "*".repeat(Math.min(data.length, 10)) : "—";
                                    }
                                    return data;
                                }
                            },
                            {
                                title: "Action",
                                data: null,
                                orderable: false,
                                searchable: false,
                                className: "text-center align-middle",
                                render: function () {
                                    return `
                                        <button
                                            type="button"
                                            class="btn btn-sm btn-outline-primary updateBtn"
                                            title="Edit User">

                                            <i class="fa-solid fa-pen-to-square mr-1"></i>
                                            Edit

                                        </button>
                                    `;
                                }
                            }
                        ],

                        initComplete: function () {
                            $('.dtsp-searchPanes').hide();
                            $(document).on('click', '.dt-button.buttons-searchPanes', function () {
                                $('.dtsp-searchPanes').slideToggle(1);
                            });
                        }
                    });
                }
                catch (error) {
                    console.error(error);
                    $("#modalTableBody").html(`
                        <tr>
                            <td colspan="6"
                                class="text-center text-danger py-4">
                                Failed to load data
                            </td>
                        </tr>
                    `);
                }
            };
            $('#modalUserTableCollapse').on('shown.bs.collapse', function () {
                if (!$.fn.DataTable.isDataTable('#modalUserTable')) {
                    loadUserTable();
                }
                else {
                    table.columns.adjust().responsive.recalc();
                }
            });
            $("#modalSubmitBtn").on("click", submitModalForm);
            $("#deleteUserBtn").on("click", function () {
                let rowIndex = parseInt($("#editIndex").val());
                let user = userListmodal[rowIndex];
                let fullname = `${user.fname || user.firstName} ${user.lname || user.lastName}`;

                Swal.fire({
                    title: "Caution",
                    text: `Are you sure you want to delete ${fullname}'s record?`,
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Yes"
                }).then((result) => {
                    if (result.isConfirmed) {
                        userListmodal.splice(rowIndex, 1);
                        localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                        table.clear().rows.add(userListmodal).draw();
                        $("#editUserModal").modal("hide");

                        Swal.fire({
                            title: "Deleted!",
                            text: `${fullname}'s data is deleted.`,
                            icon: "success"
                        });
                    }
                });
            });
            $("#updateUserBtn").on("click", function () {
                $(".editInput").trigger("input");
                if ($("#editUserModal .is-invalid").length > 0) {
                    showerror("Please fill all the fields correctly!");
                    return;
                }
                let rowIndex = parseInt($("#editIndex").val());
                let existingUser = userListmodal[rowIndex];
                let updatedUser = {
                    fname: $("#editFname").val().trim(),
                    lname: $("#editLname").val().trim(),
                    email: $("#editEmail").val().trim(),
                    phone: $("#editPhone").val().trim(),
                    pass: $("#editPassword").val().trim()
                };
                if (existingUser.firstName) {
                    updatedUser = {
                        firstName: updatedUser.fname,
                        lastName: updatedUser.lname,
                        email: updatedUser.email,
                        phone: updatedUser.phone,
                        password: updatedUser.pass
                    };
                }
                userListmodal[rowIndex] = updatedUser;
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                table.clear().rows.add(userListmodal).draw();
                $("#editUserModal").modal("hide");
                let fullname = `${updatedUser.fname || updatedUser.firstName} ${updatedUser.lname || updatedUser.lastName}`;
                successmsg(`${fullname}'s data is updated.`);
            });
            $("#modalUserTable tbody").on("click", ".updateBtn", function () {
                $("#editUserModal .error-msg").text("");
                $(".editInput").removeClass("is-valid is-invalid");
                let rowData = table.row($(this).closest("tr")).data();
                let rowIndex = table.row($(this).closest("tr")).index();
                $("#editIndex").val(rowIndex);
                $("#editFname").val(rowData.fname || rowData.firstName);
                $("#editLname").val(rowData.lname || rowData.lastName);
                $("#editEmail").val(rowData.email);
                $("#editPhone").val(rowData.phone);
                $("#editPassword").val(rowData.pass || rowData.password);
                $(".editInput").trigger("input");
                $("#editUserModal").modal("show");
            });
            $("#editUserModal").on("input", ".editInput", function () {
                let input = $(this);
                let value = input.val();
                let field = input.attr("id");
                let errorcontent = input.closest(".input-group").find(".error-msg");
                input.removeClass("is-valid is-invalid");
                if (field === "editFname" || field === "editLname") {
                    let pattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;

                    if (value.trim() === "") {
                        errorcontent.text(field === "editFname" ? "First name is required!" : "Last name is required!");
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
                    input.val(value.replace(/[^0-9]/g, ""));
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
            $("#editUserModal").on("blur", "input", function () {
                let input = $(this);
                let value = input.val();
                let errorcontent = input.closest(".input-group").find(".error-msg");
                if (value.trim() === "") {
                    errorcontent.text("This field is required!");
                    input.removeClass("is-valid").addClass("is-invalid");
                }
            });
        });
    </script>
</body>
</html>



