1/11 Checkpoints Completed

1. ~~[Intro]~~ (https://www.bloc.io/users/adam-langley/checkpoints/1039?roadmap_section=16) ([Basic Rails App] (https://www.bloc.io/users/adam-langley/checkpoints/299?roadmap_section=5))
  * [x] Getting Started Guide

2. ~~[User Sign-up]~~ (https://www.bloc.io/users/adam-langley/checkpoints/1040?roadmap_section=16) ([User Authentication] (https://www.bloc.io/users/adam-langley/checkpoints/308?roadmap_section=5))
  * [x] Incorporate Devise Gem
  * [x] Test
    * Sign a new user up. Do you receive a confirmation email?
    * What happens if you attempt to sign up with an invalid email?
    * What happens if you attempt to sign up with a duplicate email?
  * [ ] Bonus: Try [Authentication from scratch] (http://railscasts.com/episodes/250-authentication-from-scratch)

3. ~~[User Sign-in/Sign-out]~~ (https://www.bloc.io/users/adam-langley/checkpoints/1041?roadmap_section=16) ([Authentication Continued] (https://www.bloc.io/users/adam-langley/checkpoints/670))
  * [x] Incorporate User sign-in/Sign-out
  * [x] Test
    * Sign into Blocipedia, does the top navigation change to indicate you are signed in?
    * Sign out of Blocipedia, does the top navigation change to indicate you are signed out?
    * What happens if you attempt to reset your password?

4. [Wiki CRUD] (https://www.bloc.io/users/adam-langley/checkpoints/1042?roadmap_section=16) ([Models] (https://www.bloc.io/users/adam-langley/checkpoints/303)) ([CRUD] (https://www.bloc.io/users/adam-langley/checkpoints/306)) ([More CRUD] (https://www.bloc.io/users/adam-langley/checkpoints/307))
  * [ ] Create Wiki model
  * [ ] Test
    * Are you able to create new public wikis?
    * Are you able to update public wikis?
    * Are you able to delete public wikis?

5. [User Roles] (https://www.bloc.io/users/adam-langley/checkpoints/1043?roadmap_section=16) ([Authorization] (https://www.bloc.io/users/adam-langley/checkpoints/310))
  * [ ] Incorporate Pundit Gem
  * [ ] Set Roles: Standard, Premium, Admin
  * [ ] Default to Standard Role
  * [ ] Bonus: Implement [Authorization from Scratch] (http://janeeats.github.io/blog/2013/03/23/authorization-basics-in-rails/)
  * [ ] Test
    * Use the Rails console to create a new user. Are they given the default role?
    * Are you able to edit wikis created by another user?

6. [Seeding Data] (https://www.bloc.io/users/adam-langley/checkpoints/1044?roadmap_section=16) ([Seed Data] (https://www.bloc.io/users/adam-langley/checkpoints/305?roadmap_section=5))
  * [ ] Incorporate Faker Gem
  * [ ] Create fake data for users and wikis
  * [ ] Test
    * Rebuild your database, is it seeded with the data you specified?

7. [Upgrading an Account] (https://www.bloc.io/users/adam-langley/checkpoints/1045?roadmap_section=16)
  * [ ] Determine a User Flow
  * [ ] Incorporate ([Stripe Stripe Integration Resource] (https://www.bloc.io/resources/stripe-integration))
  * [ ] Allow Upgrade and Downgrade
  * [ ] Test
    * Upgrade an existing user account. Was your Stripe account charged? Was the user role changed?
    * Upgrade a premium user. Was your Stripe account charged? Was their role changed?

8. [Private Wikis] (https://www.bloc.io/users/adam-langley/checkpoints/1046?roadmap_section=16) ([Private Topics] (https://www.bloc.io/users/adam-langley/checkpoints/322))
  * [ ] Only Premium and Admins can edit Private Wikis
  * [ ] Allow downgrade of wiki when downgrading account
  * [ ] Test
    * As a premium user, create a private wiki. Sign in with a standard user. Do you see the private wiki in the wikis index?
    * As a premium user, create a private wiki. Downgrade your account to standard. Verify that their private wikis are made public.

9. [Markdown] (https://www.bloc.io/users/adam-langley/checkpoints/1047?roadmap_section=16) ([Post Markdown] (https://www.bloc.io/users/adam-langley/checkpoints/314))
  * [ ] Incorporate Redcarpet Gem
  * [ ] Test
    * View a wiki page built with Markdown, does it render the Markdown properly?

10. [Wiki Collaborators] (https://www.bloc.io/users/adam-langley/checkpoints/1048?roadmap_section=16) ([Has Many Through] (https://www.bloc.io/resources/has-many-through))
  * [ ] Create Collaborator Model
  * [ ] Private Wikis visible to Admin, creator, collaborators
  * [ ] Test
    * As a premium user, add a standard user as the collaborator to a private wiki. Can you add the user multiple times? Sign in as the standard user. Do you see the private wiki in the wikis index? Can you edit the private wiki?
    * As a premium user, remove a collaborator from a private wiki. Sign in as the ex-collaborator. Do you see the private wiki in the wikis index? Can you edit the private wiki?

11. [Extra Credit User Stories] (https://www.bloc.io/users/adam-langley/checkpoints/1049?roadmap_section=16) ([Using HAML] (https://www.bloc.io/resources/using-haml)) ([friendly_id] (https://github.com/norman/friendly_id)) ([EpicEditor] (https://github.com/OscarGodson/EpicEditor))
  * [ ] As a premium user, remove a collaborator from a private wiki. Sign in as the ex-collaborator. Do you see the private wiki in the wikis index? Can you edit the private wiki?
  * [ ] As a user, I want my wiki to have readable URLs
  * [ ] As a user, I want to see a preview of my Markdown as I edit it