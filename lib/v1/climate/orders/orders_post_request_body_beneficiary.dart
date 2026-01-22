// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
class OrdersPostRequestBodyBeneficiary
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The public_name property
  String? publicName;

  /// Instantiates a new [OrdersPostRequestBodyBeneficiary] and sets the default values.
  OrdersPostRequestBodyBeneficiary() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OrdersPostRequestBodyBeneficiary createFromDiscriminatorValue(
      ParseNode parseNode) {
    return OrdersPostRequestBodyBeneficiary();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['public_name'] =
        (node) => publicName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('public_name', publicName);
    writer.writeAdditionalData(additionalData);
  }
}
