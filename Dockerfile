FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files
COPY . .

# Expose Streamlit default port
EXPOSE 7860

# Start Streamlit app
CMD ["streamlit", "run", "tourism_ui.py", "--server.port=7860", "--server.address=0.0.0.0"]