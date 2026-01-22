// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves the details of a PaymentIntent that has previously been created. </p><p>You can retrieve a PaymentIntent client-side using a publishable key when the <code>client_secret</code> is in the query string. </p><p>If you retrieve a PaymentIntent with a publishable key, it only returns a subset of properties. Refer to the <a href="#payment_intent_object">payment intent</a> object reference for more details.</p>
class WithIntentItemRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The client secret of the PaymentIntent. We require it if you use a publishable key to retrieve the source.
  /// @QueryParameter('client_secret')
  String? clientSecret;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'client_secret': clientSecret,
      'expand': expand,
    };
  }
}
