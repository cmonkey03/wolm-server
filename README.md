
# Website of Lower Manhattan API
This is the backend for WOLM, a website where users can view tours, signup and make a reservation and request to be an administrator to view data and create tours.

## Motivation
The purpose of this application was to build a React/Rails application from scratch as a solo project. This API follows RESTful conventions to allow the client to execute CRUD actions for users, tours and reservations.

## Tech used
Rails
Postgres

## Features
- Serializers to render JSON data
- CORS enabled to secure http requests
- Validations for all three tables
- Authentication with OAuth

## Setup
- Clone down this repo and run `bundle install`.
- Run `rails db:migrate` to setup the database.
- Run `rails db:seed` to seed the database with tours, users and reservations.
- Once this has completed and all dependencies are installed, run `rails s`.
- Visit [http://localhost:3000/](http://localhost:3000/). You'll only see the Rails welcome screen but this indicates that the http request was successful and the API is ready to serve the client.
- Now, visit the [ZombieRoad client](https://github.com/cmonkey03/ZombieRoad) and follow the setup instructions to get the ZombieRoad app's frontend running.

## Contribute
Thanks for your interest in contributing to ZombieRoad!

The following is a set of guidelines for contributing to the ZombieRoad app backend.

### Issues
Before submitting a new issue ensure that one has not already been created by reviewing the [open issues](https://github.com/tristramjones/ZombieRoadBackend/issues). If your bug is unique to the currently open issues, submit a new one [here](https://github.com/tristramjones/ZombieRoadBackend/issues/new).

#### Write detailed information
Detailed information is very helpful to understand an issue.

For example:
- How to reproduce the issue, step-by-step.
- The expected behavior (or what is wrong).
- Screenshots displaying the buggy behavior.
- The operating system.

### Pull requests
Pull Requests are always welcome. Ensure that you've run `bundle install` before creating an issue or submitting a pull request. Ensure the PR description clearly describes the problem and solution. It should include:
- The operating system on which you tested.
- The relevant issue number, if applicable.
