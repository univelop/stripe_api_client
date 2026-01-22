// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PortalFlowsCouponOffer implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID of the coupon to be offered.
  String? coupon;

  /// Instantiates a new [PortalFlowsCouponOffer] and sets the default values.
  PortalFlowsCouponOffer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFlowsCouponOffer createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalFlowsCouponOffer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon'] = (node) => coupon = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('coupon', coupon);
    writer.writeAdditionalData(additionalData);
  }
}
