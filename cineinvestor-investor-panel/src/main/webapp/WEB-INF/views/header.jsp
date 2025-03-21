<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cinevestor Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: #ffffff;
            color: #333;
            height: 100vh;
            display: flex;
        }
        
        /* Sidebar */
        .sidebar {
            width: 250px;
            height: 100vh;
            background: #1a1a1a;
            color: #fff;
            padding-top: 20px;
            position: fixed;
            left: 0;
            top: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .sidebar .logo {
            font-size: 1.5rem;
            font-weight: 600;
            color: #e50914;
            margin-bottom: 20px;
        }
        
        .sidebar ul {
            list-style: none;
            padding: 0;
            width: 100%;
        }
        
        .sidebar ul li {
            width: 100%;
        }
        
        .sidebar ul li a {
            display: flex;
            align-items: center;
            padding: 12px 20px;
            color: #ccc;
            text-decoration: none;
            transition: 0.3s;
            font-size: 1rem;
        }
        
        .sidebar ul li a:hover {
            background: #e50914;
            color: #fff;
        }
        
        .sidebar ul li a i {
            margin-right: 10px;
        }

        /* Main content */
        .main-content {
            margin-left: 250px;
            width: calc(100% - 250px);
            padding: 20px;
        }

        .topbar {
            background: #e50914;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius: 8px;
        }

        .topbar .user-info {
            display: flex;
            align-items: center;
        }

        .topbar .user-info i {
            margin-right: 10px;
        }

        /* Dashboard cards */
        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            padding: 20px;
            border-radius: 8px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .card i {
            font-size: 2rem;
            color: #e50914;
            margin-bottom: 10px;
        }

        .card h4 {
            margin: 10px 0;
            font-size: 1.3rem;
        }

        .card p {
            font-size: 1.1rem;
            color: #666;
        }

        /* KYC Progress */
        .kyc-section {
            margin-top: 30px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 8px;
        }

        .progress {
            height: 25px;
        }

        .progress-bar {
            font-size: 1rem;
            font-weight: bold;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .sidebar {
                width: 100px;
            }

            .sidebar ul li a span {
                display: none;
            }

            .main-content {
                margin-left: 100px;
                width: calc(100% - 100px);
            }
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="logo">Cinevestor</div>
        <ul>
            <li><a href="dashboard"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>
            <li><a href="kycDetails"><i class="fas fa-film"></i> <span>KYC</span></a></li>
            <li><a href="Projects"><i class="fas fa-chart-line"></i> <span>Projects</span></a></li>
            <li><a href="#"><i class="fas fa-users"></i> <span>Investors</span></a></li>
            <li><a href="#"><i class="fas fa-cogs"></i> <span>Settings</span></a></li>
            <li><a href="logout"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></a></li>
        </ul>
    </div>
