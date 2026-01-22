// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_resource_components_resource_payment_element_resource_features.dart';

/// auto generated
/// This hash contains whether the Payment Element is enabled and the features it supports.
class CustomerSessionResourceComponentsResourcePaymentElement
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the Payment Element is enabled.
  bool? enabled;

  ///  This hash defines whether the Payment Element supports certain features.
  CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures?
      features;

  /// Instantiates a new [CustomerSessionResourceComponentsResourcePaymentElement] and sets the default values.
  CustomerSessionResourceComponentsResourcePaymentElement()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionResourceComponentsResourcePaymentElement
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionResourceComponentsResourcePaymentElement();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures>(
        CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures>(
        'features', features);
    writer.writeAdditionalData(additionalData);
  }
}
