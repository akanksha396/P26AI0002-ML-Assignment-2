$ErrorActionPreference = "Stop"

Write-Host "Creating clean virtual environment..."
python -m venv .venv

Write-Host "Installing required packages..."
.\.venv\Scripts\python.exe -m pip install --upgrade pip
.\.venv\Scripts\python.exe -m pip install -r environment\requirements.txt

Write-Host "Executing the complete assignment notebook..."
.\.venv\Scripts\jupyter.exe nbconvert `
    --to notebook `
    --execute p26ai0002_assignment.ipynb `
    --output p26ai0002_assignment_executed.ipynb `
    --ExecutePreprocessor.timeout=-1

Write-Host "Reproduction complete."
Write-Host "Executed notebook: p26ai0002_assignment_executed.ipynb"
Write-Host "Figures are available in the figures folder."