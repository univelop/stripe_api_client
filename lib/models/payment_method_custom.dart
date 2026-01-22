// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './custom_logo.dart';

/// auto generated
class PaymentMethodCustom implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Display name of the Dashboard-only CustomPaymentMethodType.
  String? displayName;

  ///  Contains information about the Dashboard-only CustomPaymentMethodType logo.
  CustomLogo? logo;

  ///  ID of the Dashboard-only CustomPaymentMethodType. Not expandable.
  String? type_;

  /// Instantiates a new [PaymentMethodCustom] and sets the default values.
  PaymentMethodCustom() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodCustom createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodCustom();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['logo'] = (node) => logo = node
        .getObjectValue<CustomLogo>(CustomLogo.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('display_name', displayName);
    writer.writeObjectValue<CustomLogo>('logo', logo);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
