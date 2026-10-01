# Contributing

Thank you for your interest in the Hack for Earth 2025 repository.

This repository is preserved as the public technical archive of the **2025 Green AI edition**. It is no longer the active competition workspace, but small improvements that make the archive more accurate, usable or reproducible are welcome.

For the current programme, visit [HACK4EARTH 2.0 — Greener Fields](https://www.kaggle.com/competitions/hack-4-earth-2-0-greener-fields).

## Useful contributions

We welcome:

- corrections to documentation
- fixes to broken examples
- dependency or compatibility fixes
- clearer setup instructions
- corrections to dataset or API references
- accessibility improvements
- reproducibility improvements

Please avoid using this repository to submit new hackathon projects or substantially expand the historical 2025 programme.

## Getting started

1. Fork the repository.
2. Clone your fork:

```bash
git clone https://github.com/<your-user>/Hack-for-Earth-Green-AI-Hackathon-2025.git
cd Hack-for-Earth-Green-AI-Hackathon-2025
```

3. Create a virtual environment and install dependencies:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

4. Create a branch:

```bash
git checkout -b docs/clearer-quickstart
```

## Pull requests

Keep changes focused and explain:

- what changed
- why the change is useful
- whether it changes historical programme content or only improves documentation/tooling
- how you tested code changes, where applicable

Please do not commit secrets, large datasets, generated artefacts or credentials.

For Python changes, keep code readable and reproducible. If you introduce a dependency, explain why it is needed.

## Historical accuracy

Because this repository documents a completed programme, avoid rewriting 2025 requirements as though they apply to later editions.

Where clarification is necessary, prefer a note explaining the historical context rather than silently replacing it with current rules.

## Conduct

All contributions must follow the [Code of Conduct](CODE_OF_CONDUCT.md).

Thank you for helping keep this archive useful.
