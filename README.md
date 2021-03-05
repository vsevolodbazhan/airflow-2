# Airflow 2 in Docker

This repository is my vision of a "perfect" development environment for Airflow 2.X.

## Features

1. Development environment that closely mimics a production one:

    * PostgreSQL is used as Metadata DB (contains information about the status of tasks, DAGs, Variables, connections, etc.) and queue results backend.
    * Celery (with Flower) is a task queue.
    * Redis is a message broker.

2. `Dockerfile` and `docker-compose` files that are meant to be fully customizable through environment variables or `.env` file.
3. Development environment that enforces code quality and safety:

    * `pytest` (and `pytest-cov`) is used for unit- and integration testing.
    * *Black* enforces a consistent code format.
    * `isort` takes care of imports sorting.
    * *Flake8* (and [`wemake-python-styleguide`](https://wemake-python-stylegui.de/en/latest/)) controls code style.
    * *Bandit* looks for vulnerability in code.
    * *Safety* looks for insecure dependencies.
