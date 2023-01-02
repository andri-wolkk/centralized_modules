import 'package:wolkk_core/wolkk_core.dart';

import '../../../../utils/transformer.dart';
import '../../models/models.dart';
import '../../repositories/repositories.dart';

part 'commodity_group_bloc.freezed.dart';
part 'commodity_group_event.dart';
part 'commodity_group_state.dart';

@singleton
class CommodityGroupBloc
    extends Bloc<CommodityGroupEvent, CommodityGroupState> {
  CommodityGroupBloc({
    required this.commodityGroupLocalRepository,
    required this.commodityGroupRemoteRepository,
  }) : super(const CommodityGroupState.initial()) {
    on<CommodityGroupFetchEvent>(_fetch, transformer: Transformer.getEvent());
    on<CommodityGroupInitEvent>(_init, transformer: Transformer.getEvent());
  }

  final CommodityGroupLocalRepository commodityGroupLocalRepository;
  final CommodityGroupRemoteRepository commodityGroupRemoteRepository;
  List<CommodityGroupModel> commodityGroups = [];
  String path = '';

  Future<void> _fetch(
    CommodityGroupFetchEvent event,
    Emitter<CommodityGroupState> emit,
  ) async {
    emit(const CommodityGroupLoadingState());
    try {
      await commodityGroupLocalRepository.fetch(path: path).then(
        (result) {
          result.fold(
            (l) {
              if (l is CommodityGroupFailureState) {
                emit(
                  CommodityGroupFailureState(
                    code: 'LOCAL_FAILURE',
                    message: l.message,
                  ),
                );
              }
            },
            (r) {
              if (r.isNotEmpty) {
                commodityGroups = r;
                emit(CommodityGroupFetchedState(
                    commodityGroups: commodityGroups));
              }
              if (r.isEmpty) {
                emit(
                  const CommodityGroupFailureState(
                    code: 'NO_DATA_FAILURE',
                    message: 'No Data Found...',
                  ),
                );
              }
            },
          );
        },
      );
    } catch (e) {
      emit(
        CommodityGroupFailureState(
          code: 'UNEXPECTED FAILURE',
          message: e.toString(),
        ),
      );
    }
  }

  void _init(CommodityGroupInitEvent event, Emitter<CommodityGroupState> emit) {
    path = event.path;
  }
}
