// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Finds a secret in the secret store by name and scope.</p>
class FindRequestBuilderGetQueryParameters implements AbstractQueryParameters {
  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A name for the secret that's unique within the scope.
  String? name;

  ///  Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
  String? scope;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'expand': expand,
      'name': name,
      'scope': scope,
    };
  }
}
