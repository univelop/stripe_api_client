// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payouts_post_request_body_metadata.dart';
import './payouts_post_request_body_method.dart';
import './payouts_post_request_body_source_type.dart';

/// auto generated
class PayoutsPostRequestBody implements Parsable {
  ///  A positive integer in cents representing how much to payout.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The ID of a bank account or a card to send the payout to. If you don't provide a destination, we use the default external account for the specified currency.
  String? destination;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  PayoutsPostRequestBodyMetadata? metadata;

  ///  The method used to send this payout, which is `standard` or `instant`. We support `instant` for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
  PayoutsPostRequestBodyMethod? method;

  ///  The ID of a v2 FinancialAccount to send funds to.
  String? payoutMethod;

  ///  The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the Balances API. One of `bank_account`, `card`, or `fpx`.
  PayoutsPostRequestBodySourceType? sourceType;

  ///  A string that displays on the recipient's bank or card statement (up to 22 characters). A `statement_descriptor` that's longer than 22 characters return an error. Most banks truncate this information and display it inconsistently. Some banks might not display it at all.
  String? statementDescriptor;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PayoutsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PayoutsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination'] =
        (node) => destination = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PayoutsPostRequestBodyMetadata>(
            PayoutsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['method'] = (node) => method =
        node.getEnumValue<PayoutsPostRequestBodyMethod>((stringValue) =>
            PayoutsPostRequestBodyMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payout_method'] =
        (node) => payoutMethod = node.getStringValue();
    deserializerMap['source_type'] = (node) => sourceType =
        node.getEnumValue<PayoutsPostRequestBodySourceType>((stringValue) =>
            PayoutsPostRequestBodySourceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeStringValue('destination', destination);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<PayoutsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<PayoutsPostRequestBodyMethod>(
        'method', method, (e) => e?.value);
    writer.writeStringValue('payout_method', payoutMethod);
    writer.writeEnumValue<PayoutsPostRequestBodySourceType>(
        'source_type', sourceType, (e) => e?.value);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
  }
}
