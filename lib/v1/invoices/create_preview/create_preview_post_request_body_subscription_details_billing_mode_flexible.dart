// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_subscription_details_billing_mode_flexible_proration_discounts.dart';

/// auto generated
class CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexible
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The proration_discounts property
  CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexibleProrationDiscounts?
      prorationDiscounts;

  /// Instantiates a new [CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexible] and sets the default values.
  CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexible()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexible
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexible();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'proration_discounts'] = (node) => prorationDiscounts = node.getEnumValue<
            CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexibleProrationDiscounts>(
        (stringValue) =>
            CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexibleProrationDiscounts
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
            CreatePreviewPostRequestBodySubscriptionDetailsBillingModeFlexibleProrationDiscounts>(
        'proration_discounts', prorationDiscounts, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
