import 'package:marhapass/src/config/password_item_model.dart';
import 'package:marhapass/src/models/user_model.dart';

import '../models/item_model.dart';

// class AppData {
//   UserModel user = UserModel(
//     nome: 'Samuel',
//     email: 'samuel@gmail.com',
//     senha: '',
//     cpf: '00000000000',
//     celular: '11111111111',
//   );

ItemModel java = ItemModel(
  itemName: 'Spring Boot',
  institution: 'Alura',
  image: 'assets/images/java.jpg',
  title: 'Curso Spring Security',
  description:
      'a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passagesa galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
  period: '2022',
);

ItemModel php = ItemModel(
  itemName: 'Laravel Rest api',
  institution: 'Alura',
  image: 'assets/images/php.png',
  title: 'Curso de Api Rest com Laravel',
  description:
      'a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
  period: '2022',
);

ItemModel sql = ItemModel(
  itemName: 'Segurança no Sql',
  institution: 'Alura',
  image: 'assets/images/sql.png',
  title: 'Curso de Segurança no Postgres',
  description:
      'a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
  period: '2022',
);

ItemModel front = ItemModel(
  itemName: 'Angular Observables',
  institution: 'Alura',
  image: 'assets/images/angular.png',
  title: 'Curso de Observables no angular',
  description:
      'a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
  period: '2022',
);

List<ItemModel> items = [java, php, sql, front];

List<String> categories = [
  'Java',
  'Php',
  'Front',
  'Sql',
  'Metodologias',
];

List<PasswordItemModel> passwordItems = [
  PasswordItemModel(item: java, quantity: 2),
  PasswordItemModel(item: php, quantity: 2),
  PasswordItemModel(item: front, quantity: 2),
];

// }
