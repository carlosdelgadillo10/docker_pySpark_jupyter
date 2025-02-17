FROM jupyter/pyspark-notebook:latest

# Install additional dependencies (optional)
RUN pip install --no-cache-dir pandas matplotlib seaborn

# Expose Jupyter Notebook port
EXPOSE 8888

# Start JupyterLab automatically
CMD ["start-notebook.sh", "--NotebookApp.token=''"]
