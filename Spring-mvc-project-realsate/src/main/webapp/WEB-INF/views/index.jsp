<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Premium Realty - Luxury Real Estate & Property Management</title>
    <meta name="description" content="Find your dream home with Premium Realty. Luxury real estate, property management, and investment advisory services. Expert agents, 24/7 support, 2500+ properties sold.">
    <meta name="author" content="Premium Realty">
    
    <meta property="og:title" content="Premium Realty - Luxury Real Estate & Property Management">
    <meta property="og:description" content="Find your dream home with Premium Realty. Luxury real estate, property management, and investment advisory services.">
    <meta property="og:type" content="website">
    
    <meta name="twitter:card" content="summary_large_image">
    
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <!-- Top contact bar -->
            <div class="top-bar">
                <div class="contact-info">
                    <div class="contact-item">
                        <span class="icon">📞</span>
                        <span>(555) 123-4567</span>
                    </div>
                    <div class="contact-item">
                        <span class="icon">✉</span>
                        <span>info@premiumrealty.com</span>
                    </div>
                </div>
                <div class="hours">
                    Mon-Fri 8:00 AM - 8:00 PM | Sat-Sun 9:00 AM - 6:00 PM
                </div>
            </div>

            <!-- Main navigation -->
            <nav class="nav">
                <div class="logo">
                    <h1>Premium Realty</h1>
                </div>
                
                <div class="nav-links" id="navLinks">
                    <a href="#home">Home</a>
                    <a href="#properties">Properties</a>
                    <a href="#services">Services</a>
                    <a href="#about">About</a>
                    <a href="#contact">Contact</a>
                </div>
                
                <div class="nav-buttons">
                    <button class="btn btn-outline">Sign In</button>
                    <button class="btn btn-primary">Get Started</button>
                </div>
                
                <button class="mobile-menu-btn" id="mobileMenuBtn">☰</button>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="hero-background"></div>
        <div class="hero-overlay"></div>
        <div class="container hero-content">
            <div class="hero-text">
                <h1>Find Your <span class="gradient-text">Dream Home</span></h1>
                <p>Discover luxury properties with Premium Realty. We help you find the perfect home that matches your lifestyle and dreams.</p>
                
                <!-- Property Search Form -->
                <div class="search-form">
                    <div class="search-inputs">
                        <div class="input-group">
                            <span class="input-icon">📍</span>
                            <input type="text" placeholder="Location">
                        </div>
                        <div class="input-group">
                            <span class="input-icon">🏠</span>
                            <select>
                                <option>Property Type</option>
                                <option>House</option>
                                <option>Apartment</option>
                                <option>Condo</option>
                                <option>Townhouse</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <span class="input-icon">💰</span>
                            <select>
                                <option>Price Range</option>
                                <option>$0 - $300k</option>
                                <option>$300k - $500k</option>
                                <option>$500k - $1M</option>
                                <option>$1M+</option>
                            </select>
                        </div>
                        <button class="btn btn-hero">
                            <span class="icon">🔍</span>
                            Search Properties
                        </button>
                    </div>
                    
                    <div class="search-tags">
                        <span class="tag">500+ Properties</span>
                        <span class="tag">Expert Agents</span>
                        <span class="tag">24/7 Support</span>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="scroll-indicator">
            <div class="scroll-mouse"></div>
        </div>
    </section>

    <!-- Featured Properties -->
    <section id="properties" class="properties">
        <div class="container">
            <div class="section-header">
                <span class="badge">Featured Properties</span>
                <h2>Exceptional Properties</h2>
                <p>Discover our handpicked selection of premium properties, each offering unique features and unparalleled luxury living experiences.</p>
            </div>
            
            <div class="properties-grid">
                <div class="property-card">
                    <div class="property-image">
                        <img src="https://images.unsplash.com/photo-1564013799919-ab600027ffc6?auto=format&fit=crop&w=800&q=80" alt="Modern Luxury Villa">
                        <div class="property-badges">
                            <span class="badge-status">For Sale</span>
                            <span class="badge-featured">Featured</span>
                        </div>
                        <button class="favorite-btn">♥</button>
                    </div>
                    <div class="property-content">
                        <div class="property-header">
                            <h3>Modern Luxury Villa</h3>
                            <span class="price">$2,450,000</span>
                        </div>
                        <div class="property-location">
                            <span class="icon">📍</span>
                            <span>Beverly Hills, CA</span>
                        </div>
                        <div class="property-details">
                            <div class="detail">
                                <span class="icon">🛏</span>
                                <span>4 Beds</span>
                            </div>
                            <div class="detail">
                                <span class="icon">🛁</span>
                                <span>3 Baths</span>
                            </div>
                            <div class="detail">
                                <span class="icon">📐</span>
                                <span>3,200 ft²</span>
                            </div>
                        </div>
                        <div class="property-actions">
                            <button class="btn btn-outline">View Details</button>
                            <button class="btn btn-primary">Schedule Tour</button>
                        </div>
                    </div>
                </div>
                
                <div class="property-card">
                    <div class="property-image">
                        <img src="https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?auto=format&fit=crop&w=800&q=80" alt="Contemporary Penthouse">
                        <div class="property-badges">
                            <span class="badge-status">For Sale</span>
                        </div>
                        <button class="favorite-btn">♥</button>
                    </div>
                    <div class="property-content">
                        <div class="property-header">
                            <h3>Contemporary Penthouse</h3>
                            <span class="price">$1,850,000</span>
                        </div>
                        <div class="property-location">
                            <span class="icon">📍</span>
                            <span>Manhattan, NY</span>
                        </div>
                        <div class="property-details">
                            <div class="detail">
                                <span class="icon">🛏</span>
                                <span>3 Beds</span>
                            </div>
                            <div class="detail">
                                <span class="icon">🛁</span>
                                <span>2 Baths</span>
                            </div>
                            <div class="detail">
                                <span class="icon">📐</span>
                                <span>2,800 ft²</span>
                            </div>
                        </div>
                        <div class="property-actions">
                            <button class="btn btn-outline">View Details</button>
                            <button class="btn btn-primary">Schedule Tour</button>
                        </div>
                    </div>
                </div>
                
                <div class="property-card">
                    <div class="property-image">
                        <img src="https://images.unsplash.com/photo-1605146769289-440113cc3d00?auto=format&fit=crop&w=800&q=80" alt="Elegant Family Home">
                        <div class="property-badges">
                            <span class="badge-status sold">Sold</span>
                            <span class="badge-featured">Featured</span>
                        </div>
                        <button class="favorite-btn">♥</button>
                    </div>
                    <div class="property-content">
                        <div class="property-header">
                            <h3>Elegant Family Home</h3>
                            <span class="price">$1,200,000</span>
                        </div>
                        <div class="property-location">
                            <span class="icon">📍</span>
                            <span>Seattle, WA</span>
                        </div>
                        <div class="property-details">
                            <div class="detail">
                                <span class="icon">🛏</span>
                                <span>5 Beds</span>
                            </div>
                            <div class="detail">
                                <span class="icon">🛁</span>
                                <span>4 Baths</span>
                            </div>
                            <div class="detail">
                                <span class="icon">📐</span>
                                <span>4,100 ft²</span>
                            </div>
                        </div>
                        <div class="property-actions">
                            <button class="btn btn-outline">View Details</button>
                            <button class="btn btn-primary">Schedule Tour</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="section-cta">
                <button class="btn btn-luxury">View All Properties</button>
            </div>
        </div>
    </section>

    <!-- Services -->
    <section id="services" class="services">
        <div class="container">
            <div class="section-header">
                <span class="badge">Our Services</span>
                <h2>Comprehensive Real Estate Solutions</h2>
                <p>From property search to closing, we provide end-to-end real estate services tailored to your unique needs and investment goals.</p>
            </div>
            
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">🔍</div>
                    <h3>Property Search</h3>
                    <p>Find your perfect property with our advanced search tools and expert market knowledge.</p>
                    <ul class="service-features">
                        <li>Advanced Filtering</li>
                        <li>Market Analysis</li>
                        <li>Custom Alerts</li>
                    </ul>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">🏠</div>
                    <h3>Property Valuation</h3>
                    <p>Get accurate property valuations with comprehensive market analysis and professional insights.</p>
                    <ul class="service-features">
                        <li>Market Reports</li>
                        <li>Comparative Analysis</li>
                        <li>Investment Insights</li>
                    </ul>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">📄</div>
                    <h3>Legal Support</h3>
                    <p>Complete legal assistance for all property transactions with experienced real estate attorneys.</p>
                    <ul class="service-features">
                        <li>Contract Review</li>
                        <li>Documentation</li>
                        <li>Closing Support</li>
                    </ul>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">🔑</div>
                    <h3>Property Management</h3>
                    <p>Full-service property management for investors and landlords with 24/7 support.</p>
                    <ul class="service-features">
                        <li>Tenant Screening</li>
                        <li>Maintenance</li>
                        <li>Rent Collection</li>
                    </ul>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">🧮</div>
                    <h3>Mortgage Assistance</h3>
                    <p>Streamlined mortgage process with competitive rates and personalized financial guidance.</p>
                    <ul class="service-features">
                        <li>Rate Comparison</li>
                        <li>Pre-approval</li>
                        <li>Financial Planning</li>
                    </ul>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">👥</div>
                    <h3>Investment Advisory</h3>
                    <p>Expert investment advice for building and managing your real estate portfolio.</p>
                    <ul class="service-features">
                        <li>Portfolio Analysis</li>
                        <li>ROI Optimization</li>
                        <li>Market Forecasting</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <span class="badge">About Premium Realty</span>
                    <h2>Your Trusted Real Estate Partner Since 2008</h2>
                    <p>At Premium Realty, we've been helping families find their dream homes and investors build their portfolios for over 15 years. Our commitment to excellence, integrity, and personalized service has made us the most trusted name in luxury real estate.</p>
                    <p>With deep market knowledge, cutting-edge technology, and a passion for exceeding expectations, we transform the real estate experience from stressful to seamless.</p>
                    <div class="about-actions">
                        <button class="btn btn-primary">Meet Our Team</button>
                        <button class="btn btn-outline">Our Story</button>
                    </div>
                </div>
                
                <div class="stats-grid">
                    <div class="stat-card">
                        <div class="stat-icon">🏠</div>
                        <div class="stat-number">2,500+</div>
                        <div class="stat-label">Properties Sold</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-icon">👥</div>
                        <div class="stat-number">1,200+</div>
                        <div class="stat-label">Happy Clients</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-icon">🏆</div>
                        <div class="stat-number">15+</div>
                        <div class="stat-label">Years Experience</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-icon">🕒</div>
                        <div class="stat-number">24/7</div>
                        <div class="stat-label">Customer Support</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact -->
    <section id="contact" class="contact">
        <div class="container">
            <div class="section-header">
                <span class="badge">Get In Touch</span>
                <h2>Ready to Find Your Dream Home?</h2>
                <p>Let's start your real estate journey together. Our expert team is here to help you every step of the way.</p>
            </div>
            
            <div class="contact-content">
                <div class="contact-form">
                    <div class="form-header">
                        <h3>Send Us a Message</h3>
                        <p>Fill out the form below and we'll get back to you within 24 hours.</p>
                    </div>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" placeholder="John">
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" placeholder="Doe">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" placeholder="john@example.com">
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="tel" placeholder="(555) 123-4567">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Subject</label>
                            <input type="text" placeholder="I'm interested in buying a home">
                        </div>
                        <div class="form-group">
                            <label>Message</label>
                            <textarea placeholder="Tell us about your real estate needs..."></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-full">
                            <span class="icon">📨</span>
                            Send Message
                        </button>
                    </form>
                </div>
                
                <div class="contact-info">
                    <div class="contact-card">
                        <div class="contact-icon">📍</div>
                        <h4>Visit Our Office</h4>
                        <p>123 Premium Avenue<br>Beverly Hills, CA 90210</p>
                        <a href="#" class="contact-action">Get Directions →</a>
                    </div>
                    
                    <div class="contact-card">
                        <div class="contact-icon">📞</div>
                        <h4>Call Us Today</h4>
                        <p>(555) 123-4567<br>(555) 123-4568</p>
                        <a href="#" class="contact-action">Call Now →</a>
                    </div>
                    
                    <div class="contact-card">
                        <div class="contact-icon">✉</div>
                        <h4>Email Us</h4>
                        <p>info@premiumrealty.com<br>support@premiumrealty.com</p>
                        <a href="#" class="contact-action">Send Email →</a>
                    </div>
                    
                    <div class="contact-card">
                        <div class="contact-icon">🕒</div>
                        <h4>Business Hours</h4>
                        <p>Mon-Fri: 8AM - 8PM<br>Sat-Sun: 9AM - 6PM</p>
                        <a href="#" class="contact-action">Schedule Call →</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3 class="footer-logo">Premium Realty</h3>
                    <p>Your trusted partner in luxury real estate. We help you find not just a house, but a place to call home.</p>
                    <div class="social-links">
                        <a href="#" class="social-link">📘</a>
                        <a href="#" class="social-link">🐦</a>
                        <a href="#" class="social-link">📷</a>
                        <a href="#" class="social-link">💼</a>
                    </div>
                </div>
                
                <div class="footer-section">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#properties">Properties</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li><a href="#">Careers</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h4>Services</h4>
                    <ul>
                        <li><a href="#">Property Search</a></li>
                        <li><a href="#">Property Valuation</a></li>
                        <li><a href="#">Investment Advisory</a></li>
                        <li><a href="#">Property Management</a></li>
                        <li><a href="#">Mortgage Assistance</a></li>
                        <li><a href="#">Legal Support</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h4>Stay Updated</h4>
                    <p>Subscribe to our newsletter for the latest property listings and market insights.</p>
                    <div class="newsletter">
                        <input type="email" placeholder="Enter your email">
                        <button class="btn btn-primary">
                            <span class="icon">✉</span>
                            Subscribe
                        </button>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <div class="footer-info">
                    <div class="info-item">
                        <span class="icon">📞</span>
                        <span>(555) 123-4567</span>
                    </div>
                    <div class="info-item">
                        <span class="icon">✉</span>
                        <span>info@premiumrealty.com</span>
                    </div>
                    <div class="info-item">
                        <span class="icon">📍</span>
                        <span>Beverly Hills, CA</span>
                    </div>
                </div>
                <div class="copyright">
                    © 2024 Premium Realty. All rights reserved.
                </div>
            </div>
        </div>
    </footer>

    <script src="script.js"></script>
</body>
</html>