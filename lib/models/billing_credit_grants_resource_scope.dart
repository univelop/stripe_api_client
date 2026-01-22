// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_credit_grants_resource_applicable_price.dart';
import './billing_credit_grants_resource_scope_price_type.dart';

/// auto generated
class BillingCreditGrantsResourceScope
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The prices that credit grants can apply to. We currently only support `metered` prices. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them. Cannot be used in combination with `price_type`.
  Iterable<BillingCreditGrantsResourceApplicablePrice>? prices;

  ///  The price type that credit grants can apply to. We currently only support the `metered` price type. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them. Cannot be used in combination with `prices`.
  BillingCreditGrantsResourceScopePriceType? priceType;

  /// Instantiates a new [BillingCreditGrantsResourceScope] and sets the default values.
  BillingCreditGrantsResourceScope() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingCreditGrantsResourceScope createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BillingCreditGrantsResourceScope();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['prices'] = (node) => prices =
        node.getCollectionOfObjectValues<
                BillingCreditGrantsResourceApplicablePrice>(
            BillingCreditGrantsResourceApplicablePrice
                .createFromDiscriminatorValue);
    deserializerMap['price_type'] = (node) => priceType =
        node.getEnumValue<BillingCreditGrantsResourceScopePriceType>(
            (stringValue) => BillingCreditGrantsResourceScopePriceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
        BillingCreditGrantsResourceApplicablePrice>('prices', prices);
    writer.writeEnumValue<BillingCreditGrantsResourceScopePriceType>(
        'price_type', priceType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
