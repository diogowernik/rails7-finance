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
