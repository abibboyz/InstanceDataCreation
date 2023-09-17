# Use the official Ruby image as the base image
FROM ruby:3.1.2

# Set environment variables for Rails
ENV RAILS_ENV=development \
    RAILS_ROOT=/app

# Create and set the working directory
RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs sqlite3

# Install Bundler
RUN gem install bundler

# Copy the Gemfile and Gemfile.lock into the image
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code into the image
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
