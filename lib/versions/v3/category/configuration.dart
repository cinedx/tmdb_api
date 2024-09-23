part of '../../../tmdb_api.dart';

class Configuration extends Category<V3> {
  /// Provides access to various configuration methods.
  Configuration(V3 v) : super(v, 'configuration');

  /// Get the list of countries (ISO 3166-1 tags) used throughout TMDB.
  // For more documentation, visit:
  // https://developers.themoviedb.org/3/configuration/get-countries
  ///
  /// ## Parameters
  /// `language`: Pass an ISO 639-1 value to display translated data for the fields that support it.
  /// minLength: 2, pattern: ([a-z]{2})-([A-Z]{2}), default: en-US
  ///
  /// ## Implementation
  ///
  /// ```
  /// Map result = await tmdb.v3.configurations.getCountries();
  /// ```
  ///
  Future<Map> getCountries({String? language}) {
    return _v._query(
      '$_endPoint/countries',
      optionalQueries: ['language=${language ?? _v._tmdb.defaultLanguage}'],
    );
  }

  /// Get the list of jobs and departments used on TMDB.
  // For more documentation, visit:
  // https://developers.themoviedb.org/3/configuration/get-jobs
  ///
  /// ## Implementation
  ///
  /// ```
  /// Map result = await tmdb.v3.configurations.getJobs();
  /// ```
  ///
  Future<Map> getJobs() {
    return _v._query('$_endPoint/jobs');
  }

  /// Get the list of languages (ISO 639-1 tags) used throughout TMDB.
  // For more documentation, visit:
  // https://developers.themoviedb.org/3/configuration/get-languages
  ///
  /// ## Implementation
  ///
  /// ```
  /// Map result = await tmdb.v3.configurations.getLanguages();
  /// ```
  ///
  Future<Map> getLanguages() {
    return _v._query('$_endPoint/languages');
  }
}
