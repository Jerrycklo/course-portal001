<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            background-color: #3498db;
            color: white;
            padding: 30px 20px;
            text-align: center;
            border-radius: 8px;
            margin-bottom: 30px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        header p {
            margin: 10px 0 0;
            font-size: 1.2em;
            opacity: 0.9;
        }

        nav {
            background-color: #2980b9;
            border-radius: 8px;
            margin-bottom: 30px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        nav ul {
            display: flex;
            list-style: none;
            padding: 0;
            margin: 0;
            justify-content: center;
        }

        nav li {
            padding: 15px 20px;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: opacity 0.3s;
        }

        nav a:hover {
            opacity: 0.8;
        }

        .search-container {
            margin-bottom: 30px;
        }

        .search-bar {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .section-title {
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
            margin: 30px 0 20px;
            color: #2c3e50;
        }

        .course-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
        }

        .course-card {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .course-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        .course-image {
            height: 160px;
            background-color: #3498db;
            background-image: linear-gradient(135deg, #3498db, #2980b9);
        }

        .course-content {
            padding: 20px;
        }

        .course-title {
            margin-top: 0;
            margin-bottom: 10px;
            color: #2c3e50;
        }

        .course-description {
            color: #7f8c8d;
            margin-bottom: 20px;
        }

        .course-button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .course-button:hover {
            background-color: #2980b9;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin: 40px 0;
        }

        .feature {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
        }

        .feature-icon {
            font-size: 40px;
            margin-bottom: 15px;
            color: #3498db;
        }

        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 30px 0;
            margin-top: 50px;
            border-radius: 8px;
        }

        @media (max-width: 768px) {
            .course-grid {
                grid-template-columns: 1fr;
            }

            nav ul {
                flex-direction: column;
            }

            nav li {
                text-align: center;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <h1>Welcome to Course Portal</h1>
        <p>Discover amazing courses and start your learning journey</p>
    </header>

    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">All Courses</a></li>
            <li><a href="#">Learning Paths</a></li>
            <li><a href="#">Instructors</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="/login">Login</a></li>
            <li><a href="/register">Register</a></li>

        </ul>
    </nav>

    <div class="search-container">
        <input type="text" class="search-bar" placeholder="Search courses...">
    </div>

    <div class="features">
        <div class="feature">
            <div class="feature-icon">📚</div>
            <h3>Rich Course Collection</h3>
            <p>Access diverse learning content for all your educational needs</p>
        </div>
        <div class="feature">
            <div class="feature-icon">👨‍🏫</div>
            <h3>Expert Instructors</h3>
            <p>Learn from industry professionals with real-world experience</p>
        </div>
        <div class="feature">
            <div class="feature-icon">🏆</div>
            <h3>Flexible Learning</h3>
            <p>Study anytime, anywhere at your own pace</p>
        </div>
    </div>

    <h2 class="section-title">Featured Courses</h2>

    <div class="course-grid">
        <c:forEach items="${courses}" var="course">
            <div class="course-card">
                <div class="course-image"></div>
                <div class="course-content">
                    <h3 class="course-title">${course.title}</h3>
                    <p class="course-description">${course.description}</p>
                    <button class="course-button">Learn More</button>
                </div>
            </div>
        </c:forEach>
    </div>

    <footer>
        <p>&copy; 2024 Course Portal - Your Online Learning Platform</p>
        <p>Contact us: contact@courseportal.com</p>
    </footer>
</div>
</body>
</html>