import 'package:flutter_riverpod/flutter_riverpod.dart';

final privacyPhraseProvider = StateProvider<String>((_) => 'user_defined_phrase');

class SearchGatewayService {
  const SearchGatewayService();

  bool isPrivacyPhrase(String query, String phrase) {
    return query.trim().toLowerCase() == phrase.trim().toLowerCase();
  }
}
