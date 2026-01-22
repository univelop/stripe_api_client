// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PortalFlowsSubscriptionUpdateConfirmDiscount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID of the coupon to apply to this subscription update.
  String? coupon;

  ///  The ID of a promotion code to apply to this subscription update.
  String? promotionCode;

  /// Instantiates a new [PortalFlowsSubscriptionUpdateConfirmDiscount] and sets the default values.
  PortalFlowsSubscriptionUpdateConfirmDiscount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFlowsSubscriptionUpdateConfirmDiscount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PortalFlowsSubscriptionUpdateConfirmDiscount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon'] = (node) => coupon = node.getStringValue();
    deserializerMap['promotion_code'] =
        (node) => promotionCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('coupon', coupon);
    writer.writeStringValue('promotion_code', promotionCode);
    writer.writeAdditionalData(additionalData);
  }
}
