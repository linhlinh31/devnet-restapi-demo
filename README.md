REST-tutorial
=============

Files for my REST API tutorials featuring a server written in Python and a web client written in Javascript. Here are the articles:

- [Designing a RESTful API with Python and Flask](http://blog.miguelgrinberg.com/post/designing-a-restful-api-with-python-and-flask)
- [Writing a Javascript REST client](http://blog.miguelgrinberg.com/post/writing-a-javascript-rest-client)
- [Designing a RESTful API using Flask-RESTful](http://blog.miguelgrinberg.com/post/designing-a-restful-api-using-flask-restful)

Setup
-----

Step1: Build Docker

```sh
docker build -t image_name .
```

Step 2: Run Container

```sh
docker run -d -p 8080:5000 -e ENV=<URL> <image_name>
```

User guide API
--------------

| Method | Description      | URL                                    | Data                                                                                               | Authentication |
|--------|------------------|----------------------------------------|----------------------------------------------------------------------------------------------------|----------------|
| GET    | List all task    | http://url/todo/api/v1.0/tasks         | None                                                                                               | Yes            |
| GET    | Show task detail | http://url/todo/api/v1.0/tasks/task_id | None                                                                                               | Yes            |
| POST   | Create Task      | http://url/todo/api/v1.0/tasks         | { 'id': 'number_id', 'title: 'Task title', 'description': 'Task description','done': 'True/False'} | Yes            |
| DELETE | Delte Task       | http://url/todo/api/v1.0/tasks/task_id | None                                                                                               | Yes            |
| PUT    | Update Task      | http://url/todo/api/v1.0/tasks/task_id | { 'title: 'Task title', 'description': 'Task description', 'done': 'True/False' }                  | Yes            |