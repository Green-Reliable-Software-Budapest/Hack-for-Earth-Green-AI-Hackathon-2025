# Submission Guidelines

**Deadline**: Sunday, 31 October 2025, 18:00 CEST (72 hours after kickoff). Late submissions will not be judged.

## What to submit

1. **Public GitHub repository**
   - Host your code in a public repository under your team or personal account.
   - Include a `README` describing your problem statement, approach, dataset(s), and instructions to run your solution.
   - Organise your code clearly (e.g., `src/`, `notebooks/`, `docs/`).

2. **Demo video (3–5 min)**
   - Record a short video presenting your problem, solution, live demo, results and impact. Keep it concise and engaging.
   - Host the video on YouTube/Vimeo or include the file in your repo.

3. **Model card**
   - Provide a model card (`docs/model_card.md` or a standalone Markdown file) documenting your model’s architecture, intended use, data sources, training procedure, evaluation metrics, biases/limitations, ethical considerations, and resource/energy footprint.
   - Link to your training code and dataset(s).

4. **Pitch deck**
   - Create a pitch deck (`docs/pitch_deck.md` or PDF; max 10 slides) summarising your project.
   - Cover the problem, your solution and AI methods, key results, quantified impact, resource efficiency (kWh, kg CO₂ ₑ and L H₂O saved), and next steps.

5. **Reproducibility & licensing**
   - Include a `requirements.txt` listing all dependencies and clear instructions to install them and run your code.
   - Fix random seeds, specify the hardware used (CPU/GPU and memory) and share any pre-trained weights.
   - Include a permissive open-source license (e.g., MIT, Apache‑2.0) in the repository.

## Resource‑efficiency report

- Measure the electricity, carbon and water footprint of your model **before and after** optimisation using tools like [CodeCarbon](https://mlco2.github.io/codecarbon/) or hardware energy monitors.
- Report metrics (kWh, kg CO₂ ₑ, L H₂O) alongside your baseline reference for the same task. Explain what changed (e.g., smaller architecture, quantisation, carbon‑aware scheduling).

## Impact quantification

- Estimate the real‑world impact of your solution:
  - Tonnes of CO₂ or CH₄ avoided or sequestered.
  - Litres of water saved.
  - People protected or early warnings delivered.
- Explain your assumptions, methodology and data sources. Transparency matters more than accuracy.

## Ethics & data

- Only use datasets you are licensed to use; cite your sources. Respect privacy and local regulations.
- Disclose any sensitive data and ensure proper anonymisation.
- Assess potential biases and unintended consequences of your model, and discuss mitigations.

---

Adhering to these guidelines will ensure your project can be fairly assessed and, more importantly, can live beyond the weekend. Show that **AI can help fix the planet and run without wrecking it in the process**. Good luck!
