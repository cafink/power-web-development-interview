docker compose run --rm web bash -lc "(bin/bundle check || bin/bundle install) && (bin/yarn check || bin/yarn install)"
