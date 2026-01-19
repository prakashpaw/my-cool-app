
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to the DevOps Dungeon</title>
    <style>
        body {
            background-color: black;
            color: red;
            font-family: 'Courier New', monospace;
            text-align: center;
            padding-top: 100px;
        }
        h1 {
            font-size: 60px;
            text-shadow: 2px 2px 10px #ff0000;
            animation: flicker 1s infinite;
        }
        @keyframes flicker {
            0% { opacity: 1; }
            50% { opacity: 0.3; }
            100% { opacity: 1; }
        }
        .warning {
            font-size: 24px;
            color: #ffcc00;
            margin-top: 20px;
            animation: pulse 1.5s infinite;
        }
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.2); }
            100% { transform: scale(1); }
        }
        .tools {
            margin-top: 50px;
            font-size: 20px;
            color: #00ff00;
        }
    </style>
</head>
<body>
    <h1>☠ DEVOPS IS gonna COMING FOR YOU ☠</h1>
    <div class="warning">Prepare for Jenkins, Docker, Kubernetes... and beyond!</div>
    <div class="tools">
        <p>They say: <strong>"Just one command"</strong>... but then comes YAML, CI/CD, and pipelines!</p>
        <p>Can you survive the <span style="color:#ff0000;">infinite logs</span> and <span style="color:#ffcc00;">cryptic errors</span>?</p>
    </div>
    <div style="margin-top:50px;">
        <img src="https://cdn.pixabay.com/photo/2016/03/31/19/56/horror-1297226_960_720.png" alt="Scary DevOps" width="300">
    </div>
</body>
</html>

