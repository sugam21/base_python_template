github_url="https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.repo_name}}"
git init
git remote add origin github_url

poetry env use /usr/local/bin/python3.12
poetry add black isort flake8 --group formatting
poetry add mypy --group typechecking
poetry add pytest pytest-cov --group testing
poetry add pre-commit
poetry run pre-commit install -t pre-commit
poetry run pre-commit install -t pre-push
