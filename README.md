Django Project Assignment: Personal Portfolio Website

Project Title: Personal Portfolio Website

---

Objective:
The goal of this assignment is to develop a Personal Portfolio Website using Django that showcases your skills, achievements, and projects. This will be a dynamic website that allows you to present your personal and professional accomplishments, share technical content through a blog, and provide a way for visitors to contact you.

By completing this project, you will gain experience in building a web application with Django, implementing essential web functionalities, and learning how to work with Django's built-in admin interface for content management.

---

Requirements:

You are required to build a personal portfolio website with the following key features:

---

Features:

1. Project Galleries:
Description: 
Showcase a collection of your personal, academic, or professional projects. Each project should have the following:
•	A title and short description.
•	Images that represent the project (e.g., screenshots, photos, mockups).
•	A link to the project or its repository (e.g., GitHub link or live demo link).
•	Optionally, include technologies used for each project.
   Implementation:
•	Create a Django model for projects with fields like `title`, `description`, `image`, `link`, and `technologies`.
•	Create a view to display the projects in a grid layout.
•	Use a model form to allow the admin user to add/edit projects through the Django Admin.


2. Blog or Article Section:
 Description: Add a section to the website where you can publish technical content, tutorials, or   blog posts.
•	Each post should include a title, content, and date.
•	Optionally, you can add categories and tags to organize the posts.
 Implementation:
•	Create a `BlogPost` model with fields like `title`, `content`, `date_posted`, and `category`.
•	Use Django’s built-in `TextField` for the content of the post.
•	Display blog posts on a dedicated page, with pagination to show multiple posts.
•	Include a search feature to filter posts based on title or content.
•	Bonus Point(You can Implement an external API for the Blogpost)


3. Contact Form and User Feedback System:
Description: Allow users to send feedback or inquiries through a contact form. This should capture the user's name, email, message, and allow for basic validation.
•	Optionally, you can include a CAPTCHA to prevent spam submissions.
•	After submission, the form should send an email to a specified address (you can use Django's email functionality for this).
   Implementation:
•	Create a `Contact` model to store the contact form submissions in the database.
•	Use Django forms to create the contact form.
•	Handle form validation and send an email with the submitted details using Django’s email backend.
•	Optionally, display a success or error message to the user after form submission.


4. Downloadable Resume/CV Section:
   Description: Provide a downloadable version of your resume or CV in PDF format.
•	Include a section on the website that displays your resume with a download link.
   Implementation:
•	Store your resume as a static file (e.g., `resume.pdf`).
•	Add a link on the portfolio website that allows users to download the PDF.
•	Ensure the resume is easily accessible and styled appropriately on the site.


5. Admin Panel for Content Management:
 Description: Utilize Django's built-in admin panel to allow easy content updates. Through the admin panel, you should be able to:
•	 Add, update, or delete projects, blog posts, and contact form submissions.
•	 Upload images for project galleries and blog posts.
 Implementation:
•	Customize Django’s admin interface to manage your portfolio data.
•	Register your models (`Project`, `BlogPost`, `Contact`) with the admin panel.
•	Use Django’s rich text editor for easy formatting in blog posts (consider integrating a package like `django-ckeditor`).

---

Technologies and Tools:
Backend: Django
Database: MySQL
Frontend: HTML, CSS, JavaScript (you may use Bootstrap or Tailwind for responsive design)
Email: Django’s email backend for sending contact form submissions (optional: integrate a third-party email service like SendGrid or Mailgun).
Admin Panel: Django’s built-in admin interface

---

Deliverables:

1. Project Source Code:
  All source code files (models, views, templates, forms, static files) should be included in your repository.
   
2. Project Documentation:
   A `README.md` file describing the project, how to set up and run it, and any relevant information (such as configuration for the email backend).
   
3. Deployed Application (Optional but Recommended):
 You should deploy your portfolio website on a platform such as Heroku, 
PythonAnywhere, or any other cloud service. Include the link to your deployed app in the documentation.

---

Evaluation Criteria:

1. Functionality: Does the website meet all the required features? Are the project galleries, blog, contact form, resume download, and admin panel working properly?
   
2. Code Quality: Is the code well-organized, clean, and easy to read? Are Django best practices followed, including using model relationships, views, and templates effectively?

3. Design and User Experience: Is the website visually appealing and responsive? Is the navigation intuitive? Is the content presented clearly?

4. Creativity and Customization: Did you go beyond the basic requirements? For example, did you customize the design, add advanced features, or make the site more interactive?

5. Deployment: If applicable, is the application deployed and accessible online? Is the site properly configured for production?

---

Optional Enhancements (Bonus Points):
Blog Post Comments: Allow users to comment on your blog posts.
Social Media Integration: Link to your social media profiles (e.g., LinkedIn, GitHub) from the website.
Interactive Elements: Add JavaScript-based interactive features, such as a dynamic project filter.
Animations or Transitions: Enhance user experience by adding CSS animations for transitions between pages or elements.

---

Timeline:
Assignment Deadline: [27/11/2024]
- Make sure to commit regularly and push your code to your GitHub repository as you progress through the assignment.

---

Submission:
1. Submit a GitHub repository with the full code and project files.
2. Submit a live demo link (optional but highly encouraged).
3. Submit your README.md file, including instructions for running the project locally.

---

Additional Notes:
- This is a personal project, so feel free to personalize the design and structure. You should reflect your style and personality in the website layout and presentation.
- Remember to test the website for different screen sizes to ensure it is responsive and works well on mobile devices.

Good luck, and have fun building your portfolio website! 🚀
