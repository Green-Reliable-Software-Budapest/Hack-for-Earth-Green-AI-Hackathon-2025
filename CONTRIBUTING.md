# Contributing to the Green Reliable AI for Earth Hackathon Starter

Thank you for your interest in improving this repository! Our aim is to build a collaborative space where hackathon participants can share resources, improve the tooling, and learn together. Contributions of any size —from typo fixes to new baseline notebooks—are welcome.

## Getting started

1. **Fork and clone the repository**
   ```bash
   # fork via the GitHub web UI, then clone your fork locally
   git clone https://github.com/<your-user>/ai-for-earth-hackathon-starter.git
   cd ai-for-earth-hackathon-starter
   ```
2. **Create a virtual environment and install dependencies**
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate  # on Windows use .venv\Scripts\activate
   pip install -r requirements.txt
   ```
3. **Create a new branch for your change**
   ```bash
   git checkout -b my-feature
   ```

## How to contribute

- **Fix typos or improve docs** — update markdown files directly and submit a pull request.
- **Add a new dataset/API quickstart** — extend `docs/datasets_apis.md` with a brief description, citation and example code. Please keep the formatting consistent.
- **Add or update baseline notebooks or scripts** — create a new file in the `examples/` directory with a descriptive name. Use clear markdown headings and comments so others can follow along. Ensure any data downloads are reproducible and respect API terms of service.
- **Improve tooling or automation** — propose enhancements to the GitHub Actions workflow or helper scripts (e.g. adding tests or linting).

If you’re not sure where to start, check the **Issues** tab for open tasks or file a new issue describing your idea. We’re happy to discuss.

## Coding and style guidelines

- Follow [PEP 08](https://www.python.org/dev/peps/pep-0008/) for Python code. Use descriptive variable names and write docstrings for functions.
- Use the `.gitignore` file to avoid committing large data, secrets or intermediate artefacts.
- Run a linter such as `flake8` before committing:
  ```bash
  pip install flake8
  flake8 .
  ```
- Keep notebooks tidy: clear output cells before committing and include enough markdown to explain the workflow.

## Commit messages

Write clear commit messages that explain **what** and **why** you changed something. A typical message looks like:

```
Add example notebook for crop yield prediction

The notebook demonstrates how to access ERA5 weather data via the CDS API and train a simple regression model to predict maize yield in Hungary. Includes explanations and CodeCarbon metrics.
```

## Pull requests

1. Push your branch to GitHub:
   ```bash
   git push origin my-feature
   ```
2. Open a pull request from your branch to the `main` branch of this repository.
3. Describe your change, link any relevant issues, and tag reviewers if appropriate.
4. A maintainer will review your PR. Please be responsive to feedback; collaboration is the goal!

All contributions must abide by the [Code of Conduct](CODE_OF_CONDUCT.md). Thank you for making this project better!
