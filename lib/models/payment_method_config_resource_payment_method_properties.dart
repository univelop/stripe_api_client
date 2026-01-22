// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_config_resource_display_preference.dart';

/// auto generated
class PaymentMethodConfigResourcePaymentMethodProperties
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
  bool? available;

  ///  The display_preference property
  PaymentMethodConfigResourceDisplayPreference? displayPreference;

  /// Instantiates a new [PaymentMethodConfigResourcePaymentMethodProperties] and sets the default values.
  PaymentMethodConfigResourcePaymentMethodProperties() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigResourcePaymentMethodProperties
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigResourcePaymentMethodProperties();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available'] = (node) => available = node.getBoolValue();
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<PaymentMethodConfigResourceDisplayPreference>(
            PaymentMethodConfigResourceDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('available', value: available);
    writer.writeObjectValue<PaymentMethodConfigResourceDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
