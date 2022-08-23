## start

    git clone
    cd app_folder
    bundle
    rails db:migrate
    rails g madmin:install
    rails c
    User.last.update(admin: true)
    rails g administrate:install
    bin/dev or rails s

Set hcaptcha keys

.env

    HCAPTCHA_SITE_KEY=
    HCAPTCHA_SECRET_KEY=

## end

## change git url

    git remote set-url origin

## scaffolds

    rails g scaffold BrSock ticker:string price:decimal slug:string
    rails g scaffold BrReit ticker:string price:decimal slug:string
    rails g scaffold Stock ticker:string price:decimal slug:string
    rails g scaffold Reit ticker:string price:decimal slug:string
    rails g scaffold Currency ticker:string price:decimal slug:string
    rails g scaffold Crypto ticker:string price:decimal slug:string
