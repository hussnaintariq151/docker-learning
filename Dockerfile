# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run FastAPI app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
