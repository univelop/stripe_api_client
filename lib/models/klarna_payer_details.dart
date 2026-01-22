// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './klarna_address.dart';

/// auto generated
class KlarnaPayerDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payer's address
  KlarnaAddress? address;

  /// Instantiates a new [KlarnaPayerDetails] and sets the default values.
  KlarnaPayerDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static KlarnaPayerDetails createFromDiscriminatorValue(ParseNode parseNode) {
    return KlarnaPayerDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<KlarnaAddress>(
            KlarnaAddress.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<KlarnaAddress>('address', address);
    writer.writeAdditionalData(additionalData);
  }
}
