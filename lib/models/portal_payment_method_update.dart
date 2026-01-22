// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PortalPaymentMethodUpdate implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the feature is enabled.
  bool? enabled;

  ///  The [Payment Method Configuration](/api/payment_method_configurations) to use for this portal session. When specified, customers will be able to update their payment method to one of the options specified by the payment method configuration. If not set, the default payment method configuration is used.
  String? paymentMethodConfiguration;

  /// Instantiates a new [PortalPaymentMethodUpdate] and sets the default values.
  PortalPaymentMethodUpdate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalPaymentMethodUpdate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalPaymentMethodUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['payment_method_configuration'] =
        (node) => paymentMethodConfiguration = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeStringValue(
        'payment_method_configuration', paymentMethodConfiguration);
    writer.writeAdditionalData(additionalData);
  }
}
