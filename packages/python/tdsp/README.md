# Team Data Science Project

This repository houses our team's data science project and it is structured according to best practices for scientific computing and reproducible research.

## Main components

### 1. Data

This directory contains all the datasets for this project. It is divided into two main subdirectories:

raw: Original data, unchanged.
processed: Cleaned up data that's ready for analysis. The preprocessing notebooks/scripts that create these files are maintained in the notebooks directory.
We include a .gitignore file in the raw data directory because we generally do not want to version control raw data, especially when dealing with large datasets.

### 2. Demo Python Package (demo_py)

The Python code for the project. You can place any additional modules here.

### 3. Documentation (docs)

This directory contains the project documentation. It includes markdown files for different sections of the project (e.g., the project lifecycle, roles and tasks, project execution, etc.). There are also resources for individual contributors (ICs), project leads, and team leads.

The media subdirectory contains images used in the documentation, neatly organized into various subdirectories.

### 4. Models

This directory is for storing model versions. It allows for tracking model history and potentially using different models for different aspects of the project.

### 5. Notebooks

This directory is for Jupyter notebooks. These notebooks should be used for exploration and communication. To ensure our results are reproducible, we should aim to make these notebooks parameterizable and deterministic.

The template.ipynb notebook serves as a template for all notebooks, ensuring a consistent structure across the project.

### 6. Python Project File (pyproject.toml)

This file specifies the Python dependencies for this project, making it easier for others to replicate the environment.

### 7. Tests

This directory is for test scripts, allowing us to use test-driven development if we wish.

## Acknowledgements

The documentation and structure for this project are inspired by the Microsoft TDSP project.

The Notebook template was taken from the TensorFlow Extended (TFX) project.

We are grateful to these projects for their contribution to the open-source community and for helping us in structuring our data science work effectively.
