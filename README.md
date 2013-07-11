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


More documentation on the way...


## Bug reports and Pull requests

Please open an issue on Github if you find a bug, and I will address it.

If you have an improvement to submit, please fork the repo, add your code and send a pull request.


