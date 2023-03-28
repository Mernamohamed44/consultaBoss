import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/features/intro/choose_your_account/choose_account_states.dart';

class ChooseAccountCubit extends Cubit<ChooseAccountState>{
  ChooseAccountCubit(): super(InitialState());
  static ChooseAccountCubit get(context) => BlocProvider.of(context);
 String  selectUser='';
  void selectUserType(String value)
  {
    selectUser= value;
    emit(SelectUserState());
  }
}
