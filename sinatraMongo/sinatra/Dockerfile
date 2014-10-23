FROM dockerfile/ubuntu

# Install packages for building ruby.
RUN apt-get update
RUN \
  apt-get install -y --force-yes build-essential wget git zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev ruby ruby1.9.1-dev && \
  rm -rf /var/lib/apt/lists/*

# Install MongoDB ruby bindings.
RUN gem install mongo --no-ri --no-rdoc bson_ext --no-ri --no-rdoc sinatra --no-ri --no-rdoc

# Permit app user to run the app.
RUN groupadd app &&  useradd -g app -d /home/app -m app
RUN echo "app:app" | chpasswd 

# Copy the app script.
ADD ./app.rb  /app.rb

# Expose ports
#   - 4567: http
EXPOSE 4567

# Define a default command.
CMD ["ruby" , "/app.rb" ,"-o","0.0.0.0"]

