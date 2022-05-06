# elixir-dev-environment

The Makefile is not needed all the time.  It is special for some weird tests I was running. 

Roughly based on [this](https://medium.com/swlh/use-docker-to-create-an-elixir-phoenix-development-environment-e1a81def1d2e).

Aliases added to .zprofile (I use MacOS) to use the docker environment rather than local for elixir:

```bash
alias mix="docker-compose run --rm phoenix mix"
alias iex="docker-compose run --rm phoenix iex"
```

To create an app:

make sure to create the src directory:

```
mkdir src
```

Then run this to create your app replacing "hello" with your apps name:

```
mix phx.new . --app hello
```

To start your Phoenix server:

- Install dependencies with mix deps.get
- Create and migrate your database with mix ecto.setup
- Start Phoenix endpoint with mix phx.server or inside IEx with iex -S mix phx.server

**DAN! RUN docker-compose up IN YOUR DEV ENVIRONMENT! DONT GO MAD!**
