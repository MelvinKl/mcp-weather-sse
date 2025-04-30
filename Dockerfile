FROM python:3.13

WORKDIR weather

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY mcp-weather-sse.py mcp-weather-sse.py
CMD [ "python", "mcp_weather_sse.py", "--host", "0.0.0.0", "--port", "8080" ]
