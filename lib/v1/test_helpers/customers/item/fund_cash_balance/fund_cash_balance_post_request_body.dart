// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class FundCashBalancePostRequestBody implements Parsable {
  ///  Amount to be used for this test cash balance transaction. A positive integer representing how much to fund in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to fund $1.00 or 100 to fund ¥100, a zero-decimal currency).
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A description of the test funding. This simulates free-text references supplied by customers when making bank transfers to their cash balance. You can use this to test how Stripe's [reconciliation algorithm](https://docs.stripe.com/payments/customer-balance/reconciliation) applies to different user inputs.
  String? reference;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundCashBalancePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FundCashBalancePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('reference', reference);
  }
}
