## start

    git clone
    cd app_folder
    bundle
    bin/rails db:migrate
    bin/rails g madmin:install
    bin/rails c
    User.last.update(admin: true)
    bin/rails g administrate:install


    bin/dev or bin/rails s

Set hcaptcha keys

.env

    HCAPTCHA_SITE_KEY=
    HCAPTCHA_SECRET_KEY=

## end
