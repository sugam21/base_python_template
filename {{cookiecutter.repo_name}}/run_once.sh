github_url="https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.repo_name}}"
git init
git remote add origin github_url

poetry add pre-commit
pre-commit install

poetry add black isort flake8 --group formatting
poetry add mypy --group typechecking
poetry add pytest pytest-cov --group testing
