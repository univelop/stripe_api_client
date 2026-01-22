// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_sessions_post_request_body_components_customer_sheet_features.dart';

/// auto generated
class CustomerSessionsPostRequestBodyComponentsCustomerSheet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The features property
  CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures? features;

  /// Instantiates a new [CustomerSessionsPostRequestBodyComponentsCustomerSheet] and sets the default values.
  CustomerSessionsPostRequestBodyComponentsCustomerSheet()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionsPostRequestBodyComponentsCustomerSheet
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionsPostRequestBodyComponentsCustomerSheet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures>(
        CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            CustomerSessionsPostRequestBodyComponentsCustomerSheetFeatures>(
        'features', features);
    writer.writeAdditionalData(additionalData);
  }
}
