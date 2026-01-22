// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_resource_components_resource_mobile_payment_element_resource_features.dart';

/// auto generated
/// This hash contains whether the mobile payment element is enabled and the features it supports.
class CustomerSessionResourceComponentsResourceMobilePaymentElement
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the mobile payment element is enabled.
  bool? enabled;

  ///  This hash defines whether the mobile payment element supports certain features.
  CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures?
      features;

  /// Instantiates a new [CustomerSessionResourceComponentsResourceMobilePaymentElement] and sets the default values.
  CustomerSessionResourceComponentsResourceMobilePaymentElement()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionResourceComponentsResourceMobilePaymentElement
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionResourceComponentsResourceMobilePaymentElement();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures>(
        CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures>(
        'features', features);
    writer.writeAdditionalData(additionalData);
  }
}
