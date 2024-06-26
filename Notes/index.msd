<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YL's Personal Website</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .subcategory {
            display: none;
        }
        .main-category:hover .subcategory {
            display: block;
        }
    </style>
</head>
<body>
    <header>
        <h1>YL's Personal Website</h1>
        <nav>
            <ul>
                <li><a href="#notes">Notes</a></li>
                <li><a href="#works">Works</a></li>
                <li><a href="#footprints">Footprints</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="notes" class="main-category">
            <h2>Notes</h2>
            <div class="subcategory">
                <h3>Code</h3>
                <div class="subcategory">
                    <h4>JavaScript</h4>
                    <!-- Add JavaScript notes here -->
                </div>
                <div class="subcategory">
                    <h4>Python</h4>
                    <!-- Add Python notes here -->
                </div>
                <!-- Add more code subcategories here -->
            </div>
            <div class="subcategory">
                <h3>Database</h3>
                <div class="subcategory">
                    <h4>SQL</h4>
                    <!-- Add SQL notes here -->
                </div>
                <div class="subcategory">
                    <h4>NoSQL</h4>
                    <!-- Add NoSQL notes here -->
                </div>
                <!-- Add more database subcategories here -->
            </div>
        </section>
        <section id="works" class="main-category">
            <h2>Works</h2>
            <div class="subcategory">
                <!-- Add your works and subcategories here -->
            </div>
        </section>
        <section id="footprints" class="main-category">
            <h2>Footprints</h2>
            <div class="subcategory">
                <!-- Add your footprints and subcategories here -->
            </div>
        </section>
    </main>
    <footer>
        <p>Contact: <a href="<mailto:yonglitang2000@gmail.com>">yonglitang2000@gmail.com</a></p>
    </footer>
    <script>
        document.querySelectorAll('.main-category > h2').forEach(category => {
            category.addEventListener('click', () => {
                const subcategories = category.nextElementSibling;
                if (subcategories.style.display === 'block') {
                    subcategories.style.display = 'none';
                } else {
                    subcategories.style.display = 'block';
                }
            });
        });
        document.querySelectorAll('.subcategory > h3').forEach(subcategory => {
            subcategory.addEventListener('click', () => {
                const subSubcategories = subcategory.nextElementSibling;
                if (subSubcategories.style.display === 'block') {
                    subSubcategories.style.display = 'none';
                } else {
                    subSubcategories.style.display = 'block';
                }
            });
        });
    </script>
</body>
</html>