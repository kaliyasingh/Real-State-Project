<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="pageTitle" value="Login - E-Learning Platform" scope="request"/>

<section class="login-section py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-body p-5">
                        <!-- Logo -->
                        <div class="text-center mb-4">
                            <img src="<c:url value='/images/logo.png'/>" alt="Logo" height="50">
                            <h3 class="mt-3 fw-bold">Welcome Back!</h3>
                            <p class="text-muted">Login to continue learning</p>
                        </div>
                        
                        <!-- Error Message -->
                        <c:if test="${param.error != null}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <i class="fas fa-exclamation-circle me-2"></i>
                                Invalid email or password. Please try again.
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        </c:if>
                        
                        <!-- Success Message -->
                        <c:if test="${param.logout != null}">
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <i class="fas fa-check-circle me-2"></i>
                                You have been logged out successfully.
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        </c:if>
                        
                        <c:if test="${param.registered != null}">
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <i class="fas fa-check-circle me-2"></i>
                                Registration successful! Please login.
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        </c:if>
                        
                        <!-- Login Form -->
                        <form action="<c:url value='/perform-login'/>" method="post" class="needs-validation" novalidate>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            
                            <!-- Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label fw-semibold">Email Address</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light border-end-0">
                                        <i class="fas fa-envelope text-muted"></i>
                                    </span>
                                    <input type="email" class="form-control border-start-0 ps-0" 
                                           id="email" name="username" placeholder="Enter your email" 
                                           required autofocus>
                                    <div class="invalid-feedback">
                                        Please enter a valid email address.
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Password -->
                            <div class="mb-3">
                                <label for="password" class="form-label fw-semibold">Password</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light border-end-0">
                                        <i class="fas fa-lock text-muted"></i>
                                    </span>
                                    <input type="password" class="form-control border-start-0 ps-0" 
                                           id="password" name="password" placeholder="Enter your password" 
                                           required>
                                    <button class="btn btn-outline-secondary border-start-0" type="button" 
                                            id="togglePassword">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <div class="invalid-feedback">
                                        Please enter your password.
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Remember Me & Forgot Password -->
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="rememberMe" 
                                           name="remember-me">
                                    <label class="form-check-label" for="rememberMe">
                                        Remember me
                                    </label>
                                </div>
                                <a href="<c:url value='/forgot-password'/>" class="text-decoration-none">
                                    Forgot Password?
                                </a>
                            </div>
                            
                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-primary w-100 py-2 fw-semibold">
                                <i class="fas fa-sign-in-alt me-2"></i> Login
                            </button>
                        </form>
                        
                        <!-- Divider -->
                        <div class="divider my-4">
                            <span class="divider-text text-muted">OR</span>
                        </div>
                        
                        <!-- Social Login -->
                        <div class="d-grid gap-2">
                            <button class="btn btn-outline-danger">
                                <i class="fab fa-google me-2"></i> Continue with Google
                            </button>
                            <button class="btn btn-outline-primary">
                                <i class="fab fa-facebook-f me-2"></i> Continue with Facebook
                            </button>
                        </div>
                        
                        <!-- Register Link -->
                        <div class="text-center mt-4">
                            <p class="mb-0 text-muted">
                                Don't have an account? 
                                <a href="<c:url value='/register'/>" class="text-decoration-none fw-semibold">
                                    Sign Up
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    // Toggle Password Visibility
    document.getElementById('togglePassword').addEventListener('click', function() {
        const password = document.getElementById('password');
        const icon = this.querySelector('i');
        
        if (password.type === 'password') {
            password.type = 'text';
            icon.classList.remove('fa-eye');
            icon.classList.add('fa-eye-slash');
        } else {
            password.type = 'password';
            icon.classList.remove('fa-eye-slash');
            icon.classList.add('fa-eye');
        }
    });
</script>

