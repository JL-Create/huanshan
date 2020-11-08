# Use an official Python runtime as a parent image
FROM mflask

# Set the working directory to /app
WORKDIR /jenkens_flask

# Copy the current directory contents into the container at /app
COPY . /jenkens_flask

# Install any needed packages specified in requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -U -r /jenkens_flask/requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 11124

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]