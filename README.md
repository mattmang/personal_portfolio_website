# Personal Portfolio Website

This is a Django-based project to create a dynamic **Personal Portfolio Website** that showcases your skills, achievements, projects, and technical content. The project includes features like project galleries, a blog section, a contact form, and a downloadable resume.

---

## Features

### 1. Project Galleries
- Display a collection of your projects with titles, descriptions, images, and links.
- Admin functionality to add/edit projects via the Django admin panel.

### 2. Blog Section
- Publish blog posts or tutorials with a title, content, date, and optional categories or tags.
- Pagination and a search feature for easy navigation.

### 3. Contact Form
- Allow visitors to send feedback or inquiries.
- Features validation, email notifications, and optional CAPTCHA for spam prevention.

### 4. Downloadable Resume
- Provide a downloadable PDF version of your resume via a static link.

### 5. Admin Panel
- Manage projects, blog posts, and contact form submissions using Django's admin interface.

---

## Technologies Used

- **Backend:** Django
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript (Bootstrap/Tailwind)
- **Email Integration:** SMTP with Django email backend
- **Admin Panel:** Django's built-in admin interface

---

## Installation and Setup

### Prerequisites
1. Install [Python 3.x](https://www.python.org/).
2. Install [MySQL](https://www.mysql.com/).
3. Install virtualenv: `pip install virtualenv`.

### Steps
1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/portfolio-website.git
    cd portfolio-website
    ```

2. Create a virtual environment:
    ```bash
    virtualenv env
    source env/bin/activate  # On Windows: env\Scripts\activate
    ```

3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

4. Configure the database:
    - Update `settings.py` with your database credentials (see `Project_credentials.txt` for example configuration).
    - Run migrations:
      ```bash
      python manage.py makemigrations
      python manage.py migrate
      ```

5. Configure email settings:
    - Add SMTP credentials to `settings.py` for sending contact form submissions.

6. Run the server:
    ```bash
    python manage.py runserver
    ```

7. Open your browser and visit:
    ```
    http://127.0.0.1:8000
    ```

---

## Deployment
For deployment, consider platforms like **Heroku**, **PythonAnywhere**, or **DigitalOcean**. Refer to Django’s [deployment checklist](https://docs.djangoproject.com/en/4.0/howto/deployment/checklist/) to prepare for production.

---

## Contribution Guidelines
1. Fork this repository.
2. Create a new branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add some feature'`.
4. Push the branch: `git push origin feature-name`.
5. Submit a pull request.

---

## License
This project is licensed under the MIT License. See `LICENSE` for details.

---

## Contact
For any inquiries or feedback, please email:
- **Email:** [matthew.mangion85@gmail.com](mailto:matthew.mangion85@gmail.com)

---

### Acknowledgments
This project is part of a Django course assignment to create a professional portfolio website. Special thanks to the course instructors for guidance.
