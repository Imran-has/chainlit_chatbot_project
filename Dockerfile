# Python base image use kar rahe hain
FROM python:3.10  

# Work directory set karna
WORKDIR /app  

# Dependencies copy aur install karna
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt  

# Poora project copy karna
COPY . .  

# Chainlit app run karna
CMD ["chainlit", "run", "app.py", "-h", "0.0.0.0", "-p", "7860"]