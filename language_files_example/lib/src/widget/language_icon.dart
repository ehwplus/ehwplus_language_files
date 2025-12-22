import 'package:ehwplus_language_files/ehwplus_language_files.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageIcon extends StatelessWidget {
  const LanguageIcon({super.key, required this.type, this.size = 24.0, this.withBorder = true});

  final LanguageIconType type;

  final double size;

  final bool withBorder;

  @override
  Widget build(BuildContext context) {
    final padding = withBorder ? size / 24 : 0.0;

    final iconSize = size - padding * 2;

    const packagePath = 'packages/ehwplus_language_files/';
    const assetSvgPath = 'assets/languages/circular/';

    final svg = SvgPicture.asset(
      '$packagePath$assetSvgPath${type.fileName}.svg',
      semanticsLabel: type.name,
      height: iconSize,
      width: iconSize,
    );
    if (!withBorder) {
      return svg;
    }

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.onSurface, shape: BoxShape.circle),
      padding: EdgeInsets.all(padding),
      alignment: Alignment.center,
      child: Center(child: svg),
    );
  }
}
