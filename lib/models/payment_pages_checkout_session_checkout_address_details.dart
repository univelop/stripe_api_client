// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
class PaymentPagesCheckoutSessionCheckoutAddressDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  Address? address;

  ///  Customer name.
  String? name;

  /// Instantiates a new [PaymentPagesCheckoutSessionCheckoutAddressDetails] and sets the default values.
  PaymentPagesCheckoutSessionCheckoutAddressDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionCheckoutAddressDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionCheckoutAddressDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeStringValue('name', name);
    writer.writeAdditionalData(additionalData);
  }
}
