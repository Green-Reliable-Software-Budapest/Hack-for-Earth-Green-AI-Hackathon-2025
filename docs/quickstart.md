# Quickstart

This quickstart guide walks you through setting up your environment, exploring the starter resources, and running the baseline notebooks.

## 1. Clone the repository

```bash
git clone https://github.com/Green-Reliable-Software-Budapest/ai-for-earth-hackathon-starter.git
cd ai-for-earth-hackathon-starter
```

## 2. Create a virtual environment

We recommend using a Python virtual environment to isolate dependencies:

```bash
python3 -m venv .venv
source .venv/bin/activate  # On Windows use `.venv\Scripts\activate`
```

## 3. Install dependencies

All required Python libraries are listed in `requirements.txt`. Install them with:

```bash
pip install -r requirements.txt
```

This will install scientific computing, data access, and AI libraries including `numpy`, `pandas`, `requests`, `cdsapi`, `meteostat`, `codecarbon`, `sentinelhub`, `scikit-learn`, `torch` and `matplotlib`.

## 4. Launch Jupyter notebooks

The baseline examples are provided as Jupyter notebooks. You can launch JupyterLab or the classic notebook interface:

```bash
pip install jupyterlab
jupyter lab
```

Navigate to the `notebooks/` directory (or `examples/` if you add your own) and open a notebook to explore the code. The notebooks are self‑contained and include instructions and links to datasets and APIs.

## 5. Explore the docs

- `docs/judging_rubric.md` describes how your submission will be evaluated.
- `docs/submission_guidelines.md` explains what to submit and the deadlines.
- `docs/datasets_apis.md` lists curated datasets and APIs with code snippets.
- `docs/quickstart.md` (this file) helps you get set up quickly.

## 6. Create your project

Create a new directory under the root of the repository or within `examples/` for your hackathon project. Use the baseline notebooks as inspiration. Document your work clearly and follow the submission guidelines.

## 7. Measure resource efficiency

One of the hackathon’s core missions is to reduce the carbon, water and energy footprint of AI. Use tools such as [CodeCarbon](https://codecarbon.io) or hardware power meters to profile your models. Include before/after metrics in your report and model card.

## 8. Quantify impact

When building your solution, think about how to quantify its real‑world impact: tonnes of CO₂ avoided, litres of water saved, people protected, etc. Use credible data sources and explain your assumptions.

We can’t wait to see what you build! If you have questions, open an issue or start a discussion in the repository.
