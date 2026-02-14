package com.ityukta.servlets;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet for handling contact form submissions
 */
@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Display contact page
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request, response);
    }

    /**
     * Process contact form submission
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        // Get form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        
        // Validate required fields
        if (name == null || email == null || subject == null || message == null ||
            name.trim().isEmpty() || email.trim().isEmpty() || 
            subject.trim().isEmpty() || message.trim().isEmpty()) {
            
            request.setAttribute("error", "Please fill in all fields.");
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("subject", subject);
            request.setAttribute("message", message);
            doGet(request, response);
            return;
        }
        
        // Validate email format
        if (!isValidEmail(email)) {
            request.setAttribute("error", "Please enter a valid email address.");
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("subject", subject);
            request.setAttribute("message", message);
            doGet(request, response);
            return;
        }
        
        // In production, save to database or send email
        // For demo, just show success message
        
        String ticketId = generateTicketId();
        
        request.setAttribute("success", true);
        request.setAttribute("ticketId", ticketId);
        request.setAttribute("submittedName", name);
        
        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request, response);
    }
    
    /**
     * Validate email format
     */
    private boolean isValidEmail(String email) {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        return email.matches(emailRegex);
    }
    
    /**
     * Generate support ticket ID
     */
    private String generateTicketId() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMddHHmm");
        String timestamp = now.format(formatter);
        int random = (int) (Math.random() * 100);
        return "TKT-" + timestamp + String.format("%02d", random);
    }
}
