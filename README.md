## start

    git clone
    cd app_folder
    bundle
    yarn
    rails db:migrate
    rails c
    User.last.update(admin: true)
    bin/dev or rails s

Set hcaptcha keys

.env

    HCAPTCHA_SITE_KEY=
    HCAPTCHA_SECRET_KEY=

## end

## change git url

    git remote set-url origin

## Scaffolds used for this project globalid

    rails g scaffold BrStock ticker:string price:float
    rails g scaffold BrReit ticker:string price:float

    rails g scaffold Portfolio name:string

    rails g scaffold Investment portfolio:references assigned_to:belongs_to{polymorphic}

Than customized Investment model and form to work with globalid, created a helper.
