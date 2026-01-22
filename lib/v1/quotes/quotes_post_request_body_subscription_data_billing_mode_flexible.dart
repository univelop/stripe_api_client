// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_subscription_data_billing_mode_flexible_proration_discounts.dart';

/// auto generated
class QuotesPostRequestBodySubscriptionDataBillingModeFlexible
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The proration_discounts property
  QuotesPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts?
      prorationDiscounts;

  /// Instantiates a new [QuotesPostRequestBodySubscriptionDataBillingModeFlexible] and sets the default values.
  QuotesPostRequestBodySubscriptionDataBillingModeFlexible()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodySubscriptionDataBillingModeFlexible
      createFromDiscriminatorValue(ParseNode parseNode) {
    return QuotesPostRequestBodySubscriptionDataBillingModeFlexible();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'proration_discounts'] = (node) => prorationDiscounts = node.getEnumValue<
            QuotesPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts>(
        (stringValue) =>
            QuotesPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            QuotesPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts>(
        'proration_discounts', prorationDiscounts, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
