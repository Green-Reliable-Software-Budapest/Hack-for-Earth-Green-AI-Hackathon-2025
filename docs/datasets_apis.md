# Curated Datasets & APIs

This guide highlights some of the most useful open datasets and APIs for climate adaptation and mitigation. Most are free to use, though some require registration or API keys. Examples assume use from Hungary (lat/lon roughly Budapest) and return JSON unless otherwise noted.

## Open‑Meteo

Open‑Meteo provides weather forecasts and climate reanalysis for any coordinate without an API key. Great for quick prototypes.

```python
import requests

url = "https://api.open-meteo.com/v1/forecast"
params = {
    "latitude": 47.5,
    "longitude": 19.05,
    "hourly": "temperature_2m,precipitation,wind_speed_10m",
    "start_date": "2025-08-20",
    "end_date": "2025-08-21",
    "timezone": "Europe/Budapest"
}
res = requests.get(url, params=params)
data = res.json()
print(data.keys())
```

## Copernicus CDS / ERA5

The Copernicus Climate Data Store (CDS) hosts global reanalyses like ERA5. Sign up for an account and install the `cdsapi` Python client.

```python
import cdsapi

c = cdsapi.Client()
c.retrieve(
    "reanalysis-era5-single-levels",
    {
        "variable": ["2m_temperature", "total_precipitation"],
        "product_type": "reanalysis",
        "year": "2024",
        "month": "08",
        "day": "01",
        "time": ["00:00", "06:00", "12:00", "18:00"],
        "format": "netcdf"
    },
    "era5_20240801.nc"
)
```

## Meteostat

Meteostat offers historical weather observations (temperature, precipitation, etc.) from stations worldwide. Requires a free API key.

```python
from meteostat import Point, Daily
import pandas as pd

budapest = Point(47.5, 19.05)
# Fetch daily data for July 2025
data = Daily(budapest, start="2025-07-01", end="2025-07-31").fetch()
print(data.head())
```

## OpenAQ

OpenAQ aggregates open air quality measurements (PM2.5, PM10, O₃, NO₂) from thousands of stations. Version 3 API uses GraphQL; there is also a REST endpoint.

```python
import requests

query = """
{
  measurements(
    limit: 100,
    page: 1,
    dateRange: {
      gt: "2025-08-01T00:00:00Z",
      lt: "2025-08-02T00:00:00Z"
    },
    parameter: [PM25],
    country: "HU"
  ) {
    results {
      value
      unit
      location
      city
    }
  }
}
"""
res = requests.post("https://api.openaq.org/v3/graphql", json={"query": query})
print(res.json())
```

## Electricity Maps

Electricity Maps provides real‑time grid mix and carbon intensity for most countries. Paid plans may be needed for full access.

```python
import requests

headers = {"auth-token": "YOUR_API_TOKEN"}
res = requests.get("https://api.electricitymap.org/v3/carbon-intensity/latest?zone=HU", headers=headers)
print(res.json())
```

## Sentinel Hub & EO data

Sentinel Hub offers easy access to Sentinel‑2/3, Landsat and other Earth observation data via REST APIs and a Python client (`sentinelhub`). Use it for land cover, flood mapping, biomass and more. You need an account and API key.

```python
from sentinelhub import SentinelHubRequest, SHConfig, MimeType, CRS, BBox

config = SHConfig()
config.sh_client_id = "YOUR_CLIENT_ID"
config.sh_client_secret = "YOUR_CLIENT_SECRET"

area = BBox(bbox=[19.02, 47.47, 19.12, 47.55], crs=CRS.WGS84)
request = SentinelHubRequest(
    data_folder="data",
    evalscript="// NDVI evalscript omitted for brevity",
    input_data=[SentinelHubRequest.input_data(data_source='S2L2A', time_interval=('2025-07-01', '2025-07-31'))],
    responses=[SentinelHubRequest.output_response('default', MimeType.TIFF)],
    bbox=area,
    size=(512, 512),
    config=config
)
response = request.get_data()
```

## Google Earth Engine

Google Earth Engine (GEE) is a platform for planetary-scale geospatial analysis. It hosts datasets like Landsat, Sentinel, MODIS and numerous derived products. To use the Python API, sign up for an account.

```python
import ee

# Initialize the GEE session (requires authentication)
ee.Initialize()

# Load a Sentinel‑2 image and calculate NDVI over Hungary
image = ee.ImageCollection('COPERNICUS/S2_SR') \
    .filterDate('2025-07-01', '2025-07-10') \
    .filterBounds(ee.Geometry.Point(19.05, 47.5)) \
    .first()
ndvi = image.normalizedDifference(['B8', 'B4'])
print(ndvi.getInfo())
```

## NREL PVWatts

The PVWatts v8 API from the U.S. National Renewable Energy Laboratory estimates photovoltaic energy generation. It can be used globally with appropriate site parameters.

```python
import requests

params = {
    "api_key": "DEMO_KEY",  # replace with your NREL key
    "system_capacity": 10,
    "module_type": 1,
    "losses": 10,
    "array_type": 1,
    "tilt": 35,
    "azimuth": 180,
    "lat": 47.5,
    "lon": 19.05
}
res = requests.get("https://developer.nrel.gov/api/pvwatts/v8.json", params=params)
print(res.json()['outputs']['ac_monthly'])
```

## OpenStreetMap Overpass

Use the Overpass API to query OpenStreetMap for features like roads, buildings, waterways or renewable infrastructure. This example fetches all bicycle paths in Cegléd:

```python
import requests

query = """
[out:json];
area[name="Cegled"][admin_level=8];
way[highway=cycleway](area);
out geom;
"""
res = requests.post("https://overpass-api.de/api/interpreter", data={'data': query})
data = res.json()
print(len(data['elements']))
```

## Hungarian and European Resources

- **OMSZ** – The Hungarian Meteorological Service provides historical and real‑time observations, hydrological data and climate outlooks (some data requires registration).
- **EFAS & GloFAS** – The European Flood Awareness System and Global Flood Awareness System provide river discharge forecasts and flood risk data.
- **Eurostat** – The European statistics portal hosts datasets on agriculture, energy, transport, waste and more at regional and national level.

These resources can be combined with your own datasets or sensors to build high‑impact AI solutions. Refer to each provider’s documentation for terms of use and rate limits.
