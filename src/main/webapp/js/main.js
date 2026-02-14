/* ============================================
   ITYUKTA 2K26 - Main JavaScript
   Premium Interactive Features
   ============================================ */

document.addEventListener('DOMContentLoaded', function () {
    // Initialize all modules
    initNavbar();
    initCountdown();
    initEventFilters();
    initScheduleTabs();
    initScrollAnimations();
    initSmoothScroll();
    initMobileMenu();
    initFormValidation();
});

/* ============================================
   NAVBAR SCROLL EFFECT
   ============================================ */
function initNavbar() {
    const navbar = document.getElementById('navbar');
    const navLinks = document.querySelectorAll('.nav-link:not(.nav-cta)');
    const sections = document.querySelectorAll('section[id]');

    // Scroll effect
    window.addEventListener('scroll', function () {
        if (window.scrollY > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }

        // Active link based on scroll position
        let current = '';
        sections.forEach(section => {
            const sectionTop = section.offsetTop - 100;
            const sectionHeight = section.offsetHeight;
            if (window.scrollY >= sectionTop && window.scrollY < sectionTop + sectionHeight) {
                current = section.getAttribute('id');
            }
        });

        navLinks.forEach(link => {
            link.classList.remove('active');
            if (link.getAttribute('href') === '#' + current) {
                link.classList.add('active');
            }
        });
    });
}

/* ============================================
   COUNTDOWN TIMER
   ============================================ */
function initCountdown() {
    const eventDate = new Date('March 11, 2026 09:00:00').getTime();

    const countdown = setInterval(function () {
        const now = new Date().getTime();
        const distance = eventDate - now;

        // Calculate time units
        const days = Math.floor(distance / (1000 * 60 * 60 * 24));
        const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        const seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Update DOM
        const daysEl = document.getElementById('days');
        const hoursEl = document.getElementById('hours');
        const minutesEl = document.getElementById('minutes');
        const secondsEl = document.getElementById('seconds');

        if (daysEl) daysEl.textContent = days > 0 ? days : '00';
        if (hoursEl) hoursEl.textContent = hours > 0 ? padZero(hours) : '00';
        if (minutesEl) minutesEl.textContent = minutes > 0 ? padZero(minutes) : '00';
        if (secondsEl) secondsEl.textContent = seconds > 0 ? padZero(seconds) : '00';

        // If countdown is finished
        if (distance < 0) {
            clearInterval(countdown);
            if (daysEl) daysEl.textContent = '00';
            if (hoursEl) hoursEl.textContent = '00';
            if (minutesEl) minutesEl.textContent = '00';
            if (secondsEl) secondsEl.textContent = '00';
        }
    }, 1000);
}

function padZero(num) {
    return num < 10 ? '0' + num : num;
}

/* ============================================
   EVENT FILTERING
   ============================================ */
function initEventFilters() {
    const tabs = document.querySelectorAll('.event-tab');
    const eventCards = document.querySelectorAll('.event-card');

    tabs.forEach(tab => {
        tab.addEventListener('click', function () {
            // Update active tab
            tabs.forEach(t => t.classList.remove('active'));
            this.classList.add('active');

            const filter = this.getAttribute('data-filter');

            // Filter cards
            eventCards.forEach(card => {
                const category = card.getAttribute('data-category');

                if (filter === 'all' || category === filter) {
                    card.style.display = 'flex';
                    card.style.animation = 'fadeInUp 0.5s ease forwards';
                } else {
                    card.style.display = 'none';
                }
            });
        });
    });
}

/* ============================================
   SCHEDULE TABS
   ============================================ */
function initScheduleTabs() {
    const dayBtns = document.querySelectorAll('.schedule-day-btn');
    const day1 = document.getElementById('scheduleDay1');
    const day2 = document.getElementById('scheduleDay2');

    dayBtns.forEach(btn => {
        btn.addEventListener('click', function () {
            // Update active button
            dayBtns.forEach(b => b.classList.remove('active'));
            this.classList.add('active');

            const day = this.getAttribute('data-day');

            // Toggle schedule visibility
            if (day === '1') {
                if (day1) day1.classList.remove('hidden');
                if (day2) day2.classList.add('hidden');
            } else {
                if (day1) day1.classList.add('hidden');
                if (day2) day2.classList.remove('hidden');
            }
        });
    });
}

/* ============================================
   SCROLL ANIMATIONS
   ============================================ */
function initScrollAnimations() {
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);

    // Observe elements
    const animatedElements = document.querySelectorAll('.event-card, .pricing-card, .contact-card, .schedule-item');
    animatedElements.forEach(el => {
        el.classList.add('animate-on-scroll');
        observer.observe(el);
    });
}

/* ============================================
   SMOOTH SCROLL
   ============================================ */
