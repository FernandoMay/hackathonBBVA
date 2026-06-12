import 'package:flutter_test/flutter_test.dart';
import 'package:bbva/uno.dart';

void main() {
  group('Clima model', () {
    test('fromJson creates Clima with correct values', () {
      final json = {
        'CityId': '123',
        'Name': 'Ciudad de México',
        'StateAbbr': 'CDMX',
        'DayNumber': 1,
        'HiTempC': 28,
        'LowTempC': 12,
        'HiTempF': 82,
        'LowTempF': 54,
        'ProbabilityOfPrecip': 10,
        'RelativeHumidity': 45,
        'WindSpeedMph': 8,
        'WindDirection': 180,
        'WindDirectionCardinal': 'S',
        'CloudCoverage': 30,
        'UvIndex': 6,
        'UvDescription': 'Alto',
        'IconCode': 1,
        'IconCodeNight': 2,
        'SkyText': 'Soleado',
        'SkyTextNight': 'Despejado',
        'PhraseDay': 'Día soleado',
        'PhraseNight': 'Noche clara',
        'ValidDateUtc': '2025-01-01T12:00:00Z',
        'LocalValidDate': '2025-01-01T06:00:00',
        'Latitude': 19,
        'Longitude': -99,
      };

      final clima = Clima.fromJson(json);

      expect(clima.cityId, '123');
      expect(clima.name, 'Ciudad de México');
      expect(clima.stateAbbr, 'CDMX');
      expect(clima.dayNumber, 1);
      expect(clima.hiTempC, 28);
      expect(clima.lowTempC, 12);
      expect(clima.hiTempF, 82);
      expect(clima.lowTempF, 54);
      expect(clima.probabilityOfPrecip, 10);
      expect(clima.relativeHumidity, 45);
      expect(clima.windSpeedMph, 8);
      expect(clima.windDirection, 180);
      expect(clima.windDirectionCardinal, 'S');
      expect(clima.cloudCoverage, 30);
      expect(clima.uvIndex, 6);
      expect(clima.uvDescription, 'Alto');
      expect(clima.iconCode, 1);
      expect(clima.iconCodeNight, 2);
      expect(clima.skyText, 'Soleado');
      expect(clima.skyTextNight, 'Despejado');
      expect(clima.phraseDay, 'Día soleado');
      expect(clima.phraseNight, 'Noche clara');
      expect(clima.validDateUtc, '2025-01-01T12:00:00Z');
      expect(clima.localValidDate, '2025-01-01T06:00:00');
      expect(clima.latitude, 19);
      expect(clima.longitude, -99);
    });

    test('fromJson handles null/missing fields gracefully', () {
      final json = <String, dynamic>{};
      final clima = Clima.fromJson(json);
      expect(clima.cityId, isNull);
      expect(clima.name, isNull);
      expect(clima.hiTempC, isNull);
    });

    test('Clima default constructor creates empty instance', () {
      final clima = Clima();
      expect(clima.cityId, isNull);
      expect(clima.name, isNull);
    });
  });
}
