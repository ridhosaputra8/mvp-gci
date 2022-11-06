<?php
defined('BASEPATH') or exit('No direct script access allowed');
$this->load->view('dist/_partials/header');
?>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Bayar Tagihan</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                <div class="breadcrumb-item"><a href="#">Forms</a></div>
                <div class="breadcrumb-item">Advanced Forms</div>
            </div>
        </div>

        <!-- Form Tambah Tagihan -->
        <div class="section-body">
            <div class="row justify-content-center">
                <div class="col-12 col-md-8 col-lg-8">
                    <div class="card">
                        <div class="card-header">
                            <h4>Form Bayar Tagihan</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Date</label>
                                <input type="date" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nama Mahasiswa</label>
                                <select class="form-control select2">
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Jenis Tagihan</label>
                                <select class="form-control select2">
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Semester</label>
                                <select class="form-control select2">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Total Tagihan</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            Rp.
                                        </div>
                                    </div>
                                    <input type="text" class="form-control currency">
                                </div>
                            </div>
                            <div class="form-check form-group">
                                <input class="form-check-input" type="checkbox" id="defaultCheck3">
                                <label class="form-check-label" for="defaultCheck3">
                                    Aktif
                                </label>
                            </div>
                            <div class="card-footer text-right">
                                <button class="btn btn-primary mr-1" type="submit">Simpan</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
</div>
<?php $this->load->view('dist/_partials/footer'); ?>