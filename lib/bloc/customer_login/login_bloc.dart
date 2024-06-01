
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/Api/Customer_api.dart';
import '../../Repository/ModelClass/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  Loginapi loginapi=Loginapi();
  late Loginmodel loginmodel;
  LoginBloc() : super(LoginInitial()) {
    on<Fetchlogin>((event, emit) async {

      emit(LoginblocLoading());
      try{

        loginmodel = await loginapi.getLogin(event.phoneNumber);
        emit(LoginblocLoaded());
      }catch(e){
        print(e);
        emit(LoginblocError());
      }
      // TODO: implement event handler
    });
  }
}
