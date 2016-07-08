# UmbrellaProject

    mix new project_name --umbrella

Umbrella projects are intended to be used in situations when you have a big complicated problem
to solve and it's going to require multiple distinct sets of functionality that could be
split into different mix projects.

The `apps` directory can have multiple mix projects and hold them all together as one thing
in this big umbrella project.

It's important to note that mix will run all of the tasks on all of the projects. For example:

    mix test

... will run the tests of all projects at once.
