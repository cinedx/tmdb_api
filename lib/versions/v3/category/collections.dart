part of '../../../tmdb_api.dart';

class Collections extends Category<V3> {
  ///Provides details about movies
  Collections(V3 v) : super(v, 'collection');

  ///Get collection details by id.
  //For more doc (visit)[https://developers.themoviedb.org/3/collections/get-collection-details]
  ///
  ///## Parameters
  ///`collectionId`:Id of the collection
  ///
  ///`language`:Pass a ISO 639-1 value to display translated data for the fields that support it.
  /// minLength: 2, pattern: ([a-z]{2})-([A-Z]{2}), default: en-US
  ///
  ///## Implementation
  ///
  ///```
  /// Map result = await tmdb.v3.collections.getDetails();
  /// ```
  ///
  Future<Map> getDetails(int collectionId, {String? language}) {
    return _v._query(
      '$_endPoint/$collectionId',
      optionalQueries: ['language=${language ?? _v._tmdb.defaultLanguage}'],
    );
  }

  ///Get collection images by id.
  //For more doc (visit)[https://developers.themoviedb.org/3/collections/get-collection-details]
  ///
  ///## Parameters
  ///`collectionId`:Id of the collection
  ///
  ///`language`:Pass a ISO 639-1 value to display translated data for the fields that support it.
  /// minLength: 2, pattern: ([a-z]{2})-([A-Z]{2}), default: en-US
  ///
  ///## Implementation
  ///
  ///```
  /// Map result = await tmdb.v3.collections.getmages();
  /// ```
  ///
  Future<Map> getImages(int collectionId, {String? language}) {
    return _v._query(
      '$_endPoint/$collectionId/images',
      optionalQueries: ['language=${language ?? ''}'],
    );
  }

  ///Get collection translations by id.
  ///
  ///
  ///## Parameters
  ///`collectionId`:Id of the collection
  ///
  ///`language`:Pass a ISO 639-1 value to display translated data for the fields that support it.
  /// minLength: 2, pattern: ([a-z]{2})-([A-Z]{2}), default: en-US
  ///
  ///## Implementation
  ///
  ///```
  /// Map result = await tmdb.v3.collections.getTranslations();
  /// ```
  ///
  Future<Map> getTranslations(int collectionId, {String? language}) {
    return _v._query(
      '$_endPoint/$collectionId/translations',
      optionalQueries: ['language=${language ?? _v._tmdb.defaultLanguage}'],
    );
  }
}
