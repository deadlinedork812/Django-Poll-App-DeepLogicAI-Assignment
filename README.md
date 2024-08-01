# Django-Poll-App

Django poll app is a full featured polling app. You have to register in this app to show the polls and to vote. If you already voted you can not vote again. Only the owner of a poll can add poll , edit poll, update poll, delete poll , add choice, update choice, delete choice and end a poll. If a poll is ended it can not be voted. Ended poll only shows user the final result of the poll. There is a search option for polls. Also user can filter polls by name, publish date, and by number of voted. Pagination will work even after applying filter.

<h1>Getting Started</h1>
<p>These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.</p>

<h2>Prerequisites</h2>
<code>python== 3.5 or up and django==2.0 or up</code>

<h2>Installing</h2>
<pre>open terminal and type</pre>
<code>git clone https://github.com/devmahmud/Django-poll-app.git</code><br><br>

<h4>or simply download using the url below</h4>
<code>https://github.com/devmahmud/Django-poll-app.git</code><br>

<h2>To migrate the database open terminal in project directory and type</h2>
<code>python manage.py makemigrations</code><br>
<code>python manage.py migrate</code>

<h2>To use admin panel you need to create superuser using this command </h2>
<code>python manage.py createsuperuser</code>

<h2>To Create some dummy text data for your app follow the step below:</h2>
<code>pip install faker</code>
<code>python manage.py shell</code>
<code>import seeder</code>
<code>seeder.seed_all(30)</code>
<p>Here 30 is a number of entry. You can use it as your own</p>

<h2> Configuring OAuth login </h2>
<details>
    <summary>Obtaining OAuth Client ID for Google</summary>


