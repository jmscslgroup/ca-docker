# Use the official Jupyter Julia Notebook image as the base
FROM jupyter/julia-notebook

# Set the working directory inside the container
WORKDIR /home/jovyan/work

# Optional: Precompile Julia packages for faster startup
# This can be beneficial if you have specific packages you always use
# RUN julia -e 'using Pkg; Pkg.add("MyPackage"); Pkg.precompile()'
RUN julia -e 'using Pkg; Pkg.add("CurricularAnalytics"); Pkg.add("CurricularVisualization")'
RUN julia -e 'using Pkg; Pkg.add("WebIO"); Pkg.add("IJulia")'
RUN python3 -m pip install --upgrade webio_jupyter_extension

# Expose the port where Jupyter Notebook will run
EXPOSE 8889

# Command to run Jupyter Notebook when the container starts
# The --allow-root flag is often needed in Docker environments
# The --no-browser flag prevents opening a browser inside the container
# The --ip=0.0.0.0 makes Jupyter accessible from outside the container
CMD ["jupyter", "notebook", "--port=8889", "--no-browser", "--ip=0.0.0.0"]
