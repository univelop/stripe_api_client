// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_embedded_financial_account_features.dart';

/// auto generated
class ConnectEmbeddedFinancialAccountConfigClaim
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the embedded component is enabled.
  bool? enabled;

  ///  The features property
  ConnectEmbeddedFinancialAccountFeatures? features;

  /// Instantiates a new [ConnectEmbeddedFinancialAccountConfigClaim] and sets the default values.
  ConnectEmbeddedFinancialAccountConfigClaim() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectEmbeddedFinancialAccountConfigClaim
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConnectEmbeddedFinancialAccountConfigClaim();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            ConnectEmbeddedFinancialAccountFeatures>(
        ConnectEmbeddedFinancialAccountFeatures.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<ConnectEmbeddedFinancialAccountFeatures>(
        'features', features);
    writer.writeAdditionalData(additionalData);
  }
}
