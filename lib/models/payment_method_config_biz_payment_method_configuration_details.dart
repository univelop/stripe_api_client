// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodConfigBizPaymentMethodConfigurationDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the payment method configuration used.
  String? id;

  ///  ID of the parent payment method configuration used.
  String? parent;

  /// Instantiates a new [PaymentMethodConfigBizPaymentMethodConfigurationDetails] and sets the default values.
  PaymentMethodConfigBizPaymentMethodConfigurationDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigBizPaymentMethodConfigurationDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigBizPaymentMethodConfigurationDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['parent'] = (node) => parent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeStringValue('parent', parent);
    writer.writeAdditionalData(additionalData);
  }
}
