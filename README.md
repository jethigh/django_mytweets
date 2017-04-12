

#### Create a Django project


docker-compose run web django-admin.py startproject composeexample .


#### Connect the database

In this section, you set up the database connection for Django.

    In your project directory, edit the composeexample/settings.py file.

    Replace the DATABASES = ... with the following:

     DATABASES = {
         'default': {
             'ENGINE': 'django.db.backends.postgresql',
             'NAME': 'postgres',
             'USER': 'postgres',
             'HOST': 'db',
             'PORT': 5432,
         }
     }

    These settings are determined by the postgres Docker image specified in docker-compose.yml.

    Save and close the file.

    Run the docker-compose up command.

     $ docker-compose up
     Starting composepractice_db_1...
     Starting composepractice_web_1...
     Attaching to composepractice_db_1, composepractice_web_1
     ...
     db_1  | PostgreSQL init process complete; ready for start up.
     ...
     db_1  | LOG:  database system is ready to accept connections
     db_1  | LOG:  autovacuum launcher started
     ..
     web_1 | Django version 1.8.4, using settings 'composeexample.settings'
     web_1 | Starting development server at http://0.0.0.0:8000/
     web_1 | Quit the server with CONTROL-C.

    At this point, your Django app should be running at port 8000 on your Docker host. If you are using a Docker Machine VM, you can use the docker-machine ip MACHINE_NAME to get the IP address.