function initSmoothScroll() {
    const links = document.querySelectorAll('a[href^="#"]');

    links.forEach(link => {
        link.addEventListener('click', function (e) {
            const href = this.getAttribute('href');

            if (href === '#') return;

            e.preventDefault();

            const target = document.querySelector(href);
            if (target) {
                const offsetTop = target.offsetTop - 80;

                window.scrollTo({
                    top: offsetTop,
                    behavior: 'smooth'
                });

                // Close mobile menu if open
                const navMenu = document.getElementById('navMenu');
                if (navMenu && navMenu.classList.contains('active')) {
                    navMenu.classList.remove('active');
                }
            }
        });
    });
}

/* ============================================
   MOBILE MENU
   ============================================ */
function initMobileMenu() {
    const toggle = document.getElementById('navToggle');
    const menu = document.getElementById('navMenu');

    if (toggle && menu) {
        toggle.addEventListener('click', function () {
            menu.classList.toggle('active');

            // Animate hamburger
            const spans = this.querySelectorAll('span');
            if (menu.classList.contains('active')) {
                spans[0].style.transform = 'rotate(45deg) translate(5px, 5px)';
                spans[1].style.opacity = '0';
                spans[2].style.transform = 'rotate(-45deg) translate(7px, -6px)';
            } else {
                spans[0].style.transform = 'none';
                spans[1].style.opacity = '1';
                spans[2].style.transform = 'none';
            }
        });
    }
}

/* ============================================
   FORM VALIDATION
   ============================================ */
function initFormValidation() {
    const contactForm = document.getElementById('contactForm');

    if (contactForm) {
        contactForm.addEventListener('submit', function (e) {
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const subject = document.getElementById('subject').value.trim();
            const message = document.getElementById('message').value.trim();

            // Basic validation
            if (!name || !email || !subject || !message) {
                e.preventDefault();
                showNotification('Please fill in all fields', 'error');
                return;
            }

            // Email validation
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                e.preventDefault();
                showNotification('Please enter a valid email address', 'error');
                return;
            }
        });
    }
}

/* ============================================
   NOTIFICATION SYSTEM
   ============================================ */
function showNotification(message, type = 'success') {
    // Remove existing notification
    const existing = document.querySelector('.notification');
    if (existing) existing.remove();

    // Create notification
    const notification = document.createElement('div');
    notification.className = `notification notification-${type}`;
    notification.innerHTML = `
        <span class="notification-icon">${type === 'success' ? '✓' : '⚠'}</span>
        <span class="notification-message">${message}</span>
    `;

    // Add styles
    notification.style.cssText = `
        position: fixed;
        top: 100px;
        right: 20px;
        background: ${type === 'success' ? 'rgba(48, 209, 88, 0.9)' : 'rgba(255, 107, 157, 0.9)'};
        color: white;
        padding: 16px 24px;
        border-radius: 12px;
        display: flex;
        align-items: center;
        gap: 12px;
        font-weight: 500;
        z-index: 9999;
        animation: slideIn 0.3s ease;
        backdrop-filter: blur(10px);
    `;

    document.body.appendChild(notification);

    // Remove after 3 seconds
    setTimeout(() => {
        notification.style.animation = 'slideOut 0.3s ease';
        setTimeout(() => notification.remove(), 300);
    }, 3000);
}

/* ============================================
   PARTICLE EFFECT (Optional Enhancement)
   ============================================ */
function createParticle(x, y) {
    const particle = document.createElement('div');
    particle.className = 'particle';
    particle.style.cssText = `
        position: fixed;
        left: ${x}px;
        top: ${y}px;
        width: 6px;
        height: 6px;
        background: var(--neon-purple);
        border-radius: 50%;
        pointer-events: none;
        z-index: 9999;
        animation: particleFade 1s ease forwards;
    `;

    document.body.appendChild(particle);
    setTimeout(() => particle.remove(), 1000);
}

// CSS Animations to add dynamically
const styleSheet = document.createElement('style');
styleSheet.textContent = `
    @keyframes slideIn {
        from {
            transform: translateX(100%);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
    
    @keyframes slideOut {
        from {
            transform: translateX(0);
            opacity: 1;
        }
        to {
            transform: translateX(100%);
            opacity: 0;
        }
    }
    
    @keyframes particleFade {
        0% {
            transform: scale(1);
            opacity: 1;
        }
        100% {
            transform: scale(0) translateY(-50px);
            opacity: 0;
        }
    }
`;
document.head.appendChild(styleSheet);

/* ============================================
   LOADING ANIMATION
   ============================================ */
window.addEventListener('load', function () {
    document.body.classList.add('loaded');

    // Animate hero elements on load
    const heroElements = document.querySelectorAll('.hero-badge, .hero-title, .hero-subtitle, .hero-date, .hero-buttons, .hero-stats');
    heroElements.forEach((el, index) => {
        el.style.animationDelay = `${index * 0.1}s`;
    });
});
