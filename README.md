# README
 * Team Name: Ragged Jellyfishes
 * Chris Camp, Amber Mailliard, Catherine Rice, David Skaggs
 * User stories: A user can create a profile, log in, create a new recipe, see a list of all recipes, view a profile page with a list of their submitted recipes, and search for recipes by name and ingredient.

# Build a Client Project

## Recipe Manager

A chef wants to open a new restaurant! Her niche is that she wants to crowdsource her menu and change it each week. To do this she has made a call to all her friends on social media channels. " Bring me your best recipe, I'll give you 10% of the profits per dish sold, and give the person you wish credit for the meal." Emails started pouring in by the thousands so much so that she is unable to keep track of all of them. She has hired DBC to help her! Your task is to create a recipe collection application that users can sign up for and submit their favorite in each category. The requirements are as follows.

### MVP:
A user should be able to log into the app.
A user should be able to submit a SINGLE recipe to a category
* Appetizer
* Salad
* Main Course
* Dessert

A recipe should consist of a name, Ingredients, difficulty level, prep time, and directions, creator
Each Ingredient consists of the item, the amount, and the measurement

### Nice to have:
Users can Rate a recipe a single time 1-5 stars
User profile page that shows all of their submitted recipes
Users can search recipes on name / ingredient list / description / rating
A homepage that will automatically build a menu based on the 5 highest rated dishes in each category.

### Learning Competencies

- Interfacing with clients to determine the specification for building an application, in the form of user stories.
- Using a formal Agile group process to complete a successful development project.

### Summary

Let's put all of our knowledge thus far to the test and build someone a real web application!

The goal is for this challenge to simulate (albeit in a compressed form) the process of interacting with clients, building prototypes for them, and iterating based upon their feedback - all while working together as a team and following development and deployment best practices.

Your instructors will act as your clients throughout this project, helping you drive discovery of their requirements. The instructors will not be "difficult clients" - their goal is to help you find the right questions to ask and will respond as such. This is a low-stakes environment to practice these vital skills.

While you may have the temptation to try to throw a lot of AJAX into this application or turn it into a "single-page application," resist this temptation. There will be plenty of time for exploring JavaScript features later. Focus on defining clear routes, creating clean templates, and testing a "classic" CGI application.

Use the "DBC Rails"-preferred stack:

- Practice TDD using RSpec with `factory_girl` and `capybara`
- [Remove `turbolinks`][die-turbolinks] and `coffee-rails`

Remember, to create a new Rails application with certain features enabled / disabled, you can use [command-line switches][cls].  A good start would be `rails --help`.

### Strategy

Before you dive to deeply into the code, be clear with your team on three things:

1. Decide on your MVP
2. Break your MVP down into deliverable features

### Testing

Your app must be fully tested.  If you want to stretch yourself by TDDing your way, go for it, but timebox yourself. The goal of this is to actually build a functional and well tested app.

Additionally, since testing is such a heavy focus for this application, you should integrate [Continuous Integration][CI].  Two popular providers of CI services are [TravisCI][] and [CircleCI][].

As a bonus feature, try integrating the callback hooks between CI and [Trello][] and [Slack][] to post your CI status directly into your cards and chat..

### Pro Developer Technologies

* Track your work and user stories and their progress by means of [Trello][], [Pivotal Tracker][] or a physical card wall.
* Add continuous integration (CI) to your repo.
* Keep your team communication up and add a chat application.  Many teams, especially those that work remotely, find it helpful to use a chat environment like Slack.  Integrate this with GitHub and CI and hygeinic git behavior, you can work as well separated by miles as you might while standing in the same room together.

### Checkpoints

* Your team should produce a repo inside of your cohort's organization in GitHub
* Your first commit should be a `README.md` containing:
 * Your team name
 * Your team members' names
 * The user stories that define your MVP
* You will be demoing your MVP
 * Show us your app doing the essential work of your app
 * Show us your tests
 * Show us `git log --graph`, this should be clean
* You will be demoing your final project


[die-turbolinks]: http://blog.steveklabnik.com/posts/2013-06-25-removing-turbolinks-from-rails-4
[CI]: http://en.wikipedia.org/wiki/Continuous_integration
[TravisCI]: https://travis-ci.org/recent
[CircleCI]: https://circleci.com/
[Pivotal Tracker]: https://pivotaltracker.com
[Trello]: https://trello.com/
[Slack]: https://slack.com/
[cls]: http://en.wikipedia.org/wiki/Command-line_interface