1. **Go to the Google Cloud Console:**
   - Navigate to [Google Cloud Console](https://console.cloud.google.com/).
   - Sign in with your Google account.

2. **Create a new project:**
   - Click on the project dropdown menu at the top of the page.
   - Click on "New Project" and follow the prompts to create a new project.

3. **Enable the Google Identity service:**
   - In the Google Cloud Console, navigate to "APIs & Services" > "Dashboard."
   - Click on "Enable APIs and Services."
   - Search for "Google Identity" or "Google+ API" and enable it for your project.

4. **Create OAuth consent screen:**
   - In the Google Cloud Console, navigate to "APIs & Services" > "OAuth consent screen."
   - Fill in the required fields (like application name, user support email, etc.).
   - Add scopes (permissions) your application requires.
   - Save the consent screen information.

5. **Create OAuth credentials:**
   - In the Google Cloud Console, navigate to "APIs & Services" > "Credentials."
   - Click on "Create Credentials" > "OAuth client ID."
   - Select "Web application" as the application type.
   - Enter a name for your OAuth client.
   - Add authorized redirect URIs : `http://127.0.0.1:8000/complete/google-oauth2/`
   - Click "Create."

6. **Copy the client ID and client secret:**
   - Once the OAuth client is created, you'll see your client ID and client secret.
   - Copy these values and update the following variables in settings.py

        ```
        SOCIAL_AUTH_GOOGLE_OAUTH2_KEY = 'your-client-id'
        SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET = 'your-client-secret'
        ```

For detailed instructions, refer to Google's documentation on [OAuth 2.0](https://developers.google.com/identity/protocols/oauth2).
</details>

<details>
   <summary>Obtaining OAuth Client ID for Facebook</summary>
   
1. **Create a Facebook App:**
   - Go to the [Facebook Developers](https://developers.facebook.com/) website and log in.
   - Click on "My Apps" and then "Create App".
   - Enter the required information for your app (display name, contact email, etc.) and create the app.

2. **Configure Basic Settings:**
   - In your app dashboard, go to Settings > Basic.
   - Add a platform (select Website) and enter your site URL(http://127.0.0.1:8000/complete/facebook/).
   - Save your changes.

3. **Get App ID and App Secret:**
    
    - Update the following settings to your settings file, replacing `'your-facebook-client-id'` and `'your-facebook-client-secret'` with your actual LinkedIn app credentials:
     ```python
        SOCIAL_AUTH_FACEBOOK_OAUTH2_KEY = 'your-client-id'
        SOCIAL_AUTH_FACEBOOK_OAUTH2_SECRET = 'your-client-secret'
     ```


</details>
<details>
  <summary>Obtaining OAuth Client ID for LinkedIn</summary>

  ### Step 1: Create a LinkedIn App
  1. Go to the [LinkedIn Developer Portal](https://www.linkedin.com/developers/) and sign in.
  2. Click on "Create App" and fill in the required details, such as the app name, description, and logo.
  3. In the "Authorized Redirect URLs" section, add the callback URL for your Django app. This URL will be like `http://127.0.0.1:8000/complete/linkedin/`.
  4. Save the changes and note down the Client ID and Client Secret provided by LinkedIn.

  ### Step 2: Configure Django Settings
  
    1. Update the following settings to your settings file, replacing `'your-linkedin-client-id'` and `'your-linkedin-client-secret'` with your actual LinkedIn app credentials:
     ```python
     SOCIAL_AUTH_LINKEDIN_OAUTH2_KEY = 'your-client-id'
     SOCIAL_AUTH_LINKEDIN_OAUTH2_SECRET = 'your-client-secret'
     ```
</details>

<h2> To run the program in local server use the following command </h2>
<code>python manage.py runserver</code>

<p>Then go to http://127.0.0.1:8000 in your browser</p>

<h2>Project snapshot</h2>
<h3>Home page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51409444-0e40a600-1b8c-11e9-9ab0-27d759db8973.jpg" width="100%"</img> 
</div>

<h3>Login Page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51409509-36c8a000-1b8c-11e9-845a-65b49262aa53.png" width="100%"</img> 
</div>

<h3>Registration Page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51409562-5cee4000-1b8c-11e9-82f6-1aa2df159528.png" width="100%"</img> 
</div>

<h3>Poll List Page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51409728-d423d400-1b8c-11e9-8903-4c08ba64512e.png" width="100%"</img> 
</div>

<h3>Poll Add Page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51409796-fe759180-1b8c-11e9-941b-c1202956cca4.png" width="100%"</img> 
</div>

<h3>Polling page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51409843-1e0cba00-1b8d-11e9-9109-cceb79a6a623.png" width="100%"</img> 
</div>

<h3>Poll Result Page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51409932-60ce9200-1b8d-11e9-9c83-c59ba498ca8b.png" width="100%"</img> 
</div>

<h3>Poll Edit Page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51410008-92dff400-1b8d-11e9-8172-c228e4b60e28.png" width="100%"</img> 
</div>

<h3>Choice Update Delete Page</h3>
<div align="center">
    <img src="https://user-images.githubusercontent.com/19981097/51410442-dc7d0e80-1b8e-11e9-8f8e-18e6d7bb70fb.png" width="100%"</img> 
</div>

<h3>Dsahboard Page</h3>
<div align="center">
<img width="100%" alt="dashboard" src="https://github.com/devmahmud/Django-Poll-App/assets/17628879/46bd5f4d-b236-44c4-8636-2e171e2173e5"> 
</div>

<h2>Author</h2>
<blockquote>
  Mahmudul alam<br>
  Email: expelmahmud@gmail.com
</blockquote>

<div align="center">
    <h3>========Thank You !!!=========</h3>
</div>


# Django-Poll-App Modification by Satvik Somvanshi for Deep Logic AI Assignment

# PollMe Project

## Overview

The PollMe project is a Django-based web application for creating and managing polls. This README provides detailed instructions on setting up, modifying, and deploying the project, including new features added and deployment steps to AWS Lambda.

## Features Added

### Category Feature

- **Include a Category When Creating a Poll**: Users can now assign a category to a poll during creation.
- **Modify the Category of an Existing Poll**: Allows updating the category of a poll after creation.

### Category Management

- **Admin Interface**: Enabled category management through the Django admin interface.
- **Poll Creation/Edit Forms**: Updated forms to include category selection.

### UI Enhancements

- **Category Display**: Updated the user interface to allow viewing polls by category.
- **Styling Improvements**: Enhanced CSS styling and interactive elements.

### API Endpoints

- **List Polls by Category**: New API endpoint to retrieve and list polls by category.
  - **Endpoint**: `/api/polls/category/<category_id>/`

## Setup Instructions

### Clone the Repository


git clone https://github.com/your-username/pollme-django.git
cd pollme-django

Add Categories
To add categories to your application, follow these steps:

Open the Django Shell

Run the following command to access the Django shell:


python manage.py shell
Create Category Instances

Import the Category model and create instances for each category you want to add:


from polls.models import Category
Category.objects.create(name="Technology")
Category.objects.create(name="Health")
Category.objects.create(name="Science")
Category.objects.create(name="Sports")
Category.objects.create(name="Entertainment")
This will create five categories: Technology, Health, Science, Sports, and Entertainment.

Exit the Shell

After adding the categories, exit the Django shell by typing exit() and pressing Enter.

Now, you can use these categories when creating or editing polls in your application.

<Changes Made>
<Category Feature>
Added the ability to categorize polls. Users can now:
Include a category when creating a poll.
Modify the category of an existing poll.

<Category Management>
Editing Categories: Enabled editing of poll categories through:
The admin interface.
Poll creation/edit forms.
<UI Enhancements>
User Interface: 
Updated the user interface to display polls by category with:
Improved CSS styling.
Interactive elements.

<API Endpoints>
New Endpoint: Added a new API endpoint to list polls by category:
/api/polls/category/<category_id>/
Database Path
SQLite Database: Configured the SQLite database to be located at:
/app/db.sqlite3 within the Docker container.

Usage
Accessing the Application

Home Page: http://127.0.0.1:8000/
Poll List by User: http://127.0.0.1:8000/polls/list/user/
Add Poll: http://127.0.0.1:8000/polls/add/
Edit Poll: http://127.0.0.1:8000/polls/edit/<poll_id>/
Dashboard: http://127.0.0.1:8000/polls/dashboard/

API Endpoints

List Polls by Category: GET /api/polls/category/<category_id>/

Running with Docker
Build the Docker Image
Copydocker build -t my-django-app .
Run the Docker Container
Copydocker run -p 8000:8000 my-django-app
Deployment to AWS Lambda
To deploy the Django application to AWS Lambda, follow these steps:
1. Prepare Your Dockerfile
Ensure your Dockerfile includes the necessary configurations:
dockerfileCopy# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Ensure SQLite database file is copied
COPY db.sqlite3 /app/

# Copy static files
COPY static /app/static

# Set environment variables
ENV DJANGO_SETTINGS_MODULE=pollme.settings

# Expose the port the app runs on
EXPOSE 8000

# Run the Django application
CMD ["gunicorn", "-b", "0.0.0.0:8000", "pollme.wsgi:application"]
2. Push Docker Image to AWS ECR
Authenticate Docker to Your ECR Registry

<code>Copyaws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 115011265608.dkr.ecr.ap-south-1.amazonaws.com </code>

Tag Your Docker Image
<code>Copydocker tag my-django-app:latest 115011265608.dkr.ecr.ap-south-1.amazonaws.com/my-django-app:latest</code>

Push the Docker Image
<code>Copydocker push 115011265608.dkr.ecr.ap-south-1.amazonaws.com/my-django-app:latest</code>

3. Create a Lambda Function
Use the AWS Management Console or CLI to create a new Lambda function and choose the image from ECR.

4. Configure API Gateway
Set up an API Gateway to trigger your Lambda function. Ensure the API Gateway is configured to use an HTTP or REST API endpoint.

5. Testing Your Deployment
After deploying, test your Lambda function through the API Gateway URL provided by AWS. Ensure your API Gateway points to the correct Lambda function endpoint.