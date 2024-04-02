# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 3.3.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Requirements

*  [ ] Submit a url in a form on the homepage  
*  [ ] Url is saved to the database
*  [ ] The URL can be viewed by accessing a Base62 encoded primary key ID (short code) of the URL at /v/:id
*  [ ] A user should be able to copy the short URL to the clipboard
*  [ ] When visiting the short code, a view is recorded so we can keep track of how many views per day a link gets
*  [ ] A total number of views should be saved to the URL record
*  [ ] A user should be able to view a graph of the views over the past 2 weeks
*  [ ] A user should be able to edit and delete the URL
*  [ ] We should also retrieve the title, description, and opengraph image for the HTML document
*  [ ] This should run in the background to keep the application fast
*  [ ] If a URL is edited, we should update the title, description, and image for it
*  [ ] We should paginate this list of shortened URLs


### Link
url         :string  
title       :string  
description :string  
image       :string  
views_count :integer

### Views
link_id     :key  
created_at  :datetime
