[![Stories in Ready](https://badge.waffle.io/kaxla/realportfolio.png?label=ready&title=Ready)](https://waffle.io/kaxla/realportfolio)
#My Portfolio App

###Live site at [http://kaylaamorrison.com]()

##About
I built this Ruby on Rails app from scratch. I did all front-end design and code by hand (no Bootstrap or Zurb) because I wanted to improve my CSS skills. It actually took me about twice as long to style everything as it did to code the back end.  I learned a lot about CSS, particularly layouts, and am much more comfortable with the front end of web development now.

On the back end I used PostgreSQL for both development and production for the first time and found that I liked it better than SQLite because it made deploying to Heroku a lot smoother. I integrated the RailsAdmin gem because I wanted to learn how to make an interface that a non-technical user could operate. I liked the look and ease of use of RailsAdmin a lot better than other choices like Active Admin. Figuring out how to integrate a blog posed a particularly frustrating challenge. I ended up going with using Redcarpet to parse markdown that I enter into the new blog form through RailsAdmin, although I would have liked to integrate a Jekyll blog. I wrote an entire post about this topic [here](http://kaylaamorrison.com/blogs/2).

In the process of making this app Rails 4.1 was released and I decided to upgrade from 4.0 because I originally thought it would be handy to use the new Action Pack Variants feature. I eventually realized that I didn't want to have to edit 3 different files every time I made a change and it's a lot easier to just design one page responsively. This obviously wan't a huge upgrade, but it was nice to learn a little bit about the process and where things can get messed up

##Technologies Used
* PostgreSQL (development and production)
* Deployed on Heroku with Route 53 for DNS routing
* Rails 4.1
* [RailsAdmin](https://github.com/sferik/rails_admin) for management interface
* [Paperclip](https://github.com/thoughtbot/paperclip) and AWS S3 for uploading/serving project screenshots
* [Redcarpet](https://github.com/vmg/redcarpet) and [Coderay](https://github.com/rubychan/coderay) for markdown processing and syntax highlighting
* [Cancancan](https://github.com/CanCanCommunity/cancancan) for authorization
* [Postmark](https://postmarkapp.com/) for contact form emails

##TODOs
* Add tests. I was a bad developer and didn't do TDD because I wanted to get this out as fast as possible, it's a small app, and I'm the only one that will ever be in the code base. I learned my lesson though because having to hand test everything to make sure it was working took 10x longer.
* Refactor. There is definitely some logic in my controllers that could be moved to models and there are several very un-DRY bits, like the menu bar and some of the front-page HTML.
* Make it all responsive. Some parts are kind of responsive based on my cobbled-together understanding of how to do responsive design, but I'd really like to get more comfortable doing it.
* Go back and clean up all CSS. I know that any front-end developer would be horrified, but it was a learning process.
* Convert all CSS to SASS - I wanted to make sure I had a very solid grasp on CSS before throwing SASS on top of it.
* Set up the blog section as a Jekyll blog. There is a blog post about this on the live site [here](http://kaylaamorrison.com/blogs/2). To summarize: there is no immediately obvious easy way to put a Jekyll blog into a Rails app. I would prefer the workflow of using Jekyll to my current workflow of writing posts and then copy/pasting them into the new blog form on the live site. I'd also like to have them backed up on Github.
