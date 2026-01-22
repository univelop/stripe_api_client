// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_subscription_data_billing_mode_flexible_proration_discounts.dart';

/// auto generated
class SessionsPostRequestBodySubscriptionDataBillingModeFlexible
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The proration_discounts property
  SessionsPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts?
      prorationDiscounts;

  /// Instantiates a new [SessionsPostRequestBodySubscriptionDataBillingModeFlexible] and sets the default values.
  SessionsPostRequestBodySubscriptionDataBillingModeFlexible()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodySubscriptionDataBillingModeFlexible
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodySubscriptionDataBillingModeFlexible();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'proration_discounts'] = (node) => prorationDiscounts = node.getEnumValue<
            SessionsPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts>(
        (stringValue) =>
            SessionsPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts
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
            SessionsPostRequestBodySubscriptionDataBillingModeFlexibleProrationDiscounts>(
        'proration_discounts', prorationDiscounts, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
