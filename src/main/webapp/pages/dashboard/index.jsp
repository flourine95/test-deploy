<%@ page contentType="text/html;charset=UTF-8"  %>
<div class="main bg-secondary-subtle">
    <main class="content px-3 py-4">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h4 class="page-title">Dashboard</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card widget-flat">
                        <div class="card-body">
                            <div class="float-end">
                                <i class="bi bi-people-fill widget-icon bg-success-lighten text-success"></i>
                            </div>
                            <h5 class="text-muted font-weight-normal mt-0" title="Số lượng khách hàng">Khách hàng</h5>
                            <h3 class="mt-3 mb-3">36,254</h3>
                            <p class="mb-0 text-muted">
                                <span class="text-success me-2"><i class="bi bi-arrow-up"></i> 5.27%</span>
                                <span class="text-nowrap">So với tháng trước</span>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card widget-flat">
                        <div class="card-body">
                            <div class="float-end">
                                <i class="bi bi-cart-plus widget-icon bg-danger-lighten text-danger"></i>
                            </div>
                            <h5 class="text-muted font-weight-normal mt-0" title="Số lượng đơn hàng">Đơn hàng</h5>
                            <h3 class="mt-3 mb-3">5,543</h3>
                            <p class="mb-0 text-muted">
                                <span class="text-danger me-2"><i class="bi bi-arrow-down"></i> 1.08%</span>
                                <span class="text-nowrap">So với tháng trước</span>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card widget-flat">
                        <div class="card-body">
                            <div class="float-end">
                                <i class="bi bi-currency-dollar widget-icon bg-info-lighten text-info"></i>
                            </div>
                            <h5 class="text-muted font-weight-normal mt-0" title="Doanh thu trung bình">Doanh thu</h5>
                            <h3 class="mt-3 mb-3">150.000.000đ</h3>
                            <p class="mb-0 text-muted">
                                <span class="text-danger me-2"><i class="bi bi-arrow-down"></i> 7.00%</span>
                                <span class="text-nowrap">So với tháng trước</span>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card widget-flat">
                        <div class="card-body">
                            <div class="float-end">
                                <i class="bi bi-graph-up widget-icon bg-warning-lighten text-warning"></i>
                            </div>
                            <h5 class="text-muted font-weight-normal mt-0" title="Tăng trưởng">Tăng trưởng</h5>
                            <h3 class="mt-3 mb-3">+ 30.56%</h3>
                            <p class="mb-0 text-muted">
                                <span class="text-success me-2"><i class="bi bi-arrow-up"></i> 4.87%</span>
                                <span class="text-nowrap">So với tháng trước</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-xl-7 col-lg-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <button class="btn btn-light btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <li><a class="dropdown-item" href="#">Báo cáo doanh thu</a></li>
                                    <li><a class="dropdown-item" href="#">Xuất báo cáo</a></li>
                                    <li><a class="dropdown-item" href="#">Phân tích lợi nhuận</a></li>
                                    <li><a class="dropdown-item" href="#">Cài đặt biểu đồ</a></li>
                                </ul>
                            </div>
                            <h4 class="card-title mb-3">Doanh thu thực tế so với dự kiến</h4>
                            <canvas id="revenueChart" class="h-100"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h4 class="card-title mb-3">Phân bổ doanh thu theo danh mục</h4>
                            <canvas id="revenuePieChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-6 col-lg-12 order-lg-2 order-xl-1 mb-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="card-title mb-4">Sản phẩm bán chạy nhất</h4>
                                <a href="#" class="btn btn-sm btn-outline-primary">
                                    Xuất báo cáo
                                    <i class="bi bi-download ms-1"></i>
                                </a>
                            </div>

                            <div class="table-responsive ">
                                <table class="table table-hover table-striped">
                                    <thead class="table-light">
                                    <tr>
                                        <th>Sản phẩm</th>
                                        <th>Giá</th>
                                        <th>Số lượng</th>
                                        <th>Tổng tiền</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <h6 class="mb-0">Alesis Turbo Mesh Kit</h6>
                                            <small class="text-muted">07 Tháng 4, 2018</small>
                                        </td>
                                        <td>1.987.250đ</td>
                                        <td>82</td>
                                        <td>162.954.500đ</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="mb-0">Alesis Crimson II SE</h6>
                                            <small class="text-muted">25 Tháng 3, 2018</small>
                                        </td>
                                        <td>3.212.500đ</td>
                                        <td>37</td>
                                        <td>118.862.500đ</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="mb-0">ROLAND TD-02KV</h6>
                                            <small class="text-muted">17 Tháng 3, 2018</small>
                                        </td>
                                        <td>999.750đ</td>
                                        <td>64</td>
                                        <td>63.984.000đ</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="mb-0">Combo EXX725SP/C760</h6>
                                            <small class="text-muted">12 Tháng 3, 2018</small>
                                        </td>
                                        <td>500.000đ</td>
                                        <td>184</td>
                                        <td>92.000.000đ</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="mb-0">PEARL EXPORT EXX725SP/C777</h6>
                                            <small class="text-muted">05 Tháng 3, 2018</small>
                                        </td>
                                        <td>712.250đ</td>
                                        <td>69</td>
                                        <td>49.145.250đ</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-6 order-lg-1 mb-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <a href="#" class="dropdown-toggle text-muted" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Xem chi tiết</a></li>
                                    <li><a class="dropdown-item" href="#">Xuất báo cáo</a></li>
                                    <li><a class="dropdown-item" href="#">Cập nhật dữ liệu</a></li>
                                </ul>
                            </div>
                            <h4 class="card-title mb-4">Phân tích doanh thu</h4>

                            <div id="revenue-chart" class="apex-charts mb-4 mt-4"></div>

                            <div class="chart-widget-list">
                                <p class="text-muted mb-1">
                                    <i class="bi bi-square-fill text-primary me-2"></i> Trống acoustic
                                    <span class="float-end">4.250.000đ</span>
                                </p>
                                <p class="text-muted mb-1">
                                    <i class="bi bi-square-fill text-danger me-2"></i> Trống điện tử
                                    <span class="float-end">3.800.000đ</span>
                                </p>
                                <p class="text-muted mb-1">
                                    <i class="bi bi-square-fill text-success me-2"></i> Phụ kiện
                                    <span class="float-end">1.950.000đ</span>
                                </p>
                                <p class="text-muted mb-0">
                                    <i class="bi bi-square-fill text-warning me-2"></i> Dịch vụ
                                    <span class="float-end">980.000đ</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-6 order-lg-1">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <a href="#" class="dropdown-toggle text-muted" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Xem chi tiết</a></li>
                                    <li><a class="dropdown-item" href="#">Lọc hoạt động</a></li>
                                    <li><a class="dropdown-item" href="#">Xuất báo cáo</a></li>
                                </ul>
                            </div>
                            <h4 class="card-title mb-4">Hoạt động gần đây</h4>

                            <div data-simplebar style="max-height: 424px;">
                                <div class="timeline-alt pb-0">
                                    <div class="timeline-item">
                                        <i class="bi bi-cart-check bg-success-subtle text-success rounded-circle timeline-icon"></i>
                                        <div class="timeline-item-info">
                                            <a href="#" class="text-success fw-bold d-block">Đơn hàng mới</a>
                                            <small>Khách hàng Nguyễn Văn A đã đặt hàng trống jazz</small>
                                            <p class="mb-0 pb-2">
                                                <small class="text-muted">5 phút trước</small>
                                            </p>
                                        </div>
                                    </div>

                                    <div class="timeline-item">
                                        <i class="bi bi-person-plus bg-primary-subtle text-primary rounded-circle timeline-icon"></i>
                                        <div class="timeline-item-info">
                                            <a href="#" class="text-primary fw-bold d-block">Người dùng mới đăng ký</a>
                                            <small>Trần Thị B vừa tạo tài khoản mới</small>
                                            <p class="mb-0 pb-2">
                                                <small class="text-muted">30 phút trước</small>
                                            </p>
                                        </div>
                                    </div>

                                    <div class="timeline-item">
                                        <i class="bi bi-star bg-warning-subtle text-warning rounded-circle timeline-icon"></i>
                                        <div class="timeline-item-info">
                                            <a href="#" class="text-warning fw-bold d-block">Đánh giá sản phẩm mới</a>
                                            <small>Lê Văn C đã đánh giá 5 sao cho sản phẩm "Trống cơ bản cho người mới bắt đầu"</small>
                                            <p class="mb-0 pb-2">
                                                <small class="text-muted">2 giờ trước</small>
                                            </p>
                                        </div>
                                    </div>

                                    <div class="timeline-item">
                                        <i class="bi bi-box-seam bg-info-subtle text-info rounded-circle timeline-icon"></i>
                                        <div class="timeline-item-info">
                                            <a href="#" class="text-info fw-bold d-block">Cập nhật kho hàng</a>
                                            <small>Đã nhập thêm 50 bộ trống điện tử vào kho</small>
                                            <p class="mb-0 pb-2">
                                                <small class="text-muted">1 ngày trước</small>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<script>
    // Biểu đồ doanh thu
    const ctx = document.getElementById('revenueChart').getContext('2d');
    new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
            datasets: [{
                label: 'Doanh Thu (triệu đồng)',
                data: [28, 45, 71, 118, 59, 71, 236, 307, 401, 260, 142, 189],
                borderColor: 'rgb(75, 192, 192)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderWidth: 2,
                fill: true,
                tension: 0.1,
                pointBackgroundColor: 'rgb(75, 192, 192)',
                pointBorderColor: '#fff',
                pointHoverBackgroundColor: '#fff',
                pointHoverBorderColor: 'rgb(75, 192, 192)'
            }, {
                label: 'Lợi Nhuận (triệu đồng)',
                data: [10, 20, 35, 60, 25, 30, 120, 150, 200, 130, 70, 95],
                borderColor: 'rgb(255, 99, 132)',
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderWidth: 2,
                fill: true,
                tension: 0.1,
                pointBackgroundColor: 'rgb(255, 99, 132)',
                pointBorderColor: '#fff',
                pointHoverBackgroundColor: '#fff',
                pointHoverBorderColor: 'rgb(255, 99, 132)'
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Biểu Đồ Doanh Thu và Lợi Nhuận Năm 2024'
                },
                tooltip: {
                    mode: 'index',
                    intersect: false,
                    callbacks: {
                        label: function(context) {
                            let label = context.dataset.label || '';
                            if (label) {
                                label += ': ';
                            }
                            if (context.parsed.y !== null) {
                                label += new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(context.parsed.y * 1000000);
                            }
                            return label;
                        }
                    }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Giá Trị (triệu đồng)'
                    },
                    ticks: {
                        callback: function(value, index, values) {
                            return value + ' triệu';
                        }
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Tháng'
                    }
                }
            },
            interaction: {
                intersect: false,
                mode: 'index',
            },
        }
    });

    // Biểu đồ phân bổ doanh thu
    const ctx2 = document.getElementById('revenuePieChart').getContext('2d');
    new Chart(ctx2, {
        type: 'doughnut',
        data: {
            labels: ['Trống Điện Tử', 'Trống Cơ', 'Phụ Kiện'],
            datasets: [{
                data: [40, 30, 30],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.8)',
                    'rgba(54, 162, 235, 0.8)',
                    'rgba(255, 206, 86, 0.8)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'bottom',
                    labels: {
                        font: {
                            size: 14
                        },
                        padding: 20
                    }
                },
                title: {
                    display: true,
                    text: 'Phân Bổ Doanh Thu Theo Sản Phẩm',
                    font: {
                        size: 18,
                        weight: 'bold'
                    },
                    padding: {
                        top: 10,
                        bottom: 30
                    }
                },
                tooltip: {
                    callbacks: {
                        label: function(context) {
                            let label = context.label || '';
                            if (label) {
                                label += ': ';
                            }
                            if (context.parsed !== null) {
                                label += new Intl.NumberFormat('vi-VN', { style: 'percent', minimumFractionDigits: 1 }).format(context.parsed / 100);
                            }
                            return label;
                        }
                    }
                }
            },
            cutout: '60%',
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    });
</script>
