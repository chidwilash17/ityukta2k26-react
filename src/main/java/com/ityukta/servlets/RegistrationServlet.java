package com.ityukta.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ityukta.util.DatabaseUtil;

/**
 * Servlet for handling event registrations
 * Handles both displaying the registration form and processing submissions
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Display registration form based on pass type
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String passType = request.getParameter("type");
        if (passType == null || passType.isEmpty()) {
            passType = "full"; // Default pass type
        }
        
        // Set pass details based on type
        String passName = "";
        int passFee = 0;
        String passDescription = "";
        
        switch (passType.toLowerCase()) {
            case "day":
                passName = "Day Pass";
                passFee = 150;
                passDescription = "Single day access to all events (1 day)";
                break;
            case "full":
                passName = "Full Pass";
                passFee = 250;
                passDescription = "Complete 2-day access with all benefits";
                break;
            case "premium":
                passName = "Premium Pass";
                passFee = 600;
                passDescription = "VIP experience with accommodation included";
                break;
            default:
                passName = "Full Pass";
                passFee = 250;
                passDescription = "Complete 2-day access with all benefits";
        }
        
        request.setAttribute("passType", passType);
        request.setAttribute("passName", passName);
        request.setAttribute("passFee", passFee);
        request.setAttribute("passDescription", passDescription);
        
        // Forward to registration JSP
        request.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
    }

    /**
     * Process registration form submission
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        // Get form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String college = request.getParameter("college");
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        String passType = request.getParameter("passType");
        String[] events = request.getParameterValues("events");
        
        // Validate required fields
        if (name == null || email == null || phone == null || 
            name.trim().isEmpty() || email.trim().isEmpty() || phone.trim().isEmpty()) {
            request.setAttribute("error", "Please fill in all required fields.");
            doGet(request, response);
            return;
        }
        
        // Validate email format
        if (!isValidEmail(email)) {
            request.setAttribute("error", "Please enter a valid email address.");
            doGet(request, response);
            return;
        }
        
        // Validate phone number
        if (!isValidPhone(phone)) {
            request.setAttribute("error", "Please enter a valid 10-digit phone number.");
            doGet(request, response);
            return;
        }
        
        // Generate registration ID
        String registrationId = generateRegistrationId();
        
        // For now, store in session (in production, save to database)
        request.getSession().setAttribute("registrationId", registrationId);
        request.getSession().setAttribute("registrantName", name);
        request.getSession().setAttribute("registrantEmail", email);
        request.getSession().setAttribute("passType", passType);
        
        // Try to save to database if available
        boolean savedToDb = saveRegistration(registrationId, name, email, phone, college, year, branch, passType, events);
        
        if (savedToDb) {
            // Redirect to success page
            response.sendRedirect("registration-success?id=" + registrationId);
        } else {
            // If database not available, still show success (demo mode)
            request.setAttribute("registrationId", registrationId);
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("passType", passType);
            request.getRequestDispatcher("/WEB-INF/views/registration-success.jsp").forward(request, response);
        }
    }
    
    /**
     * Validate email format
     */
    private boolean isValidEmail(String email) {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        return email.matches(emailRegex);
    }
    
    /**
     * Validate phone number (10 digits)
     */
    private boolean isValidPhone(String phone) {
        return phone.matches("\\d{10}");
    }
    
    /**
     * Generate unique registration ID
     */
    private String generateRegistrationId() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        String timestamp = now.format(formatter);
        int random = (int) (Math.random() * 1000);
        return "ITY26-" + timestamp.substring(4) + String.format("%03d", random);
    }
    
    /**
     * Save registration to database
     */
    private boolean saveRegistration(String regId, String name, String email, String phone,
            String college, String year, String branch, String passType, String[] events) {
        
        // In demo mode, just return false to skip database
        // In production, uncomment and configure database connection
        
        /*
        String sql = "INSERT INTO registrations (registration_id, name, email, phone, college, year, branch, pass_type, events, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, regId);
            stmt.setString(2, name);
            stmt.setString(3, email);
            stmt.setString(4, phone);
            stmt.setString(5, college);
            stmt.setString(6, year);
            stmt.setString(7, branch);
            stmt.setString(8, passType);
            stmt.setString(9, events != null ? String.join(",", events) : "");
            
            int rows = stmt.executeUpdate();
            return rows > 0;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        */
        
        return false; // Demo mode
    }
}
