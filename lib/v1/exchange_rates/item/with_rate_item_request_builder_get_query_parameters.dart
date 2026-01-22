// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>[Deprecated] The <code>ExchangeRate</code> APIs are deprecated. Please use the <a href="https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api">FX Quotes API</a> instead.</p><p>Retrieves the exchange rates from the given currency to every supported currency.</p>
class WithRateItemRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'expand': expand,
    };
  }
}
