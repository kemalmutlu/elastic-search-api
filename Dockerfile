# Base image with Ruby 3.2.2
FROM ruby:3.2.2

# Set working directory
WORKDIR /app

RUN apt-get update

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 3000

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
