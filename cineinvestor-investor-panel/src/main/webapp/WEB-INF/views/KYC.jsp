<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KYC Verification</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to bottom, #87CEEB, #ADD8E6, #B0E0E6, #E0FFFF);
            background-attachment: fixed;
            background-size: cover;
            color: #000;
            margin: 0;
            padding-top: 80px;
            font-family: 'Poppins', sans-serif;
        }

        .navbar {
            background: rgba(52, 58, 64, 0.8);
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            backdrop-filter: blur(10px);
        }

        .container {
            margin-top: 30px;
            text-align: center;
            animation: fadeIn 1.5s ease-in-out;
        }

        .content-wrapper {
            display: flex;
            justify-content: center;
            align-items: start;
            gap: 30px;
            flex-wrap: wrap;
        }

        .profile-card {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 15px;
            padding: 20px;
            width: 300px;
            text-align: center;
            backdrop-filter: blur(20px);
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        }

        .profile-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid white;
        }

        .profile-card h4 {
            margin-top: 10px;
        }

        .card {
            background: rgba(135, 206, 235, 0.5);
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            padding: 20px;
            color: #fff;
            backdrop-filter: blur(20px);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            width: 500px;
        }

        .card:hover {
            transform: scale(1.02);
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.3);
        }

        .table {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 10px;
            overflow: hidden;
            backdrop-filter: blur(10px);
        }

        .table thead {
            background: linear-gradient(90deg, #ff4b2b, #ff416c);
            color: white;
            text-transform: uppercase;
        }

        .table tbody tr:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        .verify-btn {
            width: 140px;
            font-weight: bold;
            border-radius: 10px;
            border: none;
            transition: all 0.3s ease-in-out;
        }

        .verify-btn:hover {
            transform: scale(1.1);
            box-shadow: 0px 5px 15px rgba(255, 255, 255, 0.4);
        }
    </style>
</head>

<body>

    <%@ include file="header.jsp" %>

    <div class="container">
        <div class="content-wrapper">
            
            <!-- Left Side: Profile Card -->
            <div class="profile-card">
                <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="User">
                <h4>John Doe</h4>
                <p><strong>Email:</strong> johndoe@example.com</p>
                <p><strong>Phone:</strong> +91 9876543210</p>
                <p><strong>Address:</strong> Mumbai, India</p>
            </div>

            <!-- Right Side: KYC Verification -->
            <div class="card">
                <h3 class="mb-4">KYC Verification</h3>
                <table class="table table-bordered text-white">
                    <thead>
                        <tr>
                            <th>Document Name</th>
                            <th>Details</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>PAN Card</td>
                            <td><input type="text" id="panInput" class="form-control" placeholder="Enter PAN"></td>
                            <td><button class="btn btn-success verify-btn" onclick="verifyDocument(event, 'PAN', 'panInput')">Verify</button></td>
                        </tr>
                        <tr>
                            <td>Aadhaar Card</td>
                            <td><input type="text" id="aadhaarInput" class="form-control" placeholder="Enter Aadhaar"></td>
                            <td><button class="btn btn-primary verify-btn" onclick="verifyDocument(event, 'Aadhaar', 'aadhaarInput')">Verify</button></td>
                        </tr>
                        <tr>
                            <td>Bank Account</td>
                            <td><input type="text" id="bankInput" class="form-control" placeholder="Enter Bank A/C"></td>
                            <td><button class="btn btn-warning verify-btn" onclick="verifyDocument(event, 'Bank', 'bankInput')">Verify</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>

    <script>
        function verifyDocument(event, documentType, inputId) {
            let btn = event.target;
            let inputValue = document.getElementById(inputId).value.trim();

           // alert("inputValue ::"+inputValue);
            //alert("documentType ::"+documentType);
            if (inputValue === "") {
                alert("Please enter your " + documentType + " details before verifying.");
                return;
            }

           /*  btn.innerText = "Verifying...";
            btn.disabled = true;

            setTimeout(() => {
                btn.innerText = "Verified!";
                btn.style.backgroundColor = "#28a745";
                btn.style.color = "white";
                alert(documentType + " verification successful! \nEntered Value: " + inputValue);
            }, 2000);

            setTimeout(() => {
                btn.innerText = "Verify";
                btn.disabled = false;
                btn.style.backgroundColor = "";
            }, 3000); */
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
