# The Miner Exchange

View live: https://minerexchange.herokuapp.com/

**Table of Contents**
  * [Problem Definition and Solution](#problem-definition-and-solution)
    + [Problem](#problem)
      - [Why is there a need for selling and buying secondhand mining equipments?](#why-is-there-a-need-for-selling-and-buying-secondhand-mining-equipments-)
      - [Why online?](#why-online-)
    + [Solution](#solution)
  * [User Stories](#user-stories)
  * [Workflow](#workflow)
  * [Style Guide](#style-guide)
  * [Wireframes](#wireframes)
  * [ERD](#erd)
  * [Trello](#trello)

## Problem Definition and Solution

### Problem

There is no exisiting online stores dedicated to the buying and selling of used or second hand crypto mining machines.


#### why-is-there-a-need-for-selling-and-buying-secondhand-mining-equipments?

Some owners of Mining machines may have already had great returns from their machines, at the same time, they want to maximise their returns in the form of lump sum payments.

#### Why online?

Those machines are geographically located at so many locations, the trading has to be done online practically.

### Solution

Create a better online store dedicated to the buying and selling of used or new mining machines.

## User Stories

***User should be able to edit their own profile***

**Feature:** Edit Profile

- As a User
- I want to edit my profile
- Because I want to keep my details up to date

**Scenario:** User edits profile

- Given I'm a logged in User
- When I go to the edit profile page for my profile
- And I change the text in the text fields and/or upload a new profile photo
- And I click "Update profile"
- Then I should see my profile page
- And the details should be updated

---

***User should not be able to edit a profile that is not theirs***

**Feature:** Unable to edit other user's profile
- As a User
- I want nobody other than me to be able to edit my profile
- Because I want to have control over my profile details

**Scenario:** User attempts to edit another user's profile
- Given I'm a logged in User
- When I go to the edit profile page for another user's profile
- Then I am redirected back to the user's profile view page

---

***User should be able to edit a listing that is theirs***

**Feature:** Edit Listing/Mining Contracts
- As a User
- I want to edit one of my listings
- Because I want to improve the accuracy of my listing

**Scenario:** User edits listing
- Given I'm a logged in User
- When I go to the edit page for a listing that is mine
- And I change the text in the text fields and/or upload a new equipment image
- And I click "Edit Contract"
- Then I should see the detailed view page for the particular listing
- And the details should be updated

---

***User should not be able to edit a listing that is not theirs***

**Feature:** Unable to edit other user's listing
- As a User
- I want nobody other than me to be able to edit my book listings
- Because I want to have control over my own listings

**Scenario:** User attempts to edit another user's listing
- Given I'm a logged in User
- When I go to the edit book page for another user's listing
- Then I am redirected back to the detailed view page for that listing

---

***User should be able to destroy a listing that is theirs***

**Feature:** Delete Listing
- As a User
- I want to delete one of my listings
- Because I have changed my mind

**Scenario:** User deletes listing
- Given I'm a logged in User
- When I go to the edit page for a book listing that is mine
- And I click 'delete contract'
- Then the listing should be deleted from the database

---

***User should not be able to leave feedbacks with themselves***

**Feature:** Unable to leave feedbacks to self
- As a User
- I do not want to see an option to leave feedbacks to own listings
- Because this would be a trust issue

**Scenario:** User visits feedback page
- Given I'm a logged in User
- When I go to the feedback page, I can leave feedback to other users that I have interacted with
- Then I won't have the option to leave feedbacks to myself.

---

***User should not see a 'Add Feedback' button on their own profile or listing***

**Feature:** No 'message reader' button on own profile
- As a User
- I do not want to see an option to message myself
- Because this would be pointless functionality

**Scenario:** User visits their profile page
- Given I'm a logged in User
- When I go to my profile page
- Then I do not see a 'message reader' button

---

***User should be able to view book listings on homepage without logging in***

**Feature:** Homepage viewable without login
- As a User
- I want to view book listings without signing in
- Because I want to know it's worth signing up before I do so

**Scenario:** User visits homepage
- Given I'm a logged out user
- When I go to the homepage and see all listings

---

***User should be able to view detailed book listing without logging in***

**Feature:** Detailed individual listings without login
- As a User
- I want to view book listings without signing in
- Because I want to know more about this site

**Scenario:** User visits detailed book view page
- Given I'm a logged out user
- I am able to go to the detailed listing page

---

***User should not be able to view new listing form page without logging in***

**Feature:** User must be logged in to see the add listing form
- I want users to be required to log in in order to add a listing

**Scenario:** User visits add new book page
- Given I'm a logged out user
- When I go to the add new listing page
- Then I am redirected to the login page

---

## Workflow

[here](https://drive.google.com/file/d/1yU0UcLJ6m4j2Wf0uCTSLpa9Pggzhao_N/view?usp=sharing)
![workflow](/readme_resources/workflow_diagram.png)

## Style Guide

Colours and fonts were chosen as below.

![colours](/readme_resources/color_scheme.png)

![fonts](/readme_resources/Fonts.png)


## Wireframes

![mockup](/readme_resources/wireframe_index.png)
![mockup](/readme_resources/wireframe_login.png)
![mockup](/readme_resources/wireframe_signup.png)
![mockup](/readme_resources/wireframe_create_listing.png)
![mockup](/readme_resources/wireframe_sort_function.png)
![mockup](/readme_resources/wireframe_sort_result.png)
![mockup](/readme_resources/wireframe_individual_listing.png)


## ERD

![erd](/readme_resources/erd.png)

## Trello

See this project's [Trello board](https://trello.com/b/XgYUGInt/miner-exchange) for details.


![trello](/readme_resources/trello.png)


