// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discount_source_coupon.dart';
import './discount_source_type.dart';

/// auto generated
class DiscountSource implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The coupon that was redeemed to create this discount.
  DiscountSourceCoupon? coupon;

  ///  The source type of the discount.
  DiscountSourceType? type_;

  /// Instantiates a new [DiscountSource] and sets the default values.
  DiscountSource() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DiscountSource createFromDiscriminatorValue(ParseNode parseNode) {
    return DiscountSource();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon'] = (node) => coupon =
        node.getObjectValue<DiscountSourceCoupon>(
            DiscountSourceCoupon.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<DiscountSourceType>((stringValue) =>
            DiscountSourceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<DiscountSourceCoupon>('coupon', coupon);
    writer.writeEnumValue<DiscountSourceType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
