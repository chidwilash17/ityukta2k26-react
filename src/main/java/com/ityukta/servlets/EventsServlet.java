

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet for displaying event details
 * Provides detailed information about each event
 */
@WebServlet("/events")
public class EventsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // In-memory event data (in production, fetch from database)
    private static final Map<String, Map<String, Object>> EVENTS = new HashMap<>();
    
    static {
        // Initialize events data
        initializeEvents();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String eventId = request.getParameter("id");
        
        if (eventId != null && !eventId.isEmpty()) {
            // Show single event details
            Map<String, Object> event = EVENTS.get(eventId);
            
            if (event != null) {
                request.setAttribute("event", event);
                request.getRequestDispatcher("/WEB-INF/views/event-detail.jsp").forward(request, response);
            } else {
                // Event not found, redirect to events list
                response.sendRedirect("events");
            }
        } else {
            // Show all events
            request.setAttribute("allEvents", EVENTS);
            request.setAttribute("technicalEvents", getEventsByCategory("technical"));
            request.setAttribute("workshops", getEventsByCategory("workshop"));
            request.setAttribute("culturalEvents", getEventsByCategory("cultural"));
            request.setAttribute("funEvents", getEventsByCategory("fun"));
            
            request.getRequestDispatcher("/WEB-INF/views/events.jsp").forward(request, response);
        }
    }
    
    /**
     * Get events filtered by category
     */
    private List<Map<String, Object>> getEventsByCategory(String category) {
        List<Map<String, Object>> filtered = new ArrayList<>();
        
        for (Map.Entry<String, Map<String, Object>> entry : EVENTS.entrySet()) {
            Map<String, Object> event = entry.getValue();
            if (category.equals(event.get("category"))) {
                Map<String, Object> eventWithId = new HashMap<>(event);
                eventWithId.put("id", entry.getKey());
                filtered.add(eventWithId);
            }
        }
        
        return filtered;
    }
    
    /**
     * Initialize events data
     */
    private static void initializeEvents() {
        // Code Crackathon
        Map<String, Object> codeCrackathon = new HashMap<>();
        codeCrackathon.put("name", "Code Crackathon");
        codeCrackathon.put("category", "technical");
        codeCrackathon.put("icon", "💻");
        codeCrackathon.put("description", "Test your coding skills with challenging problem sets. Crack the code, win the crown!");
codeCrackathon.put("longDescription", System.getenv("EVENT_LONG_DESCRIPTION"));
        codeCrackathon.put("date", "February 24, 2026");
        codeCrackathon.put("time", "2:00 PM - 4:00 PM");
        codeCrackathon.put("duration", "2 Hours");
        codeCrackathon.put("venue", "LH-27");
        codeCrackathon.put("fee", 80);
        codeCrackathon.put("teamSize", "Individual");
        codeCrackathon.put("prizes", new String[]{"1st Prize: ₹3,000", "2nd Prize: ₹2,000", "3rd Prize: ₹1,000"});
        codeCrackathon.put("rules", new String[]{
            "Individual participation only",
            "Languages allowed: C, C++, Java, Python",
            "Multiple elimination rounds",
            "No external resources or internet access",
            "Decision of judges is final"
        });
        codeCrackathon.put("coordinator", "Kiran Kumar");
        codeCrackathon.put("contact", "+91 98765 43210");
        EVENTS.put("code-crackathon", codeCrackathon);
        
        // Project Expo
        Map<String, Object> projectExpo = new HashMap<>();
        projectExpo.put("name", "Project Expo");
        projectExpo.put("category", "technical");
        projectExpo.put("icon", "🏆");
        projectExpo.put("description", "Showcase your innovative projects and compete with the brightest minds.");
        projectExpo.put("longDescription", "Project Expo is the flagship event that brings together innovative minds to showcase their groundbreaking projects. Whether it's a software application, hardware prototype, or a combination of both, this is your platform to shine. Present your ideas to industry experts and compete for exciting prizes.");
        projectExpo.put("date", "February 23-24, 2026");
        projectExpo.put("time", "10:00 AM onwards");
        projectExpo.put("duration", "2 Days");
        projectExpo.put("venue", "LH-33");
        projectExpo.put("fee", 120);
        projectExpo.put("teamSize", "1-4 members");
        projectExpo.put("prizes", new String[]{"1st Prize: ₹5,000", "2nd Prize: ₹3,000", "3rd Prize: ₹2,000"});
        projectExpo.put("rules", new String[]{
            "Team size: 1 to 4 members",
            "Bring working demo model",
            "Prepare PPT (max 10 slides)",
            "Original projects only - no plagiarism",
            "Documentation required"
        });
        projectExpo.put("coordinator", "Chaitanya P");
        projectExpo.put("contact", "+91 87654 32109");
        EVENTS.put("project-expo", projectExpo);
        
        // Knowledge Knockout
        Map<String, Object> knowledgeKnockout = new HashMap<>();
        knowledgeKnockout.put("name", "Knowledge Knockout");
        knowledgeKnockout.put("category", "technical");
        knowledgeKnockout.put("icon", "🧠");
        knowledgeKnockout.put("description", "Put your technical knowledge to the ultimate test in this quiz showdown.");
        knowledgeKnockout.put("longDescription", "Knowledge Knockout is an engaging technical quiz that tests your expertise across various domains including programming, databases, networks, AI/ML, and more. Select your preferred topic and prove your mastery through an objective examination format.");
        knowledgeKnockout.put("date", "February 23, 2026");
        knowledgeKnockout.put("time", "12:00 PM - 1:00 PM");
        knowledgeKnockout.put("duration", "1 Hour");
        knowledgeKnockout.put("venue", "LH-38");
        knowledgeKnockout.put("fee", 70);
        knowledgeKnockout.put("teamSize", "Individual");
        knowledgeKnockout.put("prizes", new String[]{"1st Prize: ₹2,000", "2nd Prize: ₹1,500", "3rd Prize: ₹1,000"});
        knowledgeKnockout.put("rules", new String[]{
            "Individual participation",
            "Choose 1 subject from 3 options",
            "30 minutes for objective exam",
            "No negative marking",
            "Tie-breaker round if needed"
        });
        knowledgeKnockout.put("coordinator", "Ganesh S");
        knowledgeKnockout.put("contact", "+91 76543 21098");
        EVENTS.put("knowledge-knockout", knowledgeKnockout);
        
        // 24-Hour Hackathon
        Map<String, Object> hackathon = new HashMap<>();
        hackathon.put("name", "24-Hour Hackathon");
        hackathon.put("category", "technical");
        hackathon.put("icon", "🚀");
        hackathon.put("description", "Build innovative solutions in 24 hours. The ultimate test of skills and endurance!");
        hackathon.put("longDescription", "The ultimate test for developers! Work non-stop for 24 hours to build innovative solutions to real-world problems. Form your team, choose a problem statement, and code your way to victory. Mentors will be available throughout to guide you.");
        hackathon.put("date", "February 23-24, 2026");
        hackathon.put("time", "2:00 PM - 2:00 PM (next day)");
        hackathon.put("duration", "24 Hours");
        hackathon.put("venue", "Computer Lab Complex");
        hackathon.put("fee", 400);
        hackathon.put("teamSize", "2-4 members");
        hackathon.put("prizes", new String[]{"1st Prize: ₹15,000", "2nd Prize: ₹10,000", "3rd Prize: ₹5,000", "Best Innovation: ₹3,000"});
        hackathon.put("rules", new String[]{
            "Team size: 2 to 4 members",
            "At least one team member must be present at all times",
            "Use of pre-existing code libraries allowed",
            "No pre-built projects",
            "All code must be written during the hackathon",
            "Final presentation to judges mandatory"
        });
        hackathon.put("coordinator", "Tech Team ITYUKTA");
        hackathon.put("contact", "+91 65432 10987");
        EVENTS.put("hackathon", hackathon);
        
        // Generative AI Workshop
        Map<String, Object> aiWorkshop = new HashMap<>();
        aiWorkshop.put("name", "Generative AI Workshop");
        aiWorkshop.put("category", "workshop");
        aiWorkshop.put("icon", "🤖");
        aiWorkshop.put("description", "Master the art of AI with hands-on experience in building generative models.");
        aiWorkshop.put("longDescription", "Dive deep into the fascinating world of Generative AI. Learn about Large Language Models, image generation, and how to build your own AI applications. This hands-on workshop covers everything from basics to advanced concepts with practical exercises.");
        aiWorkshop.put("date", "February 23, 2026");
        aiWorkshop.put("time", "10:30 AM - 2:30 PM");
        aiWorkshop.put("duration", "4 Hours");
        aiWorkshop.put("venue", "Seminar Hall-1");
        aiWorkshop.put("fee", 200);
        aiWorkshop.put("teamSize", "Individual");
        aiWorkshop.put("seats", 50);
        aiWorkshop.put("instructor", "Industry Expert");
        aiWorkshop.put("prerequisites", new String[]{"Basic Python knowledge", "Laptop with Python installed", "Google account for Colab"});
        aiWorkshop.put("topics", new String[]{"Introduction to Generative AI", "Understanding LLMs", "Prompt Engineering", "Building AI Applications", "Hands-on Projects"});
        EVENTS.put("ai-workshop", aiWorkshop);
        
        // Full Stack Workshop
        Map<String, Object> fullstackWorkshop = new HashMap<>();
        fullstackWorkshop.put("name", "Full Stack Development");
        fullstackWorkshop.put("category", "workshop");
        fullstackWorkshop.put("icon", "⚛️");
        fullstackWorkshop.put("description", "Build modern web applications with React, Node.js, and MongoDB.");
        fullstackWorkshop.put("longDescription", "Learn to build complete web applications from scratch. This comprehensive workshop covers frontend development with React.js, backend with Node.js/Express, and database with MongoDB. Build a real project by the end of the session!");
        fullstackWorkshop.put("date", "February 24, 2026");
        fullstackWorkshop.put("time", "9:00 AM - 2:00 PM");
        fullstackWorkshop.put("duration", "5 Hours");
        fullstackWorkshop.put("venue", "Seminar Hall-2");
        fullstackWorkshop.put("fee", 250);
        fullstackWorkshop.put("teamSize", "Individual");
        fullstackWorkshop.put("seats", 40);
        fullstackWorkshop.put("instructor", "Senior Developer");
        fullstackWorkshop.put("prerequisites", new String[]{"Basic HTML, CSS, JavaScript", "Laptop with Node.js installed", "VS Code or similar IDE"});
        fullstackWorkshop.put("topics", new String[]{"React.js Fundamentals", "State Management", "Node.js & Express", "MongoDB Integration", "RESTful APIs", "Deployment"});
        EVENTS.put("fullstack-workshop", fullstackWorkshop);
        
        // Cultural Night
        Map<String, Object> culturalNight = new HashMap<>();
        culturalNight.put("name", "Cultural Night");
        culturalNight.put("category", "cultural");
        culturalNight.put("icon", "🎭");
        culturalNight.put("description", "An evening of music, dance, and drama that celebrates creativity and talent.");
        culturalNight.put("longDescription", "Experience an unforgettable evening of spectacular performances! Cultural Night features the best talent from across the region with mesmerizing dance performances, soulful music, stand-up comedy, and dramatic acts. A perfect blend of entertainment and artistry.");
        culturalNight.put("date", "February 23, 2026");
        culturalNight.put("time", "6:00 PM - 10:00 PM");
        culturalNight.put("duration", "4 Hours");
        culturalNight.put("venue", "Open Air Theatre");
        culturalNight.put("fee", 0);
        culturalNight.put("teamSize", "Free with event pass");
        culturalNight.put("performances", new String[]{"Classical Dance", "Western Dance", "Band Performance", "Stand-up Comedy", "Drama", "Fashion Show"});
        EVENTS.put("cultural-night", culturalNight);
        
        // Gaming Arena
        Map<String, Object> gaming = new HashMap<>();
        gaming.put("name", "Gaming Arena");
        gaming.put("category", "fun");
        gaming.put("icon", "🎮");
        gaming.put("description", "Compete in popular games including BGMI, Valorant, and more!");
        gaming.put("longDescription", "Get ready for intense gaming action! The Gaming Arena features tournaments in popular games. Show off your skills, compete with fellow gamers, and win exciting prizes. Multiple games, multiple tournaments, unlimited fun!");
        gaming.put("date", "February 23-24, 2026");
        gaming.put("time", "All Day");
        gaming.put("duration", "2 Days");
        gaming.put("venue", "Gaming Zone");
        gaming.put("fee", 100);
        gaming.put("teamSize", "Varies by game");
        gaming.put("games", new String[]{"BGMI (Squad)", "Valorant (5v5)", "FIFA 24", "Need for Speed", "Tekken 8"});
        gaming.put("prizes", new String[]{"Per game prizes", "Overall gaming champion award"});
        EVENTS.put("gaming", gaming);
        
        // Treasure Hunt
        Map<String, Object> treasureHunt = new HashMap<>();
        treasureHunt.put("name", "Treasure Hunt");
        treasureHunt.put("category", "fun");
        treasureHunt.put("icon", "🗺️");
        treasureHunt.put("description", "Embark on an exciting adventure to find hidden treasures across the campus!");
        treasureHunt.put("longDescription", "Get ready for an adventure of a lifetime! Solve puzzles, decode clues, and race against time to find the hidden treasure. Work as a team, explore the campus, and prove you have what it takes to be the ultimate treasure hunters!");
        treasureHunt.put("date", "February 24, 2026");
        treasureHunt.put("time", "11:00 AM - 1:00 PM");
        treasureHunt.put("duration", "2 Hours");
        treasureHunt.put("venue", "Campus Wide");
        treasureHunt.put("fee", 150);
        treasureHunt.put("teamSize", "4 members");
        treasureHunt.put("prizes", new String[]{"1st Prize: ₹4,000", "2nd Prize: ₹2,500", "3rd Prize: ₹1,500"});
        treasureHunt.put("rules", new String[]{
            "Teams of exactly 4 members",
            "All team members must participate",
            "No running inside buildings",
            "Clues must not be shared with other teams",
            "Use of phones only for receiving clues"
        });
        EVENTS.put("treasure-hunt", treasureHunt);
    }
}
