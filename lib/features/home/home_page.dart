import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../search_gateway/search_gateway.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _controller = TextEditingController();
  String _result = 'Search beauty, fashion, and routines';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _onSearch() async {
    final query = _controller.text;
    final phrase = ref.read(privacyPhraseProvider);
    final service = const SearchGatewayService();

    if (service.isPrivacyPhrase(query, phrase)) {
      if (!mounted) return;
      _controller.clear();
      context.go('/privacy-hub');
      return;
    }

    setState(() => _result = 'Results for "$query" in beauty & fashion');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Luxe Lifestyle')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Beauty Dashboard', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Search products, outfits, routines',
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
              prefixIcon: const Icon(Icons.search),
            ),
            onSubmitted: (_) => _onSearch(),
          ),
          const SizedBox(height: 12),
          FilledButton(onPressed: _onSearch, child: const Text('Search')),
          const SizedBox(height: 24),
          Card(child: Padding(padding: const EdgeInsets.all(16), child: Text(_result))),
        ],
      ),
    );
  }
}
