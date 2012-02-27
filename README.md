## A template for medium-to-large Sinatra projects.

This repository contains my preferred full-stack Ruby toolkit, configured and ready to roll in a well-organized structure.

* __Framework:__ Sinatra (http://sinatrarb.com/)
* __Templating:__ Slim (http://slim-lang.com/)
* __Asset Pipeline:__ Rake-Pipeline (https://github.com/livingsocial/rake-pipeline)
* __ORM:__ Sequel (http://sequel.rubyforge.org/)
* __Database:__ PostgreSQL/Agnostic (http://postgresql.org/)


```
|-config           -- config files go here (duh)
|---template.yml   -- rename to app.yml
|-db               -- database files go here
|---migrations     -- sequel migrations go here
|-lib              -- app code goes here
|---template       -- rename folder to app name
|-----assets       -- assets go here to be pipelined
|-------css        -- css/sass files here
|-------js         -- js/coffeescript files here
|---------vendor   -- javascript libraries here
|-----classes      -- app code that is not a helper or a model goes here
|-----controllers  -- controllers/routing here
|-----helpers      -- helper functions available to templates go here
|-----models       -- data models go here
|-----views        -- page templates go here
|-----app.rb       -- sinatra config goes here
|---template.rb    -- rename to app.rb and require all dependencies / configs here
|-public           -- static files go here
|-spec             -- tests go here
|-tasks            -- rake tasks go here
|---console.rb     -- load irb with access to models/routes etc
|-config.ru        -- configure asset pipline and load app
```

## Notes

The rake-pipeline middleware only runs during development.  Assets must be precompiled in production.


## Thanks
All the creators and contributors of the awesome tools this framework is built on.