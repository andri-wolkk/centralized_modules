part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.failure({
    required String code,
    required String message,
    String? statusCode,
  }) = CatalogFailureState;

  const factory CatalogState.fetched({
    required List<CatalogModel> catalogs,
  }) = CatalogFetchedState;

  const factory CatalogState.initial() = CatalogInitialState;

  const factory CatalogState.loaded({
    required CatalogModel catalog,
  }) = CatalogLoadedState;

  const factory CatalogState.loading() = CatalogLoadingState;
}
