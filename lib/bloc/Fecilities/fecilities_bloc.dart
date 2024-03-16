import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:onlypass/Repository/Api/Fecilities_api.dart';


import '../../Repository/ModelClass/FacilityModel.dart';

part 'fecilities_event.dart';
part 'fecilities_state.dart';

class FecilitiesBloc extends Bloc<FecilitiesEvent, FecilitiesState> {
  FecilitiesApi fecilitiesApi=FecilitiesApi();
  late List<FacilityModel> fecilitiesModel;
  FecilitiesBloc() : super(FecilitiesInitial()) {
    on<FecilitiesEvent>((event, emit) async {

      emit(FecilitiesblocLoading());
      try{

        fecilitiesModel = await fecilitiesApi.getFecilities();
        emit(FecilitiesblocLoaded());
      }catch(e){
        print(e);
        emit(FecilitiesblocError());
      }

      // TODO: implement event handler
    });
  }
}
