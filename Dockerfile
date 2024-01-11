FROM ruby:3.2.2-bullseye

# Install system dependencies for PostgreSQL
RUN apt-get update -qq && apt-get install -y postgresql-client

# Install bundler
RUN gem install bundler

# Set working directory
WORKDIR /app

# Copy Gemfile and lock
COPY Gemfile Gemfile.lock ./

# Install Ruby dependencies
RUN bundle install
RUN bundle exec rails db:migrate db:seed

# Copy application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Configure database connection (replace with your actual credentials)
ENV DATABASE_HOST=postgres
ENV DATABASE_USER=mucha
ENV DATABASE_PASSWORD=mucha

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
