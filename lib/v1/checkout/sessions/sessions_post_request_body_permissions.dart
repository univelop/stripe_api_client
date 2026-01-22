// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_permissions_update_shipping_details.dart';

/// auto generated
/// This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object. Can only be set when creating `embedded` or `custom` sessions.For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
class SessionsPostRequestBodyPermissions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The update_shipping_details property
  SessionsPostRequestBodyPermissionsUpdateShippingDetails?
      updateShippingDetails;

  /// Instantiates a new [SessionsPostRequestBodyPermissions] and sets the default values.
  SessionsPostRequestBodyPermissions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPermissions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyPermissions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['update_shipping_details'] = (node) =>
        updateShippingDetails = node.getEnumValue<
                SessionsPostRequestBodyPermissionsUpdateShippingDetails>(
            (stringValue) =>
                SessionsPostRequestBodyPermissionsUpdateShippingDetails.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyPermissionsUpdateShippingDetails>(
        'update_shipping_details', updateShippingDetails, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
