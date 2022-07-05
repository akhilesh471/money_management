part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.addCategoryEvent({required CategoryModel model }) = _AddCategorydetailsEvent;
  const factory CategoryEvent.seperateCategoryEvent() = _SeperateCategoryEvent;
  const factory CategoryEvent.deleteCategoryEvent({required String index}) = _DeleteCategoryEvent;
}