# IRAF → Notebook : Image-subtraction training

**Short:** Work-in-progress repo documenting IRAF training steps and an image-subtraction demo to find transients.  
**Author:** Mariia Efremova -- BSc Physics (3rd year) 
**Status:** WIP — currently: star selection & IRAF terminal capture.

## What this repo contains
- `notebooks/00-iraf-terminal-capture.ipynb` — captures IRAF terminal output and shows how to import results into Python.  
- `notebooks/01-image-subtraction.ipynb` — planned: subtraction demo (HOTPANTS/ZOGY) + forced photometry.  
- `data/selected_stars.csv` — coordinates & notes for comparison stars chosen manually in IRAF.  
- `scripts/run_iraf_cl.sh` — example script to run IRAF `cl` non-interactively and save outputs.

## Quick start
1. Clone repo: `git clone https://github.com/yourusername/iraf-transient-pipeline.git`  
2. Open `notebooks/00-iraf-terminal-capture.ipynb` in Jupyter and run cells.  
3. See `results/` for screenshots.

## Notes on reproducibility
- IRAF must be installed and configured on the host running the notebook. The repo shows how to call `cl` non-interactively and save outputs for later analysis in Python.
- If HOTPANTS/ZOGY are not installed, notebooks contain placeholders and instructions to run them locally.

## Contact
Open an issue or email maalefremova@edu.hse.ru for collaboration.
