import 'package:collection/collection.dart';

dynamic findUserById(
  List<dynamic>? usersList,
  String? userId, // Aceita null para userId
) {
  if (usersList == null || usersList.isEmpty || userId == null) {
    return null;
  }

  try {
    return usersList.firstWhereOrNull(
      (user) => user['_id']?.toString() == userId, // Usa operador ? para evitar erros de null
    );
  } catch (e) {
    print("Erro: $e");
    return null;
  }
}