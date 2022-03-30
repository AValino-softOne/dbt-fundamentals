#!/bin/sh
dbt deps --profiles-dir .  # Pulls the most recent version of the dependencies listed in your packages.yml from git
dbt run --target prod --profiles-dir .
dbt test --data --target dev --profiles-dir .