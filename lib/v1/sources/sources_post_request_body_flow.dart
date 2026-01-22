// ignore_for_file: type=lint
/// auto generated
///  The authentication `flow` of the source to create. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`. It is generally inferred unless a type supports multiple flows.
enum SourcesPostRequestBodyFlow {
  codeVerification('code_verification'),
  none('none'),
  receiver('receiver'),
  redirect('redirect');

  const SourcesPostRequestBodyFlow(this.value);
  final String value;
}
