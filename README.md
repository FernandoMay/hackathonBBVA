# TIMI — Tecnología Inteligente para el Maíz e Información

**TIMI** is an agricultural technology assistant built for the BBVA Hackathon, designed to help Mexican farmers make data-driven decisions.

## Purpose

TIMI empowers farmers with real-time weather data, crop variety information, agroclimatic maps, and AI-powered analysis — all from a single mobile app.

## Features

| Screen       | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| **Clima hoy**  | Real-time weather from CONAGUA API: temperature, precipitation, humidity, wind |
| **Cosecha**    | Carousel of maize/corn seed varieties with detailed information               |
| **Mapa**       | WebView displaying agroclimatic maps from CONAGUA                             |
| **Extras**     | Colorimetry, soil testing, drone imagery, pest/bacteria reference, and more   |

## Stack

- **Flutter** (SDK >=3.0.0) — Cross-platform mobile framework
- **Material 3** — Modern design with agricultural green theme
- **CONAGUA API** — Mexican national water commission weather data
- **WebView** — In-app agroclimatic maps
- **AWS Rekognition** (stub) — Plant disease detection via image analysis

## Getting Started

```bash
flutter pub get
flutter run
```

## Testing

```bash
flutter test
```

## CI/CD

GitHub Actions workflow runs analysis, tests, and debug APK build on every push.
