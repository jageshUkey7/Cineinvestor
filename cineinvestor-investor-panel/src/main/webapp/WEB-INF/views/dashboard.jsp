<%@ include file="header.jsp"%>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            color: white;
            margin: 0;
            padding: 0;
        }

        .main-content {
            padding: 20px;
        }

        .topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: rgba(255, 255, 255, 0.1);
            padding: 15px 20px;
            border-radius: 10px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }

        .dashboard-cards {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .card {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            padding: 20px;
            width: 200px;
            text-align: center;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.3);
        }

        .card i {
            font-size: 40px;
            color: gold;
            margin-bottom: 10px;
        }

        .kyc-section {
            margin-top: 30px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }

        .progress {
            height: 25px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.1);
            overflow: hidden;
        }

        .progress-bar {
            height: 100%;
            background: linear-gradient(90deg, #ff4e50, #f9d423);
            width: 0;
            text-align: center;
            font-weight: bold;
            line-height: 25px;
            border-radius: 15px;
        }
    </style>
</head>
<body>

    <!-- Main Content -->
    <div class="main-content">
        <div class="topbar">
            <h2>Dashboard</h2>
            <div class="user-info">
                <i class="fas fa-user-circle"></i> Welcome, Investor
            </div>
        </div>

        <!-- Dashboard Cards -->
        <div class="dashboard-cards">
            <div class="card">
                <i class="fas fa-dollar-sign"></i>
                <h4>Total Investments</h4>
                <p>$500,000</p>
            </div>
            <div class="card">
                <i class="fas fa-film"></i>
                <h4>Projects Funded</h4>
                <p>15</p>
            </div>
            <div class="card">
                <i class="fas fa-chart-line"></i>
                <h4>Returns</h4>
                <p>20%</p>
            </div>
            <div class="card">
                <i class="fas fa-user-friends"></i>
                <h4>Partners</h4>
                <p>12</p>
            </div>
        </div>

        <!-- KYC Verification Progress -->
        <div class="kyc-section">
            <h3>KYC Verification Progress</h3>
            <%
                int kycPoints = 7;  // Assume KYC progress is 7 out of 10
                int progressPercentage = (kycPoints * 10);
            %>
            <div class="progress">
                <div class="progress-bar" style="width: 0%;" id="progressBar">
                    <%= kycPoints %> / 10 Completed
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            let progress = <%= progressPercentage %>;
            $("#progressBar").animate({ width: progress + "%" }, 1500);
        });
    </script>

</body>
</html>
