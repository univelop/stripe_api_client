// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_customer_update_allowed_updates.dart';

/// auto generated
class PortalCustomerUpdate implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The types of customer updates that are supported. When empty, customers are not updateable.
  Iterable<PortalCustomerUpdateAllowedUpdates>? allowedUpdates;

  ///  Whether the feature is enabled.
  bool? enabled;

  /// Instantiates a new [PortalCustomerUpdate] and sets the default values.
  PortalCustomerUpdate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalCustomerUpdate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalCustomerUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allowed_updates'] = (node) => allowedUpdates =
        node.getCollectionOfEnumValues<PortalCustomerUpdateAllowedUpdates>(
            (stringValue) => PortalCustomerUpdateAllowedUpdates.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<PortalCustomerUpdateAllowedUpdates>(
        'allowed_updates', allowedUpdates, (e) => e?.value);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeAdditionalData(additionalData);
  }
}
