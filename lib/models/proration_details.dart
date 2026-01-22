// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discounts_resource_discount_amount.dart';

/// auto generated
class ProrationDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Discount amounts applied when the proration was created.
  Iterable<DiscountsResourceDiscountAmount>? discountAmounts;

  /// Instantiates a new [ProrationDetails] and sets the default values.
  ProrationDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ProrationDetails createFromDiscriminatorValue(ParseNode parseNode) {
    return ProrationDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discount_amounts'] = (node) => discountAmounts =
        node.getCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
            DiscountsResourceDiscountAmount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
        'discount_amounts', discountAmounts);
    writer.writeAdditionalData(additionalData);
  }
}
