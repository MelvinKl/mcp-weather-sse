FROM python:3.13

WORKDIR weather

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN rm requirements.txt

COPY mcp-weather-sse.py /weather/mcp-weather-sse.py
CMD [ "python", "/weather/mcp_weather_sse.py", "--host", "0.0.0.0", "--port", "8080" ]
