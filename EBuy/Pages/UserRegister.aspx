<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EBuy.View.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register — EBuy</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500;600&family=DM+Mono:wght@400;500&display=swap" rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
          crossorigin="anonymous" />

    <style>
        /* ── Design Tokens ───────────────────────────────────────────── */
        :root {
            --primary:        #1a1a2e;
            --accent:         #e94560;
            --accent-hover:   #c73652;
            --surface:        #ffffff;
            --surface-alt:    #f7f7fb;
            --border:         #e2e2ec;
            --text-main:      #1a1a2e;
            --text-muted:     #6b6b8a;
            --success:        #22c55e;
            --danger:         #ef4444;
            --radius:         10px;
            --radius-lg:      14px;
            --shadow-sm:      0 1px 4px rgba(26,26,46,.07);
            --shadow-md:      0 4px 20px rgba(26,26,46,.10);
            --font:           'DM Sans', sans-serif;
            --font-mono:      'DM Mono', monospace;
            --transition:     0.18s ease;
        }

        /* ── Base ────────────────────────────────────────────────────── */
        *, *::before, *::after { box-sizing: border-box; }

        body {
            font-family: var(--font);
            background: var(--surface-alt);
            color: var(--text-main);
            min-height: 100vh;
        }

        /* ── Back Button ─────────────────────────────────────────────── */
        .back-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: var(--text-muted);
            font-size: .85rem;
            font-weight: 500;
            text-decoration: none;
            transition: color var(--transition);
            padding: 1.5rem 1rem 0;
        }
        .back-link:hover { color: var(--accent); text-decoration: none; }
        .back-link i { font-size: .9rem; }

        /* ── Page Header ─────────────────────────────────────────────── */
        .page-header {
            text-align: center;
            padding: 2rem 1rem 1rem;
        }
        .page-header .brand {
            font-size: 1.6rem;
            font-weight: 700;
            letter-spacing: -.5px;
            color: var(--primary);
        }
        .page-header .brand span { color: var(--accent); }
        .page-header p {
            color: var(--text-muted);
            font-size: .9rem;
            margin: .25rem 0 0;
        }

        /* ── Accordion Card ──────────────────────────────────────────── */
        .accordion .card {
            border: 1px solid var(--border);
            border-radius: var(--radius-lg) !important;
            overflow: hidden;
            margin-bottom: 1rem;
            box-shadow: var(--shadow-sm);
        }
        .accordion .card-header {
            background: var(--primary);
            padding: 0;
            border: none;
        }
        .accordion .card-header .btn {
            color: #ffffff;
            font-weight: 500;
            font-size: .93rem;
            padding: 1rem 1.25rem;
            letter-spacing: .01em;
        }
        .accordion .card-header .btn:hover { color: #ffffffcc; text-decoration: none; }
        .accordion .card-header .btn:focus { box-shadow: none; outline: none; }

        /* ── Section Label ───────────────────────────────────────────── */
        .section-label {
            font-size: .72rem;
            font-weight: 600;
            letter-spacing: .1em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: .5rem;
        }

        /* ── Form Controls ───────────────────────────────────────────── */
        .form-group-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1rem;
        }
        @media (max-width: 576px) { .form-group-row { grid-template-columns: 1fr; } }

        .field-wrap { display: flex; flex-direction: column; margin-bottom: 1rem; }
        .field-wrap label {
            font-size: .82rem;
            font-weight: 600;
            color: var(--text-muted);
            margin-bottom: .3rem;
            letter-spacing: .02em;
        }

        .form-control {
            border: 1.5px solid var(--border);
            border-radius: var(--radius);
            font-family: var(--font);
            font-size: .93rem;
            color: var(--text-main);
            background: var(--surface);
            padding: .55rem .85rem;
            transition: border-color var(--transition), box-shadow var(--transition);
            height: auto;
        }
        .form-control:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(26,26,46,.08);
            outline: none;
        }
        .form-control.is-valid  { border-color: var(--success) !important; }
        .form-control.is-invalid { border-color: var(--danger) !important; }
        .form-control.is-valid:focus  { box-shadow: 0 0 0 3px rgba(34,197,94,.12); }
        .form-control.is-invalid:focus { box-shadow: 0 0 0 3px rgba(239,68,68,.12); }

        /* Remove default Bootstrap validation icons */
        .form-control.is-valid, .form-control.is-invalid {
            background-image: none;
            padding-right: .85rem;
        }

        .error-msg {
            font-size: .78rem;
            margin-top: .25rem;
            min-height: 1em;
            color: var(--danger);
        }
        .error-msg.text-success { color: var(--success) !important; }

        /* ── Password Group ──────────────────────────────────────────── */
        .pass-group {
            position: relative;
        }
        .pass-group .form-control { padding-right: 2.6rem; }
        .pass-group .toggle-eye {
            position: absolute;
            right: .75rem;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            padding: 0;
            cursor: pointer;
            color: var(--text-muted);
            font-size: .95rem;
            line-height: 1;
            transition: color var(--transition);
        }
        .pass-group .toggle-eye:hover { color: var(--accent); }
        .pass-group .toggle-eye:focus { outline: none; }

        /* ── Show Password Checkbox ──────────────────────────────────── */
        .show-pass-check {
            display: flex;
            align-items: center;
            gap: .45rem;
            margin-top: .5rem;
        }
        .show-pass-check input[type="checkbox"] {
            width: 15px;
            height: 15px;
            accent-color: var(--accent);
            cursor: pointer;
        }
        .show-pass-check label {
            font-size: .82rem;
            color: var(--text-muted);
            margin: 0;
            cursor: pointer;
        }

        /* ── Submit Button ───────────────────────────────────────────── */
        .btn-submit {
            background: var(--accent);
            color: #fff;
            border: none;
            border-radius: var(--radius);
            padding: .65rem 2.5rem;
            font-family: var(--font);
            font-size: .93rem;
            font-weight: 600;
            letter-spacing: .02em;
            transition: background var(--transition), transform var(--transition), box-shadow var(--transition);
            box-shadow: 0 2px 10px rgba(233,69,96,.25);
        }
        .btn-submit:hover {
            background: var(--accent-hover);
            transform: translateY(-1px);
            box-shadow: 0 4px 16px rgba(233,69,96,.35);
            color: #fff;
        }
        .btn-submit:active { transform: translateY(0); }
        .btn-submit:focus  { outline: none; box-shadow: 0 0 0 3px rgba(233,69,96,.25); }

        /* ── Login Link ──────────────────────────────────────────────── */
        .login-link-row {
            text-align: center;
            margin-top: 1rem;
            font-size: .85rem;
            color: var(--text-muted);
        }
        .login-link-row a {
            color: var(--accent);
            font-weight: 600;
            margin-left: .25rem;
        }
        .login-link-row a:hover { color: var(--accent-hover); }

        /* ── Table ───────────────────────────────────────────────────── */
        .table {
            font-size: .875rem;
            border-collapse: separate;
            border-spacing: 0;
        }
        .table thead th {
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: .78rem;
            letter-spacing: .08em;
            text-transform: uppercase;
            border: none;
            padding: .85rem 1rem;
        }
        .table thead th:first-child { border-radius: var(--radius) 0 0 0; }
        .table thead th:last-child  { border-radius: 0 var(--radius) 0 0; }
        .table tbody td {
            border-top: 1px solid var(--border);
            padding: .75rem 1rem;
            vertical-align: middle;
            color: var(--text-main);
        }
        .table tbody tr:hover td { background: var(--surface-alt); }
        .table-responsive { border-radius: var(--radius); overflow: hidden; box-shadow: var(--shadow-sm); }

        /* Password cell mono display */
        .pass-cell {
            font-family: var(--font-mono);
            letter-spacing: .08em;
            color: var(--text-muted);
            font-size: .85rem;
        }

        /* ── Action Buttons (table) ──────────────────────────────────── */
        .btn-icon {
            border: none;
            background: none;
            padding: .3rem .5rem;
            border-radius: 6px;
            cursor: pointer;
            transition: background var(--transition), color var(--transition);
            line-height: 1;
        }
        .btn-icon.edit  { color: var(--primary); }
        .btn-icon.edit:hover  { background: rgba(26,26,46,.08); }
        .btn-icon.save  { color: var(--success); }
        .btn-icon.save:hover  { background: rgba(34,197,94,.10); }
        .btn-icon.delete { color: var(--danger); }
        .btn-icon.delete:hover { background: rgba(239,68,68,.10); }

        /* ── Modal ───────────────────────────────────────────────────── */
        .modal-content {
            border: none;
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-md);
            overflow: hidden;
        }
        .modal-header {
            background: var(--primary);
            border: none;
            padding: 1.1rem 1.5rem;
        }
        .modal-title {
            color: #fff;
            font-weight: 600;
            font-size: 1rem;
        }
        .modal-header .close {
            color: rgba(255,255,255,.7);
            text-shadow: none;
            opacity: 1;
            font-size: 1.4rem;
            padding: 0;
        }
        .modal-header .close:hover { color: #fff; }
        .modal-body  { padding: 1.5rem; background: var(--surface); }
        .modal-footer {
            background: var(--surface-alt);
            border-top: 1px solid var(--border);
            padding: 1rem 1.5rem;
            flex-direction: column;
            gap: .75rem;
        }
        .modal-footer .btn-row {
            display: flex;
            justify-content: center;
            gap: .75rem;
        }
        .btn-secondary-outline {
            background: transparent;
            border: 1.5px solid var(--border);
            border-radius: var(--radius);
            padding: .55rem 1.4rem;
            font-family: var(--font);
            font-size: .9rem;
            font-weight: 500;
            color: var(--text-main);
            cursor: pointer;
            transition: border-color var(--transition), background var(--transition);
        }
        .btn-secondary-outline:hover { border-color: var(--primary); background: var(--surface-alt); }
        .btn-danger-outline {
            background: transparent;
            border: 1.5px solid var(--danger);
            border-radius: var(--radius);
            padding: .55rem 1.4rem;
            font-family: var(--font);
            font-size: .9rem;
            font-weight: 500;
            color: var(--danger);
            cursor: pointer;
            transition: background var(--transition), color var(--transition);
        }
        .btn-danger-outline:hover { background: var(--danger); color: #fff; }

        /* ── Modal Register Trigger Header ───────────────────────────── */
        .register-trigger-header {
            background: var(--primary);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: .75rem 1.25rem;
        }
        .register-trigger-header span {
            color: #fff;
            font-weight: 500;
            font-size: .93rem;
        }
        .btn-add {
            background: var(--accent);
            color: #fff;
            border: none;
            border-radius: var(--radius);
            padding: .4rem 1rem;
            font-family: var(--font);
            font-size: .83rem;
            font-weight: 600;
            cursor: pointer;
            transition: background var(--transition);
            display: inline-flex;
            align-items: center;
            gap: .4rem;
        }
        .btn-add:hover { background: var(--accent-hover); }

        /* ── Input Prepend (modal) ────────────────────────────────────── */
        .input-group-text {
            background: var(--surface-alt);
            border: 1.5px solid var(--border);
            border-right: none;
            border-radius: var(--radius) 0 0 var(--radius);
            color: var(--text-muted);
            font-size: .82rem;
            font-weight: 600;
            letter-spacing: .01em;
        }
        .input-group .form-control { border-radius: 0 var(--radius) var(--radius) 0; }
        .input-group .pass-group   { flex: 1; }
        .input-group .pass-group .form-control { border-radius: 0 var(--radius) var(--radius) 0; }

        /* ── Utility ─────────────────────────────────────────────────── */
        .text-center-mt { text-align: center; margin-top: 1.25rem; }
    </style>
</head>
<body>
    <form id="form2" runat="server" novalidate="novalidate">

        <!-- Back Link -->
        <a href="Index.aspx" class="back-link">
            <i class="fa-solid fa-arrow-left"></i> Back to Home
        </a>

        <!-- Page Header -->
        <div class="page-header">
            <div class="brand">E<span>Buy</span></div>
            <p>Create your account to get started</p>
        </div>

        <div class="container pb-5" style="max-width:860px;">
            <div class="accordion" id="userRegisterAccordion">

                <!-- ══════════════════════════════════════════════════════
                     SECTION 1 — Normal Register Form
                     ══════════════════════════════════════════════════════ -->
                <div class="card">
                    <div class="card-header" id="normalRegisterHeading">
                        <button class="btn btn-block text-left"
                                type="button"
                                data-toggle="collapse"
                                data-target="#normalRegisterCollapse"
                                aria-expanded="false"
                                aria-controls="normalRegisterCollapse">
                            <i class="fa-regular fa-user mr-2"></i> Register — Standard Form
                        </button>
                    </div>
                    <div id="normalRegisterCollapse"
                         class="collapse"
                         aria-labelledby="normalRegisterHeading"
                         data-parent="#userRegisterAccordion">
                        <div class="card-body p-4">

                            <!-- Name Row -->
                            <div class="form-group-row">
                                <div class="field-wrap">
                                    <label for="normalFname">First Name</label>
                                    <input type="text" class="form-control" id="normalFname"
                                           placeholder="e.g. Santhosh" autocomplete="given-name" />
                                    <small class="error-msg" id="normalFname-err"></small>
                                </div>
                                <div class="field-wrap">
                                    <label for="normalLname">Last Name</label>
                                    <input type="text" class="form-control" id="normalLname"
                                           placeholder="e.g. Kumar" autocomplete="family-name" />
                                    <small class="error-msg" id="normalLname-err"></small>
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="field-wrap">
                                <label for="normalEmail">Email Address</label>
                                <input type="email" class="form-control" id="normalEmail"
                                       placeholder="e.g. santhosh@email.com" autocomplete="email" />
                                <small class="error-msg" id="normalEmail-err"></small>
                            </div>

                            <!-- Phone -->
                            <div class="field-wrap">
                                <label for="normalPhone">Contact Number</label>
                                <input type="tel" class="form-control" id="normalPhone"
                                       placeholder="10-digit number" maxlength="10" autocomplete="tel" />
                                <small class="error-msg" id="normalPhone-err"></small>
                            </div>

                            <!-- Password -->
                            <div class="field-wrap">
                                <label for="normalPassword">Password</label>
                                <div class="pass-group">
                                    <input type="password" class="form-control" id="normalPassword"
                                           placeholder="Min 8 chars, upper, lower, digit, symbol" />
                                    <button type="button" class="toggle-eye" data-target="normalPassword"
                                            aria-label="Toggle password visibility">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </div>
                                <small class="error-msg" id="normalPassword-err"></small>
                            </div>

                            <!-- Confirm Password -->
                            <div class="field-wrap">
                                <label for="normalConfirmPassword">Confirm Password</label>
                                <div class="pass-group">
                                    <input type="password" class="form-control" id="normalConfirmPassword"
                                           placeholder="Re-enter your password" />
                                    <button type="button" class="toggle-eye" data-target="normalConfirmPassword"
                                            aria-label="Toggle confirm password visibility">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </div>
                                <small class="error-msg" id="normalConfirmPassword-err"></small>
                            </div>

                            <!-- Show password checkbox -->
                            <div class="show-pass-check">
                                <input type="checkbox" id="normalShowPassword" />
                                <label for="normalShowPassword">Show passwords</label>
                            </div>

                            <!-- Submit -->
                            <div class="text-center-mt">
                                <button type="button" class="btn-submit" id="normalSubmitBtn">
                                    Create Account
                                </button>
                            </div>
                            <div class="login-link-row">
                                Already have an account? <a href="#">Sign in</a>
                            </div>

                        </div><!-- /card-body -->
                    </div>
                </div>

                <!-- ══════════════════════════════════════════════════════
                     SECTION 2 — Normal Form User Table
                     ══════════════════════════════════════════════════════ -->
                <div class="card">
                    <div class="card-header" id="normalTableHeading">
                        <button class="btn btn-block text-left"
                                type="button"
                                data-toggle="collapse"
                                data-target="#normalUserTableCollapse"
                                aria-expanded="false"
                                aria-controls="normalUserTableCollapse">
                            <i class="fa-solid fa-table mr-2"></i> Registered Users — Standard Form
                        </button>
                    </div>
                    <div id="normalUserTableCollapse"
                         class="collapse"
                         aria-labelledby="normalTableHeading"
                         data-parent="#userRegisterAccordion">
                        <div class="card-body p-3">
                            <div class="table-responsive">
                                <table class="table table-hover mb-0" id="normalUserTable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Email</th>
                                            <th>Contact</th>
                                            <th>Password</th>
                                            <th style="width:80px;">Edit</th>
                                            <th style="width:80px;">Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody id="normalTableBody"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ══════════════════════════════════════════════════════
                     SECTION 3 — Modal Register Trigger
                     ══════════════════════════════════════════════════════ -->
                <div class="card">
                    <div class="register-trigger-header">
                        <span><i class="fa-regular fa-window-restore mr-2"></i>Register via Modal</span>
                        <button type="button" class="btn-add"
                                data-toggle="modal" data-target="#registerModal">
                            <i class="fa-solid fa-plus"></i> Register
                        </button>
                    </div>
                </div>

                <!-- ══════════════════════════════════════════════════════
                     SECTION 4 — Modal Form User Table
                     ══════════════════════════════════════════════════════ -->
                <div class="card">
                    <div class="card-header" id="modalTableHeading">
                        <button class="btn btn-block text-left"
                                type="button"
                                data-toggle="collapse"
                                data-target="#modalUserTableCollapse"
                                aria-expanded="false"
                                aria-controls="modalUserTableCollapse">
                            <i class="fa-solid fa-table mr-2"></i> Registered Users — Modal Form
                        </button>
                    </div>
                    <div id="modalUserTableCollapse"
                         class="collapse"
                         aria-labelledby="modalTableHeading"
                         data-parent="#userRegisterAccordion">
                        <div class="card-body p-3">
                            <div class="table-responsive">
                                <table class="table table-hover mb-0" id="modalUserTable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Email</th>
                                            <th>Contact</th>
                                            <th>Password</th>
                                            <th style="width:80px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="modalTableBody"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div><!-- /accordion -->
        </div><!-- /container -->

        <!-- ══════════════════════════════════════════════════════════════
             MODAL — Register User
             ══════════════════════════════════════════════════════════════ -->
        <div class="modal fade" id="registerModal"
             data-backdrop="static" data-keyboard="false"
             tabindex="-1" aria-labelledby="registerModalTitle" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="registerModalTitle">
                            <i class="fa-regular fa-user mr-2"></i>Create Account
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Name Row -->
                        <div class="form-group-row">
                            <div class="field-wrap">
                                <label for="modalFname">First Name</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa-regular fa-user fa-sm"></i></span>
                                    </div>
                                    <input type="text" class="form-control" id="modalFname"
                                           placeholder="First name" autocomplete="given-name" />
                                </div>
                                <small class="error-msg" id="modalFname-err"></small>
                            </div>
                            <div class="field-wrap">
                                <label for="modalLname">Last Name</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa-regular fa-user fa-sm"></i></span>
                                    </div>
                                    <input type="text" class="form-control" id="modalLname"
                                           placeholder="Last name" autocomplete="family-name" />
                                </div>
                                <small class="error-msg" id="modalLname-err"></small>
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="field-wrap">
                            <label for="modalEmail">Email Address</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-regular fa-envelope fa-sm"></i></span>
                                </div>
                                <input type="email" class="form-control" id="modalEmail"
                                       placeholder="Email address" autocomplete="email" />
                            </div>
                            <small class="error-msg" id="modalEmail-err"></small>
                        </div>

                        <!-- Phone -->
                        <div class="field-wrap">
                            <label for="modalPhone">Contact Number</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-solid fa-phone fa-sm"></i></span>
                                </div>
                                <input type="tel" class="form-control" id="modalPhone"
                                       placeholder="10-digit number" maxlength="10" autocomplete="tel" />
                            </div>
                            <small class="error-msg" id="modalPhone-err"></small>
                        </div>

                        <!-- Password -->
                        <div class="field-wrap">
                            <label for="modalPassword">Password</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-solid fa-lock fa-sm"></i></span>
                                </div>
                                <div class="pass-group">
                                    <input type="password" class="form-control" id="modalPassword"
                                           placeholder="Min 8 chars, upper, lower, digit, symbol" />
                                    <button type="button" class="toggle-eye" data-target="modalPassword"
                                            aria-label="Toggle password visibility">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </div>
                            </div>
                            <small class="error-msg" id="modalPassword-err"></small>
                        </div>

                        <!-- Confirm Password -->
                        <div class="field-wrap">
                            <label for="modalConfirmPassword">Confirm Password</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-solid fa-lock fa-sm"></i></span>
                                </div>
                                <div class="pass-group">
                                    <input type="password" class="form-control" id="modalConfirmPassword"
                                           placeholder="Re-enter your password" />
                                    <button type="button" class="toggle-eye" data-target="modalConfirmPassword"
                                            aria-label="Toggle confirm password visibility">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </div>
                            </div>
                            <small class="error-msg" id="modalConfirmPassword-err"></small>
                        </div>

                        <!-- Show password checkbox -->
                        <div class="show-pass-check">
                            <input type="checkbox" id="modalShowPassword" />
                            <label for="modalShowPassword">Show passwords</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="btn-row">
                            <button type="button" class="btn-secondary-outline" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn-submit" id="modalSubmitBtn">
                                Create Account
                            </button>
                        </div>
                        <div class="login-link-row" style="margin-top:0;">
                            Already have an account? <a href="#">Sign in</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ══════════════════════════════════════════════════════════════
             MODAL — Edit / Delete Modal User
             ══════════════════════════════════════════════════════════════ -->
        <div class="modal fade" id="editUserModal"
             data-backdrop="static" data-keyboard="false"
             tabindex="-1" aria-labelledby="editModalTitle" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalTitle">
                            <i class="fa-solid fa-pen-to-square mr-2"></i>Update User
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="editIndex" />

                        <div class="form-group-row">
                            <div class="field-wrap">
                                <label for="editFname">First Name</label>
                                <input type="text" class="form-control editInput" id="editFname"
                                       data-field="fname" placeholder="First name" />
                                <small class="error-msg" id="editFname-err"></small>
                            </div>
                            <div class="field-wrap">
                                <label for="editLname">Last Name</label>
                                <input type="text" class="form-control editInput" id="editLname"
                                       data-field="lname" placeholder="Last name" />
                                <small class="error-msg" id="editLname-err"></small>
                            </div>
                        </div>

                        <div class="field-wrap">
                            <label for="editEmail">Email Address</label>
                            <input type="email" class="form-control editInput" id="editEmail"
                                   data-field="email" placeholder="Email address" />
                            <small class="error-msg" id="editEmail-err"></small>
                        </div>

                        <div class="field-wrap">
                            <label for="editPhone">Contact Number</label>
                            <input type="tel" class="form-control editInput" id="editPhone"
                                   data-field="phone" placeholder="10-digit number" maxlength="10" />
                            <small class="error-msg" id="editPhone-err"></small>
                        </div>

                        <div class="field-wrap">
                            <label for="editPassword">New Password</label>
                            <div class="pass-group">
                                <input type="password" class="form-control editInput" id="editPassword"
                                       data-field="pass" placeholder="Leave blank to keep current" />
                                <button type="button" class="toggle-eye" data-target="editPassword"
                                        aria-label="Toggle password visibility">
                                    <i class="fa-solid fa-eye"></i>
                                </button>
                            </div>
                            <small class="error-msg" id="editPassword-err"></small>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="btn-row">
                            <button type="button" class="btn-secondary-outline" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn-danger-outline" id="deleteUserBtn">
                                <i class="fa-solid fa-trash fa-sm mr-1"></i>Delete
                            </button>
                            <button type="button" class="btn-submit" id="updateUserBtn">
                                <i class="fa-solid fa-check fa-sm mr-1"></i>Save Changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form><!-- /form2 -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>

    <script>
        $(function () {

            /* ================================================================
               STATE
               ================================================================ */
            let userListNormal = JSON.parse(localStorage.getItem("userdetailsNormal")) || [];
            let userListModal = JSON.parse(localStorage.getItem("userdetailsModal")) || [];


            /* ================================================================
               ALERTS — SweetAlert2 wrappers
               ================================================================ */
            const alertError = (msg) => Swal.fire({
                icon: "error", title: "Oops!", text: msg,
                confirmButtonColor: "#e94560"
            });

            const alertSuccess = (msg) => Swal.fire({
                icon: "success", title: "Done!", text: msg,
                confirmButtonColor: "#e94560"
            });

            const alertConfirm = (msg) => Swal.fire({
                icon: "warning", title: "Are you sure?", text: msg,
                showCancelButton: true,
                confirmButtonColor: "#e94560",
                cancelButtonColor: "#6b6b8a",
                confirmButtonText: "Yes, proceed"
            });


            /* ================================================================
               PASSWORD HASHING — SHA-256 via Web Crypto API
               Passwords are NEVER stored in plain text.
               ================================================================ */
            const hashPassword = async (plainText) => {
                const enc = new TextEncoder();
                const data = enc.encode(plainText);
                const buffer = await crypto.subtle.digest("SHA-256", data);
                return Array.from(new Uint8Array(buffer))
                    .map(b => b.toString(16).padStart(2, "0"))
                    .join("");
            };


            /* ================================================================
               VALIDATION ENGINE
               ─────────────────────────────────────────────────────────────────
               validateField(inputSel, errSel, rules)
                 - inputSel : jQuery selector for the <input>
                 - errSel   : jQuery selector for the <small class="error-msg">
                 - rules    : array of { test: (val) => bool, message: string }
               Returns true if all rules pass.
               ================================================================ */
            const validateField = (inputSel, errSel, rules) => {
                const inp = $(inputSel);
                const err = $(errSel);
                const val = inp.val();

                inp.removeClass("is-valid is-invalid");
                err.removeClass("text-success").addClass("text-danger");

                for (let rule of rules) {
                    if (!rule.test(val)) {
                        err.text(rule.message);
                        inp.addClass("is-invalid");
                        return false;
                    }
                }
                err.text("");
                inp.addClass("is-valid");
                return true;
            };


            /* ────────────────────────────────────────────────────────────────
               SHARED RULE SETS
               ──────────────────────────────────────────────────────────────── */
            const PATTERNS = {
                name: /^[A-Za-z]+(['][A-Za-z]+)*'?$/,
                email: /^[^\s@]+@[^\s@]+\.[^\s@]+$/,
                phone: /^[0-9]{10}$/,
                pass: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/
            };

            const nameRules = (label) => [
                { test: v => v.trim() !== "", message: `${label} is required!` },
                { test: v => !/\s/.test(v), message: "Spaces are not allowed!" },
                { test: v => PATTERNS.name.test(v), message: "Only letters and apostrophes allowed!" }
            ];
            const emailRules = [
                { test: v => v.trim() !== "", message: "Email address is required!" },
                { test: v => !/\s/.test(v), message: "Spaces are not allowed!" },
                { test: v => PATTERNS.email.test(v), message: "Enter a valid email address!" }
            ];
            const phoneRules = [
                { test: v => v.trim() !== "", message: "Contact number is required!" },
                { test: v => PATTERNS.phone.test(v), message: "Enter a valid 10-digit number!" }
            ];
            const passRules = [
                { test: v => v.trim() !== "", message: "Password is required!" },
                { test: v => !/\s/.test(v), message: "Spaces are not allowed!" },
                { test: v => v.length >= 8, message: "Minimum 8 characters required!" },
                { test: v => PATTERNS.pass.test(v), message: "Must include upper, lower, digit & symbol (@!$%&)!" }
            ];
            const cpassRules = (passSel) => [
                { test: v => v.trim() !== "", message: "Confirm password is required!" },
                { test: v => !/\s/.test(v), message: "Spaces are not allowed!" },
                { test: v => v === $(passSel).val(), message: "Passwords do not match!" }
            ];


            /* ────────────────────────────────────────────────────────────────
               FIELD VALIDATORS — Normal Form
               ──────────────────────────────────────────────────────────────── */
            const vNormalFname = () => validateField("#normalFname", "#normalFname-err", nameRules("First name"));
            const vNormalLname = () => validateField("#normalLname", "#normalLname-err", nameRules("Last name"));
            const vNormalEmail = () => validateField("#normalEmail", "#normalEmail-err", emailRules);
            const vNormalPhone = () => validateField("#normalPhone", "#normalPhone-err", phoneRules);
            const vNormalPass = () => validateField("#normalPassword", "#normalPassword-err", passRules);
            const vNormalCpass = () => {
                // Special handling: show green "Passwords match" on success
                const ok = validateField("#normalConfirmPassword", "#normalConfirmPassword-err", cpassRules("#normalPassword"));
                if (ok) {
                    $("#normalConfirmPassword-err").text("Passwords match!").removeClass("text-danger").addClass("text-success");
                }
                return ok;
            };

            // Attach live validation — Normal Form
            $("#normalFname").on("input", vNormalFname).on("blur", () => { if (!$("#normalFname").val().trim()) vNormalFname(); });
            $("#normalLname").on("input", vNormalLname).on("blur", () => { if (!$("#normalLname").val().trim()) vNormalLname(); });
            $("#normalEmail").on("input", vNormalEmail).on("blur", () => { if (!$("#normalEmail").val().trim()) vNormalEmail(); });
            $("#normalPhone").on("input", vNormalPhone).on("blur", () => { if (!$("#normalPhone").val().trim()) vNormalPhone(); });
            $("#normalPassword").on("input", function () {
                vNormalPass();
                if ($("#normalConfirmPassword").val().trim()) vNormalCpass();
            });
            $("#normalConfirmPassword").on("input", vNormalCpass);

            // Block non-numeric on phone (Normal)
            blockNonNumeric("#normalPhone", "#normalPhone-err");

            // Validate entire normal form — bitwise & so ALL validators run
            const validateNormalForm = () =>
                vNormalFname() & vNormalLname() & vNormalEmail() &
                vNormalPhone() & vNormalPass() & vNormalCpass();


            /* ────────────────────────────────────────────────────────────────
               FIELD VALIDATORS — Modal Form
               ──────────────────────────────────────────────────────────────── */
            const vModalFname = () => validateField("#modalFname", "#modalFname-err", nameRules("First name"));
            const vModalLname = () => validateField("#modalLname", "#modalLname-err", nameRules("Last name"));
            const vModalEmail = () => validateField("#modalEmail", "#modalEmail-err", emailRules);
            const vModalPhone = () => validateField("#modalPhone", "#modalPhone-err", phoneRules);
            const vModalPass = () => validateField("#modalPassword", "#modalPassword-err", passRules);
            const vModalCpass = () => {
                const ok = validateField("#modalConfirmPassword", "#modalConfirmPassword-err", cpassRules("#modalPassword"));
                if (ok) {
                    $("#modalConfirmPassword-err").text("Passwords match!").removeClass("text-danger").addClass("text-success");
                }
                return ok;
            };

            // Attach live validation — Modal Form
            $("#modalFname").on("input", vModalFname).on("blur", () => { if (!$("#modalFname").val().trim()) vModalFname(); });
            $("#modalLname").on("input", vModalLname).on("blur", () => { if (!$("#modalLname").val().trim()) vModalLname(); });
            $("#modalEmail").on("input", vModalEmail).on("blur", () => { if (!$("#modalEmail").val().trim()) vModalEmail(); });
            $("#modalPhone").on("input", vModalPhone).on("blur", () => { if (!$("#modalPhone").val().trim()) vModalPhone(); });
            $("#modalPassword").on("input", function () {
                vModalPass();
                if ($("#modalConfirmPassword").val().trim()) vModalCpass();
            });
            $("#modalConfirmPassword").on("input", vModalCpass);

            // Block non-numeric on phone (Modal)
            blockNonNumeric("#modalPhone", "#modalPhone-err");

            // Validate entire modal form
            const validateModalForm = () =>
                vModalFname() & vModalLname() & vModalEmail() &
                vModalPhone() & vModalPass() & vModalCpass();


            /* ────────────────────────────────────────────────────────────────
               HELPER: Block non-numeric keystrokes on phone inputs
               ──────────────────────────────────────────────────────────────── */
            function blockNonNumeric(inputSel, errSel) {
                const ALLOWED = ["Backspace", "Delete", "ArrowLeft", "ArrowRight", "Tab", "Enter"];
                $(document).on("keydown", inputSel, function (e) {
                    if (ALLOWED.includes(e.key)) return;
                    if (!/^[0-9]$/.test(e.key)) {
                        e.preventDefault();
                        $(errSel).text("Only digits are allowed!");
                        $(inputSel).addClass("is-invalid");
                    }
                });
            }


            /* ================================================================
               PASSWORD VISIBILITY TOGGLE
               ─────────────────────────────────────────────────────────────────
               Each .toggle-eye button has data-target="inputId".
               The show-all checkbox toggles every password input
               scoped to its own form container (body or .modal).
               ================================================================ */

            // Individual eye button
            $(document).on("click", ".toggle-eye", function () {
                const targetId = $(this).data("target");
                const input = $("#" + targetId);
                const icon = $(this).find("i");
                const isPass = input.attr("type") === "password";

                input.attr("type", isPass ? "text" : "password");
                icon.toggleClass("fa-eye fa-eye-slash");

                // Sync the show-all checkbox for this container
                const container = $(this).closest(".modal-body, .card-body");
                const showAllChk = container.find("[id$='ShowPassword']");
                if (showAllChk.length) {
                    const allVisible = container.find("input[type='password'][id$='Password'], input[type='text'][id$='Password']")
                        .filter("[type='text']").length ===
                        container.find("input[id$='Password']").length;
                    showAllChk.prop("checked", allVisible);
                }
            });

            // Show-all checkbox — Normal Form
            $("#normalShowPassword").on("change", function () {
                const show = $(this).is(":checked");
                toggleAllPasswords("#normalPassword, #normalConfirmPassword", show);
            });

            // Show-all checkbox — Modal Form
            $("#modalShowPassword").on("change", function () {
                const show = $(this).is(":checked");
                toggleAllPasswords("#modalPassword, #modalConfirmPassword", show);
            });

            function toggleAllPasswords(selector, show) {
                $(selector).each(function () {
                    $(this).attr("type", show ? "text" : "password");
                    // Update the matching eye icon
                    const btn = $(".toggle-eye[data-target='" + this.id + "']");
                    btn.find("i")
                        .toggleClass("fa-eye", !show)
                        .toggleClass("fa-eye-slash", show);
                });
            }


            /* ================================================================
               ROW BUILDER HELPERS
               ================================================================ */

            // Build a normal-form table row
            const buildNormalRow = (user, index) => `
            <tr data-index="${index}">
                <td>${index + 1}</td>
                <td class="tdata">${escHtml(user.fname)}</td>
                <td class="tdata">${escHtml(user.lname)}</td>
                <td class="tdata">${escHtml(user.email)}</td>
                <td class="tdata">${escHtml(user.phone)}</td>
                <td class="tdata pass-cell">••••••••</td>
                <td>
                    <button type="button" class="btn-icon edit editBtn" title="Edit">
                        <i class="fa-solid fa-pencil fa-sm"></i>
                    </button>
                </td>
                <td>
                    <button type="button" class="btn-icon delete deleteBtn" title="Delete">
                        <i class="fa-solid fa-trash fa-sm"></i>
                    </button>
                </td>
            </tr>`;

            // Build a modal-form table row
            const buildModalRow = (user, index) => `
            <tr data-index="${index}">
                <td>${index + 1}</td>
                <td class="tdata">${escHtml(user.fname)}</td>
                <td class="tdata">${escHtml(user.lname)}</td>
                <td class="tdata">${escHtml(user.email)}</td>
                <td class="tdata">${escHtml(user.phone)}</td>
                <td class="tdata pass-cell">••••••••</td>
                <td>
                    <button type="button" class="btn-icon edit editBtn" title="Edit">
                        <i class="fa-solid fa-pencil fa-sm"></i>
                    </button>
                </td>
            </tr>`;

            // Escape HTML to prevent XSS when rendering user-supplied data into the DOM
            const escHtml = (str) => String(str)
                .replace(/&/g, "&amp;")
                .replace(/</g, "&lt;")
                .replace(/>/g, "&gt;")
                .replace(/"/g, "&quot;");

            // Re-render the complete normal table (ensures row numbers stay correct)
            const refreshNormalTable = () => {
                $("#normalTableBody").empty();
                userListNormal.forEach((user, i) => $("#normalTableBody").append(buildNormalRow(user, i)));
            };

            // Re-render the complete modal table
            const refreshModalTable = () => {
                $("#modalTableBody").empty();
                userListModal.forEach((user, i) => $("#modalTableBody").append(buildModalRow(user, i)));
            };


            /* ================================================================
               RESET HELPERS
               ================================================================ */
            const resetNormalForm = () => {
                ["#normalFname", "#normalLname", "#normalEmail", "#normalPhone",
                    "#normalPassword", "#normalConfirmPassword"].forEach(sel => {
                        $(sel).val("").removeClass("is-valid is-invalid").attr("type",
                            sel.includes("Password") ? "password" : $(sel).attr("type")
                        );
                    });
                $("[id^='normal'][id$='-err']").text("").removeClass("text-success").addClass("text-danger");
                $("#normalShowPassword").prop("checked", false);
                $(".toggle-eye[data-target^='normal'] i").removeClass("fa-eye-slash").addClass("fa-eye");
            };

            const resetModalForm = () => {
                ["#modalFname", "#modalLname", "#modalEmail", "#modalPhone",
                    "#modalPassword", "#modalConfirmPassword"].forEach(sel => {
                        $(sel).val("").removeClass("is-valid is-invalid").attr("type",
                            sel.includes("Password") ? "password" : $(sel).attr("type")
                        );
                    });
                $("[id^='modal'][id$='-err']").text("").removeClass("text-success").addClass("text-danger");
                $("#modalShowPassword").prop("checked", false);
                $(".toggle-eye[data-target^='modal'] i").removeClass("fa-eye-slash").addClass("fa-eye");
            };


            /* ================================================================
               NORMAL FORM — SUBMIT
               ================================================================ */
            $("#normalSubmitBtn").on("click", async function () {
                if (!validateNormalForm()) {
                    const firstInvalid = $(".is-invalid").first();
                    const msg = firstInvalid.closest(".field-wrap").find(".error-msg").text()
                        || "Please correct the highlighted errors.";
                    alertError(msg);
                    $("html, body").animate({ scrollTop: firstInvalid.offset().top - 120 }, 350);
                    return;
                }

                const plainPass = $("#normalPassword").val().trim();
                const hash = await hashPassword(plainPass);

                const user = {
                    fname: $("#normalFname").val().trim(),
                    lname: $("#normalLname").val().trim(),
                    email: $("#normalEmail").val().trim(),
                    phone: $("#normalPhone").val().trim(),
                    pass: hash
                };

                userListNormal.push(user);
                localStorage.setItem("userdetailsNormal", JSON.stringify(userListNormal));
                refreshNormalTable();
                resetNormalForm();
                alertSuccess(`Welcome, ${user.fname} ${user.lname}!`);
            });


            /* ================================================================
               NORMAL FORM — INLINE EDIT (pencil → save in table row)
               ================================================================ */
            $("#normalTableBody").on("click", ".editBtn", function () {
                const btn = $(this);
                const row = btn.closest("tr");
                const icon = btn.find("i");
                const rIndex = parseInt(row.data("index"));

                if (icon.hasClass("fa-pencil")) {
                    // ── Check for another active edit ──
                    if ($("#normalTableBody .fa-floppy-disk").length) {
                        alertError("Please save your current changes first!");
                        return;
                    }

                    const user = userListNormal[rIndex];
                    const fields = ["fname", "lname", "email", "phone"];

                    row.find("td.tdata").each(function (i) {
                        if (i === 4) {
                            // Password cell
                            $(this).html(`
                            <div class="pass-group" style="min-width:160px;">
                                <input type="password" class="form-control editInput"
                                       data-field="pass" value="${escHtml(user.pass)}"
                                       style="font-family:var(--font-mono);" />
                                <button type="button" class="toggle-eye"
                                        data-inline="true" aria-label="Toggle">
                                    <i class="fa-solid fa-eye"></i>
                                </button>
                            </div>
                            <small class="error-msg d-block mt-1"></small>
                        `);
                        } else {
                            const type = i === 2 ? "email" : i === 3 ? "tel" : "text";
                            const val = escHtml($(this).text().trim());
                            const maxl = i === 3 ? 'maxlength="10"' : "";
                            $(this).html(`
                            <input type="${type}" class="form-control editInput"
                                   data-field="${fields[i]}" value="${val}" ${maxl} />
                            <small class="error-msg d-block mt-1"></small>
                        `);
                            if (i === 3) {
                                // Block non-numeric inline
                                $(this).find("input").on("keydown", function (e) {
                                    const ALLOWED = ["Backspace", "Delete", "ArrowLeft", "ArrowRight", "Tab", "Enter"];
                                    if (!ALLOWED.includes(e.key) && !/^[0-9]$/.test(e.key)) {
                                        e.preventDefault();
                                        $(this).closest("td").find(".error-msg").text("Digits only!");
                                        $(this).addClass("is-invalid");
                                    }
                                });
                            }
                        }
                    });

                    // Switch icon: pencil → floppy disk (save)
                    btn.attr("title", "Save");
                    icon.removeClass("fa-pencil").addClass("fa-floppy-disk save");
                    btn.removeClass("edit").addClass("save");

                } else {
                    // ── SAVE mode ──
                    if (!validateInlineRow(row)) {
                        alertError("Please fix all errors in the row before saving!");
                        return;
                    }

                    const inputs = row.find("input.editInput");
                    const updated = {};
                    inputs.each(function () {
                        updated[$(this).data("field")] = $(this).val().trim();
                    });

                    userListNormal[rIndex] = {
                        fname: updated.fname,
                        lname: updated.lname,
                        email: updated.email,
                        phone: updated.phone,
                        pass: updated.pass   // already stored as hash; plain edit re-saved as-is
                    };
                    localStorage.setItem("userdetailsNormal", JSON.stringify(userListNormal));
                    refreshNormalTable();
                    alertSuccess(`${updated.fname} ${updated.lname}'s record updated.`);
                }
            });

            // Inline edit: live validation using data-field
            $("#normalTableBody").on("input", ".editInput", function () {
                validateInlineInput($(this));
            });
            $("#normalTableBody").on("blur", ".editInput", function () {
                if (!$(this).val().trim()) {
                    $(this).closest("td").find(".error-msg").text("This field is required!");
                    $(this).removeClass("is-valid").addClass("is-invalid");
                }
            });

            // Inline eye toggle (pass-group inside table cell)
            $("#normalTableBody").on("click", ".toggle-eye[data-inline]", function () {
                const inp = $(this).siblings("input");
                const icon = $(this).find("i");
                const isP = inp.attr("type") === "password";
                inp.attr("type", isP ? "text" : "password");
                icon.toggleClass("fa-eye fa-eye-slash");
            });


            /* ================================================================
               NORMAL FORM — DELETE ROW
               ================================================================ */
            $("#normalTableBody").on("click", ".deleteBtn", async function () {
                const row = $(this).closest("tr");
                const rIndex = parseInt(row.data("index"));
                const user = userListNormal[rIndex];

                const result = await alertConfirm(`Delete ${user.fname} ${user.lname}'s record?`);
                if (result.isConfirmed) {
                    userListNormal.splice(rIndex, 1);
                    localStorage.setItem("userdetailsNormal", JSON.stringify(userListNormal));
                    refreshNormalTable();
                    Swal.fire({ icon: "success", title: "Deleted!", text: `${user.fname}'s record removed.`, confirmButtonColor: "#e94560" });
                }
            });


            /* ================================================================
               MODAL FORM — SUBMIT
               ================================================================ */
            $("#modalSubmitBtn").on("click", async function () {
                if (!validateModalForm()) {
                    const firstInvalid = $("#registerModal .is-invalid").first();
                    const msg = firstInvalid.closest(".field-wrap").find(".error-msg").text()
                        || "Please correct all highlighted fields.";
                    alertError(msg);
                    return;
                }

                const plainPass = $("#modalPassword").val().trim();
                const hash = await hashPassword(plainPass);

                const user = {
                    fname: $("#modalFname").val().trim(),
                    lname: $("#modalLname").val().trim(),
                    email: $("#modalEmail").val().trim(),
                    phone: $("#modalPhone").val().trim(),
                    pass: hash
                };

                userListModal.push(user);
                localStorage.setItem("userdetailsModal", JSON.stringify(userListModal));
                refreshModalTable();
                $("#registerModal").modal("hide");
                alertSuccess(`Welcome, ${user.fname} ${user.lname}!`);
            });

            // Reset modal fields when it's hidden
            $("#registerModal").on("hidden.bs.modal", resetModalForm);


            /* ================================================================
               MODAL FORM — OPEN EDIT MODAL
               ================================================================ */
            $("#modalTableBody").on("click", ".editBtn", function () {
                const row = $(this).closest("tr");
                const rIndex = parseInt(row.data("index"));
                const user = userListModal[rIndex];

                $("#editIndex").val(rIndex);
                $("#editFname").val(user.fname);
                $("#editLname").val(user.lname);
                $("#editEmail").val(user.email);
                $("#editPhone").val(user.phone);
                // Don't pre-fill hashed password — leave blank so user enters a new one if needed
                $("#editPassword").val("").removeClass("is-valid is-invalid").attr("type", "password");
                $(".toggle-eye[data-target='editPassword'] i").removeClass("fa-eye-slash").addClass("fa-eye");
                $("[id^='edit'][id$='-err']").text("");
                ["#editFname", "#editLname", "#editEmail", "#editPhone"].forEach(sel => {
                    $(sel).removeClass("is-valid is-invalid");
                });
                $("#editUserModal").modal("show");
            });


            /* ================================================================
               EDIT MODAL — LIVE VALIDATION (data-field driven)
               ================================================================ */
            $("#editUserModal").on("input", ".editInput", function () {
                const inp = $(this);
                const field = inp.data("field");
                const errId = "#edit" + field.charAt(0).toUpperCase() + field.slice(1) + "-err";
                const rules = {
                    fname: nameRules("First name"), lname: nameRules("Last name"),
                    email: emailRules, phone: phoneRules, pass: passRules
                };
                validateField("#" + inp.attr("id"), errId, rules[field]);
            });

            // Block non-numeric inline in edit modal
            blockNonNumeric("#editPhone", "#editPhone-err");


            /* ================================================================
               EDIT MODAL — SAVE / UPDATE
               ================================================================ */
            $("#updateUserBtn").on("click", async function () {
                // Validate all fields in the edit modal
                const fValid = validateField("#editFname", "#editFname-err", nameRules("First name"));
                const lValid = validateField("#editLname", "#editLname-err", nameRules("Last name"));
                const eValid = validateField("#editEmail", "#editEmail-err", emailRules);
                const pValid = validateField("#editPhone", "#editPhone-err", phoneRules);
                // Password is optional on edit — only validate if user typed something
                const passVal = $("#editPassword").val().trim();
                let passValid = true;
                if (passVal !== "") {
                    passValid = validateField("#editPassword", "#editPassword-err", passRules);
                }

                if (!(fValid & lValid & eValid & pValid & passValid)) {
                    alertError("Please fix all highlighted fields!");
                    return;
                }

                const rIndex = parseInt($("#editIndex").val());
                const existing = userListModal[rIndex];

                // Hash new password if provided, otherwise keep existing hash
                let newHash = existing.pass;
                if (passVal !== "") {
                    newHash = await hashPassword(passVal);
                }

                const updated = {
                    fname: $("#editFname").val().trim(),
                    lname: $("#editLname").val().trim(),
                    email: $("#editEmail").val().trim(),
                    phone: $("#editPhone").val().trim(),
                    pass: newHash
                };

                userListModal[rIndex] = updated;
                localStorage.setItem("userdetailsModal", JSON.stringify(userListModal));
                refreshModalTable();
                $("#editUserModal").modal("hide");
                alertSuccess(`${updated.fname} ${updated.lname}'s record updated.`);
            });


            /* ================================================================
               EDIT MODAL — DELETE
               ================================================================ */
            $("#deleteUserBtn").on("click", async function () {
                const rIndex = parseInt($("#editIndex").val());
                const user = userListModal[rIndex];

                const result = await alertConfirm(`Delete ${user.fname} ${user.lname}'s record?`);
                if (result.isConfirmed) {
                    userListModal.splice(rIndex, 1);
                    localStorage.setItem("userdetailsModal", JSON.stringify(userListModal));
                    refreshModalTable();
                    $("#editUserModal").modal("hide");
                    Swal.fire({ icon: "success", title: "Deleted!", text: `${user.fname}'s record removed.`, confirmButtonColor: "#e94560" });
                }
            });


            /* ================================================================
               INLINE ROW VALIDATION (Normal Table edit mode)
               ================================================================ */
            const INLINE_RULES = {
                fname: nameRules("First name"),
                lname: nameRules("Last name"),
                email: emailRules,
                phone: phoneRules,
                pass: passRules
            };

            function validateInlineInput(input) {
                const field = input.data("field");
                const val = input.val();
                const errEl = input.closest("td").find(".error-msg");
                const rules = INLINE_RULES[field] || [];

                input.removeClass("is-valid is-invalid");
                errEl.text("");

                if (field === "phone") {
                    input.val(val.replace(/[^0-9]/g, ""));
                }

                for (let rule of rules) {
                    if (!rule.test(input.val())) {
                        errEl.css("font-size", "11px").text(rule.message);
                        input.addClass("is-invalid");
                        return false;
                    }
                }
                input.addClass("is-valid");
                return true;
            }

            function validateInlineRow(row) {
                let allValid = true;
                row.find("input.editInput").each(function () {
                    if (!validateInlineInput($(this))) allValid = false;
                });
                return allValid;
            }


            /* ================================================================
               INIT — Render persisted data on page load
               ================================================================ */
            refreshNormalTable();
            refreshModalTable();

        }); // end $(function)
    </script>
</body>
</html>
