resque: env TERM_CHILD=1 bundle exec rake resque:work
bundle exec thin start -R config.ru -e $RACK_ENV -p $PORT
