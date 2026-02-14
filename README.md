# 🚀 ITYUKTA 2K26 - National Level Technical Symposium

<div align="center">

![ITYUKTA 2K26](https://img.shields.io/badge/ITYUKTA-2K26-667eea?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Servlet](https://img.shields.io/badge/Servlet-007396?style=for-the-badge&logo=java&logoColor=white)
![Tomcat](https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apache-tomcat&logoColor=black)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

**Code the Future, Shape Tomorrow**

*A premium, modern website for JNTU-GV's flagship technical symposium*

[Live Demo](#) | [Report Bug](#) | [Request Feature](#)

</div>

---

## ✨ Features

### 🎨 Premium Design
- **Futuristic UI** with glassmorphism effects
- **Cosmic color palette** - Purple, Blue, and Pink neon accents
- **Smooth animations** - Floating orbs, fade-ins, hover effects
- **Fully responsive** - Works on all devices

### 🔧 Technical Features
- **Dynamic content** via Java Servlets
- **Event filtering** by category
- **Registration system** with validation
- **Contact form** with ticket generation
- **Countdown timer** to event date
- **Schedule toggle** for multi-day events

### 📱 Pages
| Page | Description |
|------|-------------|
| **Home** | Hero, countdown, about, events, schedule, registration, contact |
| **Events** | All events with category filtering |
| **Event Detail** | Full event information with registration |
| **Register** | Multi-step registration form |
| **Contact** | Contact form with FAQ |
| **Error Pages** | Custom 404 & 500 pages |

---

## 🛠️ Tech Stack

- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Backend**: Java Servlets, JSP
- **Server**: Apache Tomcat 9+
- **Database**: MySQL 8.0 (optional)
- **Fonts**: Google Fonts (Orbitron, Outfit)

---

## 📁 Project Structure

```
ityukta2k26/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── ityukta/
│       │           ├── servlets/
│       │           │   ├── RegistrationServlet.java
│       │           │   ├── EventsServlet.java
│       │           │   └── ContactServlet.java
│       │           └── util/
│       │               └── DatabaseUtil.java
│       └── webapp/
│           ├── WEB-INF/
│           │   ├── views/
│           │   │   ├── register.jsp
│           │   │   ├── registration-success.jsp
│           │   │   ├── events.jsp
│           │   │   ├── event-detail.jsp
│           │   │   ├── contact.jsp
│           │   │   └── error/
│           │   │       ├── 404.jsp
│           │   │       └── 500.jsp
│           │   ├── lib/
│           │   └── web.xml
│           ├── css/
│           │   └── style.css
│           ├── js/
│           │   └── main.js
│           ├── images/
│           └── index.jsp
├── database/
│   └── schema.sql
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **JDK 11+** installed
- **Apache Tomcat 9+** installed
- **Eclipse IDE** (or IntelliJ IDEA)
- **MySQL 8.0** (optional, for database features)

### Installation

1. **Clone/Download the project**
   ```bash
   git clone https://github.com/yourusername/ityukta2k26.git
   ```

2. **Import into Eclipse**
   - File → Import → Existing Projects into Workspace
   - Select the `ityukta2k26` folder

3. **Add Tomcat Server**
   - Window → Preferences → Server → Runtime Environments
   - Add Apache Tomcat v9.0+

4. **Configure Build Path**
   - Right-click project → Build Path → Configure Build Path
   - Add Servlet API from Tomcat libraries

5. **Run on Server**
   - Right-click project → Run As → Run on Server
   - Select Tomcat server
   - Access at: `http://localhost:8080/ityukta2k26/`

### Database Setup (Optional)

1. Create MySQL database:
   ```bash
   mysql -u root -p < database/schema.sql
   ```

2. Update database credentials in `DatabaseUtil.java`:
   ```java
   private static final String DB_URL = "jdbc:mysql://localhost:3306/ityukta2k26";
   private static final String DB_USER = "your_username";
   private static final String DB_PASSWORD = "your_password";
   ```

3. Add MySQL JDBC Driver to `WEB-INF/lib/`

---

## 📸 Screenshots

### Home Page
*Hero section with countdown and animated background*

### Events Page
*Card-based layout with category filtering*

### Registration
*Multi-step form with real-time validation*

---

## 🎨 Customization

### Colors
Edit CSS variables in `style.css`:
```css
:root {
    --neon-purple: #bf5af2;
    --neon-blue: #00d4ff;
    --neon-pink: #ff6b9d;
    --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
}
```

### Events
Update events data in `EventsServlet.java` or add to database.

### Dates
Change event dates in:
- `index.jsp` (countdown calculation)
- `main.js` (JavaScript countdown)

---

## 📝 API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/` | GET | Home page |
| `/register` | GET | Registration form |
| `/register` | POST | Submit registration |
| `/events` | GET | All events list |
| `/events?id={id}` | GET | Event details |
| `/contact` | GET | Contact page |
| `/contact` | POST | Submit contact form |

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License.

---

## 👥 Team

**ITYUKTA 2K26 Team**
- IT Department, JNTU-GV College of Engineering
- Vizianagaram, Andhra Pradesh

---

## 📞 Contact

- **Email**: ityukta2k26@jntugvcev.in
- **Instagram**: [@ityukta_2k26](https://instagram.com/ityukta_2k26)
- **Website**: [ityukta2k26.jntugvcev.in](https://ityukta2k26.jntugvcev.in)

---

<div align="center">

**Made with ❤️ by IT Department, JNTU-GV**

*Code the Future, Shape Tomorrow*

</div>
