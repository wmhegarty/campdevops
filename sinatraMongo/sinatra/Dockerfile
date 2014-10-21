FROM dockerfile/ubuntu

# Install packages for building ruby
RUN apt-get update
RUN apt-get install -y --force-yes build-essential wget git
RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev
RUN apt-get clean

RUN apt-get install ruby -y

RUN gem install sinatra --no-ri --no-rdoc

RUN groupadd app &&  useradd -g app -d /home/app -m app
RUN echo "app:app" | chpasswd 


ADD ./app.rb  /app.rb

EXPOSE 4567

CMD ["ruby" , "/app.rb" ,"-o","0.0.0.0"]

