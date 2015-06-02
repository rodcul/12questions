[![Build Status](https://travis-ci.org/rodcul/12questions.svg)](https://travis-ci.org/rodcul/12questions)[![Coverage Status](https://coveralls.io/repos/rodcul/12questions/badge.svg)](https://coveralls.io/r/rodcul/12questions)

[![Stories in Ready](https://badge.waffle.io/rodcul/12questions.png?label=ready&title=Ready)](https://waffle.io/rodcul/12questions)

# Gallup 12 Questions App

As part of our Lab Week at [Makers Academy](http://www.makersacademy.com/) we'll be attempting to build a web app that will allow team leaders to understand important metrics surrounding their team by sending out monthly e-mails and then aggregating (to anonymise) and plotting the results for these 12 questions over time.

## Project MVP

### Features:

- Team leader sign up
- Add team members name/e-mail
- Send out monthly e-mail with unique hash for that team member
- Survey: collect results (must work on mobile)
- Plot results

### Stack:

- Sinatra
- Datamapper/postgres
- Bootstrap
- Heroku
- Testing with Capybara

### Tools & process:

- We'll be attempting to adhere to Agile principles: http://www.agilemanifesto.org/principles.html
- Waffle.io: https://waffle.io/rodcul/12questions
- Gitflow: http://nvie.com/posts/a-successful-git-branching-model/


## The theory:

[Gallup’s 12 questions to measure employee engagement](https://christopherfeld.wordpress.com/2011/02/03/gallups-12-questions-to-measure-employee-engagement/) by Christopher Feld

>“What lies at the heart of this great workplace? Which elements will attract only talented employees and keep them, and which elements are appealing to every employee, the best, and the rest?”

– Marcus Buckingham and Curt Coffman, First Break All the Rules: What the Greatest Managers Do Differently, 1999, p. 26.

Today, companies derive their true value from its human capital (Buckingham and Coffman, 1999). As the authors point out, turning to balance sheets to determine the vitality of an organization is a myopic view. Furthermore, recruiting, retaining, and developing the best talent is critical to organizational vitality and strength. Alternatively, recruiting, retaining, and developing the wrong talent can be detrimental and costly to organizations.

To recruit, retain, and develop the best employees, the authors sought to answer the above questions. To get answers they turned to the Gallup Organization’s research into workplace. From Gallup’s research the authors mined data from twenty-five years of study that included interviewing more than a million employees! In sifting through one hundred million questions, they believe they identified twelve key questions that measure the strength of an organization.

The following twelve questions will allows us to gain a pulse of employee engagement. Also, we may use the results of our surveys to develop better strategies related to recruitment, retention, and development. The twelve questions are:

```
1. Do I know what is expected of me at work?
2. Do I have the materials and equipment I need to do my work right?
3. At work, do I have the opportunity to do what I do best every day?
4. In the last seven days, have I received recognition or praise for doing good work?
5. Does my supervisor, or someone at work, seem to care about me as a person?
6. Is there someone at work who encourages my development?
7. At work, do my opinions seem to count?
8. Does the mission/purpose of my company make me feel my job is important?
9. Are my co-workers committed to doing quality work?
10. Do I have a best friend at work?
11. In the last six months, has someone at work talked to me about my progress?
12. This last year, have I had opportunities at work to learn and grow?
```

Face it. We’ve all worked in jobs we hate, and based on those experiences, how many of the factors above lead to that terrible experience?

This valuable tool can be used to avoid those terrible experiences. Use the questions as an employee engagement survey.


==========

# Getting it to work

To get this app to run on your local machine:

* Clone this repo: `git clone https://github.com/rodcul/12questions.git`

* Create the Psql databases `q12app_test` and `q12app_development`.

* Run `run rake auto_upgrade ENV_RACK=test` in your project directory to auto_upgrade your psql databases and include the relations you'll need.

* Run the project with Shotgun.