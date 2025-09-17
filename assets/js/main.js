// const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
// const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))


document.addEventListener('DOMContentLoaded', function() {
    const navToggle = document.getElementById('nav-toggle');
    const navLinks = document.querySelector('.nav-links');
    
    // Close menu when clicking outside
    document.addEventListener('click', function(event) {
        // Check if the click is outside the nav-links and hamburger
        if (navToggle.checked && 
            !navLinks.contains(event.target) && 
            !event.target.closest('.hamburger') &&
            !event.target.closest('#nav-toggle')) {
            navToggle.checked = false;
        }
    });
    
    // Optional: Close menu when clicking on nav links (for better UX)
    navLinks.addEventListener('click', function(event) {
        if (event.target.tagName === 'A') {
            navToggle.checked = false;
        }
    });
});