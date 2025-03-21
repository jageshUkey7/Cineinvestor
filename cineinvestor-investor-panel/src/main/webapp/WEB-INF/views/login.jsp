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
            background: linear-gradient(135deg, #232323, #4e4e4e);
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-container {
            width: 100%;
            max-width: 1200px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #1a1a1a;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            overflow: hidden;
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
            color: #fff;
            font-size: 1.5rem;
            font-weight: 500;
            line-height: 1.8;
            background: rgba(0, 0, 0, 0.6);
            padding: 2rem;
            border-radius: 10px;
        }
        .right-section {
            flex: 1;
            padding: 3rem;
        }
        .logo-section {
            text-align: center;
            margin-bottom: 2rem;
        }
        .logo-section img {
            width: 150px;
        }
        .right-section-inner {
            max-width: 400px;
            margin: auto;
        }
        .login-head h3 {
            font-weight: 600;
            color: #e50914;
            margin-bottom: 1rem;
            text-align: center;
        }
        .form-inner {
            background: #333;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .form-group {
            margin-bottom: 1.5rem;
        }
        .form-group label {
            display: block;
            font-size: 1rem;
            color: #bbb;
            margin-bottom: 0.5rem;
        }
        .form-control {
            width: 100%;
            padding: 0.75rem;
            font-size: 1rem;
            border: 1px solid #555;
            border-radius: 4px;
            outline: none;
            transition: border-color 0.3s;
        }
        .form-control:focus {
            border-color: #e50914;
            box-shadow: 0 0 5px rgba(229, 9, 20, 0.5);
        }
        .sumt-btn {
            text-align: center;
            margin-top: 1.5rem;
        }
        .sumt-btn button {
            width: 100%;
            padding: 0.75rem;
            font-size: 1rem;
            font-weight: 600;
            color: #fff;
            background: #e50914;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .sumt-btn button:hover {
            background-color: #c40612;
            transform: translateY(-2px);
        }
        .sumt-btn button:active {
            transform: translateY(0);
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
                    <form action="dologin" method="post" autocomplete="off">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input id="username" name="username" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input id="password" name="password" type="password" class="form-control" required>
                        </div>
                        <div class="sumt-btn">
                            <button type="submit">Log In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
