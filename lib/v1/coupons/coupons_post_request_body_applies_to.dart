// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// A hash containing directions for what this Coupon will apply discounts to.
class CouponsPostRequestBodyAppliesTo
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The products property
  Iterable<String>? products;

  /// Instantiates a new [CouponsPostRequestBodyAppliesTo] and sets the default values.
  CouponsPostRequestBodyAppliesTo() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CouponsPostRequestBodyAppliesTo createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CouponsPostRequestBodyAppliesTo();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['products'] =
        (node) => products = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('products', products);
    writer.writeAdditionalData(additionalData);
  }
}
