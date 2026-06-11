import 'package:flutter/material.dart';
import 'package:language_files_example/src/localization/l10n.dart';

class ApiKeyDialog extends StatefulWidget {
  const ApiKeyDialog({super.key, required this.initialValue});

  final String initialValue;

  @override
  State<ApiKeyDialog> createState() => _ApiKeyDialogState();
}

class _ApiKeyDialogState extends State<ApiKeyDialog> {
  late final TextEditingController _controller;
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(l10n.deepLApiKeyTitle),
      content: TextField(
        controller: _controller,
        obscureText: _obscure,
        decoration: InputDecoration(
          labelText: l10n.deepLApiKeyLabel,
          suffixIcon: IconButton(
            icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
            onPressed: () => setState(() => _obscure = !_obscure),
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancelAction)),
        FilledButton(onPressed: () => Navigator.of(context).pop(_controller.text.trim()), child: Text(l10n.saveAction)),
      ],
    );
  }
}
