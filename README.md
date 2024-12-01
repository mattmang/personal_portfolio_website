# Personal Portfolio Website

This is a Django-based project to create a dynamic **Personal Portfolio Website** that showcases your skills, achievements, projects, and technical content. The project includes features like project galleries, a blog section, a contact form, and a downloadable resume.

**[Live Application on Heroku](https://personal-portfolio-website-b49244050bcc.herokuapp.com/)**  
Visit the deployed version of this portfolio website on Heroku to explore its features live.

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
    git clone https://github.com/mattmang/personal_portfolio_website.git
    cd portfolio_project
    ```
2. Install the following packages:
    ```bash
    pip install django djangorestframework mysqlclient django-ckeditor-5 captcha django-simple-captcha
    ```
   
3. Create a virtual environment (optional):
    ```bash
    virtualenv env
    source env/bin/activate  # On Windows: env\Scripts\activate
    ```

4. Configure the database:
    - Download the MySQL database `sample_portfolio_database` from this repo and import to DBeaver or create a new MySQL database `portfolio_db` to start a new portfolio website from scratch.
    - Update `settings.py` with your database credentials (`settings.py` Lines 85 & 86).
    - Run migrations:
      ```bash
      python manage.py makemigrations
      python manage.py migrate
      ```

5. Configure email settings:
    - Add SMTP credentials to `settings.py` for sending contact form submissions (`settings.py` Lines 142 & 143). Host is already set for Gmail. Needs updating if using a different mail client.
    - Populate [recipient_list] in `views.py` (Line 136) with the email address/es which will be receiving contact form submissions.

6. Run the server:
    ```bash
    python manage.py runserver
    ```

7. Open your browser and visit:
    ```
    http://127.0.0.1:8000
    ```

8. Create a superuser to manage and control the website:
   ```bash
    python manage.py createsuperuser
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

## Contact
For any inquiries or feedback, please email:
- **Email:** [matthew.mangion@gmail.com](mailto:matthew.mangion@gmail.com)

---

### Acknowledgments
This project is part of a Django course assignment to create a professional portfolio website. Special thanks to the course instructors for guidance.
