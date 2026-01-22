// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Finds a tax association object by PaymentIntent id.</p>
class FindRequestBuilderGetQueryParameters implements AbstractQueryParameters {
  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  Valid [PaymentIntent](https://docs.stripe.com/api/payment_intents/object) id
  /// @QueryParameter('payment_intent')
  String? paymentIntent;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'expand': expand,
      'payment_intent': paymentIntent,
    };
  }
}
