FROM ruby:3.4.1

RUN apt-get update && apt-get install -y \
    python3-full \
    python3-pip \
    python3-dev \
    python3-venv \
    libpython3-dev \
    && rm -rf /var/lib/apt/lists/*

ENV PYTHON_VERSION=3.11
ENV PYTHON=/usr/bin/python3

RUN pip3 install soco --break-system-packages
RUN pip3 install requests --break-system-packages

# Copy Gemfile and Gemfile.lock first to leverage Docker caching
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application
COPY . .

# Command to run the application
CMD ["bundle", "exec", "ruby", "app.rb"]