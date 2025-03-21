<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineInvestor Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #121212, #282828);
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
        .login-container {
            width: 90%;
            max-width: 1200px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #1a1a1a;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            overflow: hidden;
            animation: fadeIn 1.5s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .left-section {
            flex: 1;
            background: url('images/cinema-background.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
            position: relative;
        }
        .left-section-content {
            text-align: center;
            background: rgba(0, 0, 0, 0.6);
            padding: 2rem;
            border-radius: 10px;
            animation: zoomIn 1.2s ease-in-out;
        }
        @keyframes zoomIn {
            from { transform: scale(0.8); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }
        .right-section {
            flex: 1;
            padding: 3rem;
            text-align: center;
        }
        .logo-section img {
            width: 120px;
            animation: bounce 2s infinite alternate;
        }
        @keyframes bounce {
            from { transform: translateY(0); }
            to { transform: translateY(-10px); }
        }
        .form-inner {
            background: #222;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s;
        }
        .form-group {
            margin-bottom: 1.5rem;
        }
        .form-group label {
            font-size: 1rem;
            color: #bbb;
        }
        .form-control {
            width: 100%;
            padding: 0.75rem;
            font-size: 1rem;
            border: 1px solid #444;
            border-radius: 5px;
            background: #333;
            color: #fff;
            transition: border 0.3s ease, box-shadow 0.3s ease;
        }
        .form-control:focus {
            border-color: #e50914;
            box-shadow: 0 0 8px rgba(229, 9, 20, 0.6);
        }
        .submit-btn {
            width: 100%;
            padding: 0.75rem;
            font-size: 1rem;
            font-weight: 600;
            color: #fff;
            background: #e50914;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s ease, background 0.3s ease;
            position: relative;
        }
        .submit-btn:hover {
            background: #c40612;
            transform: scale(1.05);
        }
        .submit-btn.moving {
            position: absolute;
            transition: left 0.2s ease, top 0.2s ease;
        }
        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
            }
            .left-section {
                display: none;
            }
            .right-section {
                width: 100%;
                padding: 2rem;
            }
        }
    </style>
</head>
<body>

    <div class="login-container">
        <div class="left-section">
            <div class="left-section-content">
                <h1>Welcome to CineInvestor</h1>
                <p>Invest in the next big hit! Log in to your investor panel.</p>
            </div>
        </div>
        <div class="right-section">
            <div class="logo-section">
                <img src="images/logo.png" alt="CineInvestor Logo">
            </div>
            <div class="right-section-inner">
                <div class="login-head">
                    <h3>Investor Login</h3>
                </div>
                <div class="form-inner">
                    <form id="login-form" action="dologin" method="post" autocomplete="off">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input id="username" name="username" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input id="password" name="password" type="password" class="form-control">
                        </div>
                        <div class="sumt-btn">
                            <button type="submit" class="submit-btn" id="submit-btn">Log In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    
<script>

</script>
</body>
</html>
