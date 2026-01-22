// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_grants_post_request_body_amount.dart';
import './credit_grants_post_request_body_applicability_config.dart';
import './credit_grants_post_request_body_category.dart';
import './credit_grants_post_request_body_metadata.dart';

/// auto generated
class Credit_grantsPostRequestBody implements Parsable {
  ///  Amount of this credit grant.
  CreditGrantsPostRequestBodyAmount? amount;

  ///  Configuration specifying what this credit grant applies to. We currently only support `metered` prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
  CreditGrantsPostRequestBodyApplicabilityConfig? applicabilityConfig;

  ///  The category of this credit grant. It defaults to `paid` if not specified.
  CreditGrantsPostRequestBodyCategory? category;

  ///  ID of the customer receiving the billing credits.
  String? customer;

  ///  ID of the account representing the customer receiving the billing credits.
  String? customerAccount;

  ///  The time when the billing credits become effective-when they're eligible for use. It defaults to the current timestamp if not specified.
  int? effectiveAt;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The time when the billing credits expire. If not specified, the billing credits don't expire.
  int? expiresAt;

  ///  Set of key-value pairs that you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
  Credit_grantsPostRequestBody_metadata? metadata;

  ///  A descriptive name shown in the Dashboard.
  String? name;

  ///  The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
  int? priority;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Credit_grantsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return Credit_grantsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<CreditGrantsPostRequestBodyAmount>(
            CreditGrantsPostRequestBodyAmount.createFromDiscriminatorValue);
    deserializerMap['applicability_config'] = (node) => applicabilityConfig =
        node.getObjectValue<CreditGrantsPostRequestBodyApplicabilityConfig>(
            CreditGrantsPostRequestBodyApplicabilityConfig
                .createFromDiscriminatorValue);
    deserializerMap['category'] = (node) => category =
        node.getEnumValue<CreditGrantsPostRequestBodyCategory>((stringValue) =>
            CreditGrantsPostRequestBodyCategory.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<Credit_grantsPostRequestBody_metadata>(
            Credit_grantsPostRequestBody_metadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['priority'] = (node) => priority = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CreditGrantsPostRequestBodyAmount>(
        'amount', amount);
    writer.writeObjectValue<CreditGrantsPostRequestBodyApplicabilityConfig>(
        'applicability_config', applicabilityConfig);
    writer.writeEnumValue<CreditGrantsPostRequestBodyCategory>(
        'category', category, (e) => e?.value);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeObjectValue<Credit_grantsPostRequestBody_metadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeIntValue('priority', priority);
  }
}
