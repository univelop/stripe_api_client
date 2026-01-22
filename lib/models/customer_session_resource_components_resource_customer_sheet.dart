// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_resource_components_resource_customer_sheet_resource_features.dart';

/// auto generated
/// This hash contains whether the customer sheet is enabled and the features it supports.
class CustomerSessionResourceComponentsResourceCustomerSheet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the customer sheet is enabled.
  bool? enabled;

  ///  This hash defines whether the customer sheet supports certain features.
  CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures?
      features;

  /// Instantiates a new [CustomerSessionResourceComponentsResourceCustomerSheet] and sets the default values.
  CustomerSessionResourceComponentsResourceCustomerSheet()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionResourceComponentsResourceCustomerSheet
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionResourceComponentsResourceCustomerSheet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures>(
        CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures>(
        'features', features);
    writer.writeAdditionalData(additionalData);
  }
}
