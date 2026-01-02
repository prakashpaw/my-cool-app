<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DevOps Pipeline | Production</title>
    <style>
        :root {
            --primary: #00f2fe;
            --secondary: #4facfe;
            --bg: #0f172a;
            --card-bg: rgba(30, 41, 59, 0.7);
        }
        body {
            margin: 0;
            padding: 0;
            font-family: 'Inter', -apple-system, sans-serif;
            background: radial-gradient(circle at top right, #1e293b, #0f172a);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .dashboard {
            background: var(--card-bg);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 24px;
            padding: 40px;
            width: 450px;
            text-align: center;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }
        .status-header {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            margin-bottom: 20px;
        }
        .pulse {
            width: 12px;
            height: 12px;
            background: #22c55e;
            border-radius: 50%;
            box-shadow: 0 0 0 rgba(34, 197, 94, 0.4);
            animation: pulse-green 2s infinite;
        }
        @keyframes pulse-green {
            0% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(34, 197, 94, 0.7); }
            70% { transform: scale(1); box-shadow: 0 0 0 10px rgba(34, 197, 94, 0); }
            100% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(34, 197, 94, 0); }
        }
        h1 {
            font-size: 2rem;
            margin: 0;
            background: linear-gradient(to right, var(--primary), var(--secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            letter-spacing: -1px;
        }
        .stats {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            margin: 30px 0;
        }
        .stat-box {
            background: rgba(255, 255, 255, 0.05);
            padding: 15px;
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, 0.05);
        }
        .stat-label { font-size: 0.75rem; color: #94a3b8; text-transform: uppercase; }
        .stat-value { font-size: 1rem; font-weight: bold; margin-top: 5px; color: var(--primary); }
        .footer {
            margin-top: 30px;
            font-size: 0.8rem;
            color: #64748b;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 20px;
        }
        code { color: #f472b6; }
    </style>
</head>
<body>
    <div class="dashboard">
        <div class="status-header">
            <div class="pulse"></div>
            <span style="color: #22c55e; font-weight: 600; letter-spacing: 1px;">SYSTEM ONLINE</span>
        </div>
        <h1>DevOps Pipeline Alpha</h1>
        <p style="color: #94a3b8;">Containerized Deployment Successful</p>
        
        <div class="stats">
            <div class="stat-box">
                <div class="stat-label">Environment</div>
                <div class="stat-value">Tomcat 9 / Docker</div>
            </div>
            <div class="stat-box">
                <div class="stat-label">Build Tool</div>
                <div class="stat-value">Maven / Jenkins</div>
            </div>
        </div>

        <div class="footer">
            Deployed by <code>This has been deployed by Prakash Pawar, He is learning DevOps to it core</code> via SSH keys<br>
            Current Context: <strong>/my-cool-app</strong>
        </div>
    </div>
</body>
</html>
