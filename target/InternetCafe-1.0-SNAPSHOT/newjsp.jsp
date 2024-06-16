<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Star Rating</title>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"> <!-- Update with your actual path -->
    <style>
        .fa-star {
            font-size: 24px;
            cursor: pointer;
        }
        .fa-star.clicked {
            color: gold;
        }
        form {
            display: inline;
        }
    </style>
</head>
<body>
    <div class="star-rating">
        <%
            // Get the rating from the request parameter, if available
            String ratingParam = request.getParameter("rating");
            int rating = 0;
            if (ratingParam != null) {
                rating = Integer.parseInt(ratingParam);
            }

            // Display the stars
            for (int i = 1; i <= 5; i++) {
                String clickedClass = (i <= rating) ? "clicked" : "";
        %>
                <form action="newjsp.jsp" method="get">
                    <input type="hidden" name="rating" value="<%= i %>">
                    <button type="submit" class="fa fa-star <%= clickedClass %>"></button>
                </form>
        <%
            }
        %>
    </div>
</body>
</html>
