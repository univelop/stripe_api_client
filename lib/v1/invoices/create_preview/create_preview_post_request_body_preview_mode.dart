// ignore_for_file: type=lint
/// auto generated
///  Customizes the types of values to include when calculating the invoice. Defaults to `next` if unspecified.
enum CreatePreviewPostRequestBodyPreviewMode {
  next('next'),
  recurring('recurring');

  const CreatePreviewPostRequestBodyPreviewMode(this.value);
  final String value;
}
