## Ruby wrapper for the Edmunds auto api

This API wrapper will allow you to make calls to the Edmunds Vehicle API to get detailed information about nearly any make, model, and style (trim).
You can also get production images for each vehicle.


## Setup:

First, include the gem in your Gemfile:

    vim Gemfile

    gem 'edmunds_ruby'

    bundle

Or if using from the console, just install the gem:

    gem install 'edmunds_ruby'

Now add your API key

### Get Edmunds Vehicle API key:

You will need to create an account with Edmunds and get a free developer Vehicle API key from here:

    http://developer.edmunds.com

Once you get your API key, either create an initializer file to place it in OR add it to your .bashrc script

#### method 1 - put api key in an initializer file:

Create a new file in config/initializers called edmunds.rb, like so:

    vim config/initializers/edmunds.rb

Add this line, with your api key:

    Rails.configuration.edmunds_vehicle_api_key = "your_api_key_here"

Save the file and exit.


#### method 2 - put api key in your .bashrc script:

Open .bashrc file:

    vim ~/.bashrc

Add this line near the top of the file:

    export EDMUNDS_VEHICLE="your_api_key_here"

Save and close the file, then source the file to make the changes take effect:

    source ~/.bashrc

Now you can use the Vehicle API as you like.


## Usage:

To use the gem, open a console and start playing.
There are currently 5 classes you can call: Make, Model, ModelYear, Style, and Photo

Some of the methods require inputs, others do not. Let's try an easy one first:

    m = Edmunds::Make.new
    m.find_all

This should return a list of all vehicle makes in the system.

For the Model class, you will have to provide an id first (which you can get from a Make response)

    m = Edmunds::Model.new
    m.find_by_id("Lamborghini_Diablo")

## Here is a complete list of available methods:

The method descriptions were pulled from the Edmunds API documentation.

    http://developer.edmunds.com/docs/read/Home

The method names in this wrapper were kept as close to the original Edmunds API method names as possible, to avoid confusion.

While I plan on wrapping the entire Vehicle API, I currently only have the Make, Model, ModelYear, Style, and Photo methods covered.

#### Edmunds::Make.new

http://developer.edmunds.com/docs/read/the_vehicle_api/Make_Repository

    find_all                                          # Get the list of all makes and their all their models
    find_by_id(make_id)                               # Find a make and its models by providing a make ID
    find_future_makes                                 # Find all future makes and their models
    find_make_by_name(name)                           # Find a make details by its name
    find_makes_by_model_year(model_year)              # Find a make by a year
    find_makes_by_publication_state(state)            # Find makes by their state (new or used)
    find_new_and_used                                 # Find all new and used makes
    find_new_and_used_makes_by_model_year(model_year) # Find all new and used makes for a particular year
    find_new_makes                                    # Find only new makes
    find_used_makes                                   # Find only old makes

#### Edmunds::Model.new

http://developer.edmunds.com/docs/read/the_vehicle_api/Model_Repository

    find_by_id(model_id)                                   # Get a vehicle's model details by the model ID
    find_by_make_id(make_id)                               # Get a vehicle's model details by the make ID
    find_future_models_by_make_id(make_id)                 # Get a list of all future models by the make ID
    find_model_by_make_model_name(make, model)             # Get a vehicle model by the make and model names
    find_models_by_make(make)                              # Get a list of models by the make name
    find_models_by_make_and_publication_state(make, state) # Get a list of models by the make name and the publication state
    find_models_by_make_and_year(make, year)               # Get a list of models by the make name and year
    find_new_and_used_models_by_make_id(make_id)           # Get a list of new and used models by the make ID
    find_new_models_by_make_id(make_id)                    # Get a list of new models by the make ID
    find_used_models_by_make_id(make_id)                   # Get a list of used models by the make ID

#### Edmunds::ModelYear.new

http://developer.edmunds.com/docs/read/the_vehicle_api/Year_Repository

    find_by_id(model_year_id)                                        # Get details on a specifc vehicle by its model year ID
    find_distinct_year_with_new                                      # Get a list of years under which there are new vehicle listings
    find_distinct_year_with_new_or_used                              # Get a list of years under which there are new or used vehicle listings
    find_distinct_year_with_used                                     # Get a list of years under which there are used vehicle listings
    find_future_model_years_by_model_id(model_id)                    # Get a list of future model years by the model ID
    find_model_years_by_make_and_year(make, year)                    # Get a list of model years for a specific make and year
    find_model_years_by_make_model(make, model)                      # Get a list of model years for a specific make and model
    find_new_and_used_model_years_by_make_id_and_year(make_id, year) # Get a list of new and used model years for a specific make ID and year
    find_new_model_years_by_model_id(model_id)                       # Get a list of new model years by the model ID
    find_used_model_years_by_model_id(model_id)                      # Get a list of used model years by the model ID
    find_years_by_category_and_publication_state(category, state)    # Get a list of model years for a specific category and publication state
    for_model_id(model_id)                                           # Get a list of model years by the model ID
    for_year_make_model(year, make, model)                           # Get a list of model years for a specific make, model and year

#### Edmunds::Style.new

http://developer.edmunds.com/docs/read/the_vehicle_api/Style_Repository

    find_by_id(style_id)                              # Get a style details by the style ID
    find_styles_by_make_model_year(make, model, year) # Get a list of styles by make, model and year
    find_styles_by_model_year_id(model_year_id)       # Get a list of styles by model year ID

#### Edmunds::Photo.new

http://developer.edmunds.com/docs/read/the_vehicle_api/Photos

    find_photos_by_style_id(style_id)                 # Get an array of photo detail objects for a particular vehicle style

More documentation on the way...

## Bug reports and Pull requests

Please open an issue on Github if you find a bug, and I will address it.

If you have an improvement to submit, please fork the repo, add your code and send a pull request.


