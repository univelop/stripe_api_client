// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cardholders_post_request_body_billing_address.dart';

/// auto generated
/// The cardholder's billing address.
class CardholdersPostRequestBodyBilling
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  CardholdersPostRequestBodyBillingAddress? address;

  /// Instantiates a new [CardholdersPostRequestBodyBilling] and sets the default values.
  CardholdersPostRequestBodyBilling() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardholdersPostRequestBodyBilling createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardholdersPostRequestBodyBilling();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            CardholdersPostRequestBodyBillingAddress>(
        CardholdersPostRequestBodyBillingAddress.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CardholdersPostRequestBodyBillingAddress>(
        'address', address);
    writer.writeAdditionalData(additionalData);
  }
}
