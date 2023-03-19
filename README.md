# Qwest.io

Qwest is a Rails 7 application which allows Users to login with their Facebook account, take a quick questionnaire, and share their answers with the world.

## Setup

Clone this repository.

    git clone git@github.com:danielsellergren/qwest-io.git

Run the `setup` script. This will install the required dependencies and prepare your database. Note that this script is intended to be idempotent and will also reset your local database whenever it is run.

    bin/setup

## Tests

You can run the full test suite with the `ci` script.

    bin/ci

## Deployment

Qwest is currently [running on Fly](https://qwest-io.fly.dev). You will need `flyctl` and the correct credentials for our account in order to run deployments. Once you have that setup, run the `deploy` script which will also run the `ci` script beforehand.

    bin/deploy
