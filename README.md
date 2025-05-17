[![Build Status](https://github.com/chiku/spambust-sample/actions/workflows/build.yml/badge.svg)](https://github.com/chiku/spambust-sample/actions/workflows/build.yml)

Spambust Sample
================

Demonstrate the usage of the [spambust gem](https://rubygems.org/gems/spambust/).

Local Development
-----------------

1. Install dependencies
```script
bundle install
```

2. Run the application
```script
bundle exec rerun rackup
```

3. Navigate to http://localhost:9292

4. Fill the form normally and click "Create Account".
   Use should see a message "User is" on the screen.

5. Inspect the webpage and manually fill input tag with
   name="user[first_name]". You could try this JavaScript code.
   ```javascript
   document.querySelector('input[name="user[first_name]"]').value = 'John';
   ```
   Now click "Create Account".
   You should see "Faker!" on the screen.

License
-------

This project is released under the MIT license. See the [LICENSE](./LICENSE) file for details.
