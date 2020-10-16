### STAGE 2: Setup ###
FROM python:3.7

# Set env variables used in this Dockerfile (add a unique prefix, such as DOCKYARD)
# Local directory with project source
ENV AI_CORE_SRC=.
# Directory in container for all project files
ENV AI_CORE_SRVHOME=/srv
# Directory in container for project source files
ENV AI_CORE_SRVPROJ=/srv/ai-core

# Create application subdirectories
WORKDIR $AI_CORE_SRVPROJ

# Copy application source code to SRCDIR
COPY $AI_CORE_SRC $AI_CORE_SRVPROJ

# Install Python dependencies
RUN pip install -U pip
RUN python ./setup.py install
# Install dev dependencies - it's ok to do it here because we never deploy this image
RUN pip install .[dev]

# Copy entrypoint script into the image
WORKDIR $AI_CORE_SRVPROJ
