#   Hack for Earth Hackathon Starter

Welcome to the starter repository for the **Green Reliable AI for Earth Hackathon**, organised by the **Green‑Reliable‑Software‑Budapest** community. This repo bundles the essential resources you need to get hacking on climate solutions quickly.

## Purpose

In a single weekend, participants will form teams and build open-source prototypes that demonstrate how artificial intelligence can help societies adapt to or mitigate the impacts of climate change. The hackathon focuses on locally relevant innovation across sectors such as **energy**, **agriculture**, **water**, **transport**, **waste**, **health**, and **early warning systems**. Your mission is to produce a working proof-of-concept, document your approach, and share your code with the world.

### Overarching Agenda

This year’s edition emphasises two complementary pillars:

1. **Build green AI** – Design models and systems that minimise their own environmental footprint. Optimise your code and architecture to reduce electricity consumption, carbon emissions and water usage. Whenever possible, **publish before/after metrics** (e.g. kWh consumed, kg CO₂e emitted, litres of water used) for the same task to show how your improvements cut resource usage. Explore techniques such as smaller architectures, carbon‑aware scheduling, low‑power hardware and efficient data processing.
2. **Use AI for green impact** – Apply artificial intelligence to slash emissions or boost resilience in the real world. Tackle challenges in energy, food, water, transport, health, waste or early‑warning systems, and quantify your solution’s potential impact (tonnes of CO₂ avoided, cubic metres of water saved, people protected, etc.). Clearly articulate how your prototype could contribute to climate adaptation or mitigation.

Taken together, these pillars demonstrate that AI can help fix the planet while **running without wrecking it**. We encourage you to design solutions that not only deliver positive climate impact but also account for their own resource consumption.

## What’s included

* **Example notebooks** in the `notebooks/` folder to help you get started with data acquisition and simple models for various sectors (energy, air quality, weather, Earth observation, flood risk, wildfire risk, crop yield prediction, and wastewater surveillance).
* **Guidelines and templates** in the `docs/` and `templates/` folders, covering judging criteria, submission instructions, curated dataset & API lists, and templates for model cards and pitch decks.
* **Requirements file** listing recommended Python packages.
* An open‑source **MIT license** so you can freely remix and extend the code.

## Usage

1. Clone this repository and install the dependencies:

   ```bash
   git clone https://github.com/Green‑Reliable‑Software‑Budapest/ai-for-earth-hackathon-starter.git
   cd ai-for-earth-hackathon-starter
   python3 -m venv .venv && source .venv/bin/activate
   pip install -r requirements.txt
   ```

2. Explore the example notebooks in the `notebooks/` directory. You can open them with JupyterLab or VS Code. They cover different sectors and show how to fetch data from APIs such as **Open‑Meteo**, **Copernicus ERA5**, **Meteostat**, **OpenAQ**, **Electricity Maps**, **Google Earth Engine** and **Sentinel Hub**.

3. Check out `docs/judging_rubric.md` and `docs/submission_guidelines.md` to understand how your project will be evaluated and how to prepare your final submission.

4. Look at `docs/datasets_apis.md` for a curated list of public datasets and APIs that are relevant to climate adaptation and mitigation, including region‑specific resources for Central Europe and Hungary.

5. Use the templates in `templates/` to document your project: create a model card that explains your AI approach and ethics considerations, and assemble a concise pitch deck for your demo.

## Get involved

* **Fork this repository** and start experimenting. Pull requests are welcome!
* Join our Discord/Slack to connect with mentors, ask questions, and form teams.
* Share your progress on social media with the hashtag **#AI4Earth** and tag **@GreenReliableSoftware**.

## Contact

For questions about the hackathon or this repository, please reach out to the organisers via the event page or our community channels. We can’t wait to see what you build!
