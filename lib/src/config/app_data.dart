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
  image: '',
  description: 'Curso Sring Security',
  period: '2022',
);

ItemModel php = ItemModel(
  itemName: 'Laravel Rest api',
  institution: 'Alura',
  image: '',
  description: 'Curso de Api Rest com Laravel',
  period: '2022',
);

ItemModel sql = ItemModel(
  itemName: 'Segunrança no Sql',
  institution: 'Alura',
  image: '',
  description: 'Curso de Segurança no Postgres',
  period: '2022',
);

ItemModel front = ItemModel(
  itemName: 'Angular Observables',
  institution: 'Alura',
  image: '',
  description: 'Curso de Observables no angular',
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

// }
