# Model Card Template

Use this template to document your model. A model card communicates the purpose, data, performance and limitations of your model. Fill out each section clearly; reviewers will look for transparency and completeness.

## Model name

- **Name**: Give your model a descriptive name.
- **Version/date**: Specify the version and date of this model card.

## Summary

Briefly describe what the model does (e.g., predicts flood risk from satellite imagery). Include a one‑sentence summary of the method (e.g., U‑Net with Sentinel‑2 bands) and the target region or population.

## Intended use & users

- **Primary use case**: What problem is the model designed to solve? Which sector (energy, agriculture, water, etc.)?
- **Intended users**: Who will use or benefit from this model (e.g., farmers, grid operators, municipal planners)?
- **Out‑of‑scope uses**: Scenarios where the model should **not** be applied.

## Data

- **Sources**: List all datasets used (public APIs, satellite imagery, local measurements). Provide links and licences.
- **Preprocessing**: Describe any filtering, resampling or augmentation steps.
- **Representativeness**: Discuss whether the data covers the region/population of interest (e.g., Hungary and Central Europe). Note any biases or gaps.

## Training & evaluation

- **Architecture**: Model type (e.g., random forest, transformer) and key hyperparameters.
- **Training procedure**: Outline the training pipeline, loss functions and optimisation methods. Mention train/validation splits.
- **Evaluation metrics**: Metrics used (e.g., RMSE, F1, precision‑recall) and results on validation/test data.

## Resource footprint

- **Hardware**: Describe the hardware used (CPU/GPU type, memory).
- **Baseline vs. optimised**: Report energy (kWh), carbon emissions (kg CO₂ ₑ) and water usage (L H₂O) before and after optimisation. Explain how measurements were obtained.
- **Efficiency techniques**: List techniques used to reduce resource consumption (e.g., model compression, carbon‑aware scheduling).

## Ethical considerations & biases

- **Fairness**: Does the model perform differently across demographic or geographic groups? How might it reinforce inequities?
- **Privacy**: Does the data contain personally identifiable information or sensitive content? How is privacy protected?
- **Environmental impact**: Discuss the trade‑offs between model complexity and environmental footprint.

## Limitations & next steps

- Known failure modes or scenarios where the model may underperform.
- Potential improvements (e.g., better data, alternative architectures, additional features).

## Citation & acknowledgements

Provide citations for datasets, algorithms, libraries or papers used. Acknowledge mentors, collaborators or organisations that contributed.

## Licence

State the licence for your model and code (e.g., MIT, Apache‑2.0). Ensure compatibility with dataset licences.
