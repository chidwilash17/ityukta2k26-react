<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.Map" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <% @SuppressWarnings("unchecked") Map<String, Object> event = (Map<String, Object>)
                    request.getAttribute("event");
                    String eventName = event != null ? (String) event.get("name") : "Event";
                    %>
                    <meta name="description" content="<%= event != null ? event.get(" description")
                        : "Event details for ITYUKTA 2K26" %>">
                    <title>
                        <%= eventName %> - ITYUKTA 2K26
                    </title>

                    <!-- Google Fonts -->
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Outfit:wght@300;400;500;600;700;800&display=swap"
                        rel="stylesheet">

                    <!-- Stylesheets -->
                    <link rel="stylesheet" href="css/style.css">

                    <style>
                        .event-detail-page {
                            padding: 140px 0 80px;
                        }

                        .event-detail-grid {
                            display: grid;
                            grid-template-columns: 2fr 1fr;
                            gap: 48px;
                            align-items: start;
                        }

                        .event-main {
                            background: var(--bg-glass);
                            border: 1px solid var(--border-glass);
                            border-radius: 24px;
                            padding: 48px;
                            backdrop-filter: blur(10px);
                        }

                        .event-header {
                            display: flex;
                            align-items: flex-start;
                            gap: 24px;
                            margin-bottom: 32px;
                            padding-bottom: 32px;
                            border-bottom: 1px solid var(--border-glass);
                        }

                        .event-icon-large {
                            width: 100px;
                            height: 100px;
                            background: var(--primary-gradient);
                            border-radius: 24px;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            font-size: 3rem;
                            flex-shrink: 0;
                        }

                        .event-header-content h1 {
                            font-family: var(--font-display);
                            font-size: 2.5rem;
                            font-weight: 700;
                            margin-bottom: 12px;
                        }

                        .event-category-badge {
                            display: inline-block;
                            padding: 6px 16px;
                            border-radius: 50px;
                            font-size: 0.8rem;
                            font-weight: 600;
                            text-transform: uppercase;
                            letter-spacing: 1px;
                            margin-bottom: 12px;
                        }

                        .event-category-badge.technical {
                            background: rgba(0, 212, 255, 0.15);
                            color: var(--neon-blue);
                        }

                        .event-category-badge.workshop {
                            background: rgba(191, 90, 242, 0.15);
                            color: var(--neon-purple);
                        }

                        .event-category-badge.cultural {
                            background: rgba(255, 107, 157, 0.15);
                            color: var(--neon-pink);
                        }

                        .event-category-badge.fun {
                            background: rgba(255, 159, 10, 0.15);
                            color: var(--neon-orange);
                        }

                        .event-short-desc {
                            color: var(--text-secondary);
                            font-size: 1.1rem;
                        }

                        .event-section {
                            margin-bottom: 40px;
                        }

                        .event-section:last-child {
                            margin-bottom: 0;
                        }

                        .event-section h2 {
                            font-size: 1.5rem;
                            font-weight: 600;
                            margin-bottom: 20px;
                            display: flex;
                            align-items: center;
                            gap: 12px;
                        }

                        .event-section h2 span {
                            font-size: 1.25rem;
                        }

                        .event-section p {
                            color: var(--text-secondary);
                            line-height: 1.8;
                            font-size: 1.05rem;
                        }

                        .event-list {
                            list-style: none;
                        }

                        .event-list li {
                            display: flex;
                            align-items: flex-start;
                            gap: 12px;
                            padding: 12px 0;
                            color: var(--text-secondary);
                            border-bottom: 1px solid var(--border-glass);
                        }

                        .event-list li:last-child {
                            border-bottom: none;
                        }

                        .event-list li::before {
                            content: '✓';
                            color: var(--neon-green);
                            font-weight: bold;
                            flex-shrink: 0;
                        }

                        .prizes-list li::before {
                            content: '🏆';
                        }

                        .topics-list li::before {
                            content: '📌';
                        }

                        .event-sidebar {
                            position: sticky;
                            top: 100px;
                        }

                        .sidebar-card {
                            background: var(--bg-glass);
                            border: 1px solid var(--border-glass);
                            border-radius: 24px;
                            padding: 32px;
                            backdrop-filter: blur(10px);
                            margin-bottom: 24px;
                        }

                        .sidebar-card h3 {
                            font-size: 1.25rem;
                            font-weight: 600;
                            margin-bottom: 24px;
                            padding-bottom: 16px;
                            border-bottom: 1px solid var(--border-glass);
                        }

                        .sidebar-info-item {
                            display: flex;
                            align-items: center;
                            gap: 16px;
                            padding: 16px 0;
                            border-bottom: 1px solid var(--border-glass);
                        }

                        .sidebar-info-item:last-child {
                            border-bottom: none;
                        }

                        .sidebar-info-icon {
                            font-size: 1.5rem;
                        }

                        .sidebar-info-content {
                            flex: 1;
                        }

                        .sidebar-info-label {
                            font-size: 0.8rem;
                            color: var(--text-muted);
                            text-transform: uppercase;
                            letter-spacing: 1px;
                        }

                        .sidebar-info-value {
                            font-weight: 600;
                            color: var(--text-primary);
                            font-size: 1.1rem;
                        }

                        .sidebar-price {
                            text-align: center;
                            padding: 24px;
                            background: var(--bg-secondary);
                            border-radius: 16px;
                            margin-bottom: 24px;
                        }

                        .sidebar-price-label {
                            font-size: 0.9rem;
                            color: var(--text-muted);
                            margin-bottom: 8px;
                        }

                        .sidebar-price-value {
                            font-family: var(--font-display);
                            font-size: 3rem;
                            font-weight: 700;
                            background: var(--primary-gradient);
                            -webkit-background-clip: text;
                            -webkit-text-fill-color: transparent;
                            background-clip: text;
                        }

                        .sidebar-price-note {
                            font-size: 0.85rem;
                            color: var(--text-muted);
                            margin-top: 8px;
                        }

                        .coordinator-card {
                            display: flex;
                            align-items: center;
                            gap: 16px;
                            padding: 20px;
                            background: var(--bg-secondary);
                            border-radius: 16px;
                        }

                        .coordinator-avatar {
                            width: 56px;
                            height: 56px;
                            background: var(--accent-gradient);
                            border-radius: 50%;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            font-size: 1.5rem;
                        }

                        .coordinator-info h4 {
                            font-weight: 600;
                            margin-bottom: 4px;
                        }

                        .coordinator-info p {
                            font-size: 0.9rem;
                            color: var(--text-muted);
                        }

                        .back-link {
                            display: inline-flex;
                            align-items: center;
                            gap: 8px;
                            color: var(--text-secondary);
                            text-decoration: none;
                            margin-bottom: 32px;
                            font-size: 0.95rem;
                            transition: var(--transition-fast);
                        }

                        .back-link:hover {
                            color: var(--neon-purple);
                        }

                        @media (max-width: 1024px) {
                            .event-detail-grid {
                                grid-template-columns: 1fr;
                            }

                            .event-sidebar {
                                position: static;
                            }
                        }

                        @media (max-width: 768px) {
                            .event-header {
                                flex-direction: column;
                                text-align: center;
                            }

                            .event-icon-large {
                                margin: 0 auto;
                            }

                            .event-main {
                                padding: 32px 24px;
                            }
                        }
                    </style>
        </head>

        <body>
            <!-- Background Animation -->
            <div class="bg-animation"></div>
            <div class="floating-orb orb-1"></div>
            <div class="floating-orb orb-2"></div>

            <!-- Navigation -->
            <nav class="navbar scrolled" id="navbar">
                <div class="nav-container">
                    <a href="index.jsp" class="nav-logo">
                        <div class="nav-logo-icon">IT</div>
                        <span class="nav-logo-text">ITYUKTA 2K26</span>
                    </a>

                    <ul class="nav-menu" id="navMenu">
                        <li><a href="index.jsp#home" class="nav-link">Home</a></li>
                        <li><a href="index.jsp#about" class="nav-link">About</a></li>
                        <li><a href="events" class="nav-link active">Events</a></li>
                        <li><a href="index.jsp#schedule" class="nav-link">Schedule</a></li>
                        <li><a href="register" class="nav-link">Register</a></li>
                        <li><a href="index.jsp#contact" class="nav-link">Contact</a></li>
                        <li><a href="register" class="nav-link nav-cta">Register Now</a></li>
                    </ul>

                    <button class="nav-toggle" id="navToggle" aria-label="Toggle navigation">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                </div>
            </nav>

            <% if (event !=null) { String category=(String) event.get("category"); String badgeClass="technical" ; if
                ("workshop".equals(category)) badgeClass="workshop" ; else if ("cultural".equals(category))
                badgeClass="cultural" ; else if ("fun".equals(category)) badgeClass="fun" ; Integer fee=(Integer)
                event.get("fee"); String[] rules=(String[]) event.get("rules"); String[] prizes=(String[])
                event.get("prizes"); String[] topics=(String[]) event.get("topics"); String[] prerequisites=(String[])
                event.get("prerequisites"); %>

                <!-- Event Detail Content -->
                <section class="event-detail-page">
                    <div class="container">
                        <a href="events" class="back-link">
                            ← Back to All Events
                        </a>

                        <div class="event-detail-grid">
                            <!-- Main Content -->
                            <div class="event-main">
                                <div class="event-header">
                                    <div class="event-icon-large">
                                        <%= event.get("icon") %>
                                    </div>
                                    <div class="event-header-content">
                                        <span class="event-category-badge <%= badgeClass %>">
                                            <%= category %>
                                        </span>
                                        <h1>
                                            <%= event.get("name") %>
                                        </h1>
                                        <p class="event-short-desc">
                                            <%= event.get("description") %>
                                        </p>
                                    </div>
                                </div>

                                <div class="event-section">
                                    <h2><span>📖</span> About This Event</h2>
                                    <p>
                                        <%= event.get("longDescription") %>
                                    </p>
                                </div>

                                <% if (rules !=null && rules.length> 0) { %>
                                    <div class="event-section">
                                        <h2><span>📋</span> Rules & Guidelines</h2>
                                        <ul class="event-list">
                                            <% for (String rule : rules) { %>
                                                <li>
                                                    <%= rule %>
                                                </li>
                                                <% } %>
                                        </ul>
                                    </div>
                                    <% } %>

                                        <% if (topics !=null && topics.length> 0) { %>
                                            <div class="event-section">
                                                <h2><span>📚</span> Topics Covered</h2>
                                                <ul class="event-list topics-list">
                                                    <% for (String topic : topics) { %>
                                                        <li>
                                                            <%= topic %>
                                                        </li>
                                                        <% } %>
                                                </ul>
                                            </div>
                                            <% } %>

                                                <% if (prerequisites !=null && prerequisites.length> 0) { %>
                                                    <div class="event-section">
                                                        <h2><span>⚡</span> Prerequisites</h2>
                                                        <ul class="event-list">
                                                            <% for (String prereq : prerequisites) { %>
                                                                <li>
                                                                    <%= prereq %>
                                                                </li>
                                                                <% } %>
                                                        </ul>
                                                    </div>
                                                    <% } %>

                                                        <% if (prizes !=null && prizes.length> 0) { %>
                                                            <div class="event-section">
                                                                <h2><span>🏆</span> Prizes</h2>
                                                                <ul class="event-list prizes-list">
                                                                    <% for (String prize : prizes) { %>
                                                                        <li>
                                                                            <%= prize %>
                                                                        </li>
                                                                        <% } %>
                                                                </ul>
                                                            </div>
                                                            <% } %>
                            </div>

                            <!-- Sidebar -->
                            <div class="event-sidebar">
                                <div class="sidebar-card">
                                    <h3>Event Details</h3>

                                    <div class="sidebar-info-item">
                                        <span class="sidebar-info-icon">📅</span>
                                        <div class="sidebar-info-content">
                                            <div class="sidebar-info-label">Date</div>
                                            <div class="sidebar-info-value">
                                                <%= event.get("date") %>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="sidebar-info-item">
                                        <span class="sidebar-info-icon">⏰</span>
                                        <div class="sidebar-info-content">
                                            <div class="sidebar-info-label">Time</div>
                                            <div class="sidebar-info-value">
                                                <%= event.get("time") %>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="sidebar-info-item">
                                        <span class="sidebar-info-icon">⏱️</span>
                                        <div class="sidebar-info-content">
                                            <div class="sidebar-info-label">Duration</div>
                                            <div class="sidebar-info-value">
                                                <%= event.get("duration") %>
                                            </div>
                                        </div>
                                    </div>

                                    <% if (event.get("venue") !=null) { %>
                                        <div class="sidebar-info-item">
                                            <span class="sidebar-info-icon">📍</span>
                                            <div class="sidebar-info-content">
                                                <div class="sidebar-info-label">Venue</div>
                                                <div class="sidebar-info-value">
                                                    <%= event.get("venue") %>
                                                </div>
                                            </div>
                                        </div>
                                        <% } %>

                                            <div class="sidebar-info-item">
                                                <span class="sidebar-info-icon">👥</span>
                                                <div class="sidebar-info-content">
                                                    <div class="sidebar-info-label">Team Size</div>
                                                    <div class="sidebar-info-value">
                                                        <%= event.get("teamSize") %>
                                                    </div>
                                                </div>
                                            </div>

                                            <% if (event.get("seats") !=null) { %>
                                                <div class="sidebar-info-item">
                                                    <span class="sidebar-info-icon">💺</span>
                                                    <div class="sidebar-info-content">
                                                        <div class="sidebar-info-label">Available Seats</div>
                                                        <div class="sidebar-info-value">
                                                            <%= event.get("seats") %> seats
                                                        </div>
                                                    </div>
                                                </div>
                                                <% } %>
                                </div>

                                <div class="sidebar-card">
                                    <div class="sidebar-price">
                                        <div class="sidebar-price-label">Registration Fee</div>
                                        <div class="sidebar-price-value">
                                            <% if (fee !=null && fee> 0) { %>
                                                ₹<%= fee %>
                                                    <% } else { %>
                                                        Free
                                                        <% } %>
                                        </div>
                                        <div class="sidebar-price-note">General registration required</div>
                                    </div>

<a href="register?event=<%= org.apache.commons.text.StringEscapeUtils.escapeHtml4(request.getParameter("id")) %>" class="btn btn-primary" style="width: 100%;">
                                        style="width: 100%;">
                                        Register for Event
                                        <span class="btn-icon">→</span>
                                    </a>
                                </div>

                                <% if (event.get("coordinator") !=null) { %>
                                    <div class="sidebar-card">
                                        <h3>Event Coordinator</h3>
                                        <div class="coordinator-card">
                                            <div class="coordinator-avatar">👤</div>
                                            <div class="coordinator-info">
                                                <h4>
                                                    <%= event.get("coordinator") %>
                                                </h4>
                                                <p>
                                                    <%= event.get("contact") %>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                            </div>
                        </div>
                    </div>
                </section>

                <% } else { %>
                    <!-- Event Not Found -->
                    <section class="event-detail-page" style="text-align: center;">
                        <div class="container">
                            <div style="padding: 100px 0;">
                                <div style="font-size: 5rem; margin-bottom: 24px;">🔍</div>
                                <h1 style="font-size: 2rem; margin-bottom: 16px;">Event Not Found</h1>
                                <p style="color: var(--text-secondary); margin-bottom: 32px;">The event you're looking
                                    for doesn't exist or has been removed.</p>
                                <a href="events" class="btn btn-primary">Browse All Events →</a>
                            </div>
                        </div>
                    </section>
                    <% } %>

                        <!-- Footer -->
                        <footer class="footer" style="padding: 32px 0;">
                            <div class="container">
                                <div class="footer-bottom" style="border-top: none; padding-top: 0;">
                                    <p class="footer-copyright">
                                        © 2026 ITYUKTA. Made with ❤️ by <a href="#">IT Department, JNTU-GV</a>
                                    </p>
                                </div>
                            </div>
                        </footer>

                        <script>
                            // Mobile menu
                            document.getElementById('navToggle').addEventListener('click', function () {
                                document.getElementById('navMenu').classList.toggle('active');
                            });
                        </script>
        </body>

        </html>