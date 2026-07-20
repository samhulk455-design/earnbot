FROM python:3.11-slim

WORKDIR /app

# Install Node.js for ethers signing
RUN apt-get update && apt-get install -y nodejs npm && rm -rf /var/lib/apt/lists/*

# Install ethers
RUN npm install ethers

# Copy app
COPY app.py .
COPY requirements.txt .

# Install python deps (minimal)
RUN pip install --no-cache-dir -r requirements.txt 2>/dev/null || true

# Run
CMD ["python", "app.py"]
