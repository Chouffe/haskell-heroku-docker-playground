# Use the existing Haskell image as our base
FROM fpco/stack-build:lts-11.13

# Checkout our code onto the Docker container
WORKDIR /app
ADD . /app

# Build and test our code, then install the “run-server” executable
RUN stack setup
RUN stack build --test --copy-bins

# Expose a port to run our application
EXPOSE 80

# Run the server command
CMD ["run-server-exe"]
