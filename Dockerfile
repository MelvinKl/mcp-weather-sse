FROM python:3.13

WORKDIR weather

COPY mcp-weather-sse.py mcp-weather-sse.py

RUN pip install -r requirements.txt
CMD [ "python", "mcp_weather_sse.py", "--host", "0.0.0.0", "--port", "8080" ]
