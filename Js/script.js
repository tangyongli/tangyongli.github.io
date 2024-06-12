// script.js
document.addEventListener("DOMContentLoaded", function() {
    const links = document.querySelectorAll('.links a');
    const sections = document.querySelectorAll('.content section');

    links.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const targetId = this.getAttribute('href').substring(1);
            const targetSection = document.getElementById(targetId);
            if (targetSection) {
                sections.forEach(section => {
                    section.style.display = 'none';
                });
                targetSection.style.display = 'block';
            }
        });
    });
});
