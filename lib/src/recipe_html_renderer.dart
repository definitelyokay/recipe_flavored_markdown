import 'package:markdown/markdown.dart';
import 'package:recipe_flavored_markdown/src/recipe_nodes.dart';

/// {@template recipe_html_renderer}
/// An HTML renderer that can render recipe-flavored markdown.
/// {@endtemplate}
class RecipeHtmlRenderer extends HtmlRenderer implements RecipeNodeVisitor {
  /// {@macro recipe_html_renderer}
  RecipeHtmlRenderer();

  /// Visit a reference node.
  @override
  void visitReference(Reference reference) {
    buffer.write(reference.textContent);
  }

  @override
  void visitScalar(Scalar scalar) {
    buffer.write(scalar.textContent);
  }
}
