wdi_project_1
=============

1. Scope. This is a web application that suggests venues based on user profile and search words. App will have a welcome page where users will be able to register for an account and sign in. The index page will include a search box, and a list of saved venues and favorite venues.
2. Model associations on sketchbook.
3. Wireframes include 4 tables: Users, Venues, Favorites (join table) and Notes.
4. Resources:
                Trello project management: https://trello.com
                Foursquare API docs: https://developer.foursquare.com/docs/venues/explore
                JsonView: https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=en
                ActiveRecord Associations: http://guides.rubyonrails.org/association_basics.html

5. Milestones:
                Friday 05/16: Data model complete. DB/tables/MVC files complete.
                Saturday 05/17: Start logic, models and controllers
                Sunday 05/18: Database structure work complete, Heroku upload
                Monday 05/19:
                Tuesday 05/20: View files and CSS styling.
                Wednesday 05/21: Heroku upload.

6. Planning board. Trello 'wdi_project_1'

7. User stories:

        User should be able to see a welcome page and clic a link to get started.
        User should be able to sign in or register for an account
        User should be authenticated into the app provided they log in or register.
        User should be able to log out and be redirected to welcome page.
        User should see instructions on home page and be able to search for venues of their preference.
        User should be displayed a results list of 9-12 different venues ordered by rating and popularity.
        User should be able to clic on any of the venues displayed and be taken to a venue-specific information page.
        User should be able to add this specific venue to their favorites or to go back to the results list.
        User should be able to go back to the results list without initiating a new search.
        User should see links for "Favorites" and "New search".
        User authenticated for special access should be able to clic on an additional link called "Spy mode".
        User authenticated for special access should be able to see a list of recent saved places along with notes added by [anonymous] users.

