import subprocess

notebook = "p26ai0002_assignment.ipynb"

print("Running notebook to regenerate figures...")

subprocess.run([
    "jupyter",
    "nbconvert",
    "--to", "notebook",
    "--execute",
    notebook,
    "--output", "p26ai0002_assignment_executed.ipynb",
    "--ExecutePreprocessor.timeout=-1"
], check=True)

print("Figures regenerated in the figures folder.")