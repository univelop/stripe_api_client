// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_flows_coupon_offer.dart';
import './portal_flows_retention_type.dart';

/// auto generated
class PortalFlowsRetention implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Configuration when `retention.type=coupon_offer`.
  PortalFlowsCouponOffer? couponOffer;

  ///  Type of retention strategy that will be used.
  PortalFlowsRetentionType? type_;

  /// Instantiates a new [PortalFlowsRetention] and sets the default values.
  PortalFlowsRetention() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFlowsRetention createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalFlowsRetention();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon_offer'] = (node) => couponOffer =
        node.getObjectValue<PortalFlowsCouponOffer>(
            PortalFlowsCouponOffer.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PortalFlowsRetentionType>((stringValue) =>
            PortalFlowsRetentionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PortalFlowsCouponOffer>(
        'coupon_offer', couponOffer);
    writer.writeEnumValue<PortalFlowsRetentionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
