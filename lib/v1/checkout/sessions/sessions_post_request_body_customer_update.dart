// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_customer_update_address.dart';
import './sessions_post_request_body_customer_update_name.dart';
import './sessions_post_request_body_customer_update_shipping.dart';

/// auto generated
/// Controls what fields on Customer can be updated by the Checkout Session. Can only be provided when `customer` is provided.
class SessionsPostRequestBodyCustomerUpdate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  SessionsPostRequestBodyCustomerUpdateAddress? address;

  ///  The name property
  SessionsPostRequestBodyCustomerUpdateName? name;

  ///  The shipping property
  SessionsPostRequestBodyCustomerUpdateShipping? shipping;

  /// Instantiates a new [SessionsPostRequestBodyCustomerUpdate] and sets the default values.
  SessionsPostRequestBodyCustomerUpdate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyCustomerUpdate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyCustomerUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getEnumValue<SessionsPostRequestBodyCustomerUpdateAddress>(
            (stringValue) => SessionsPostRequestBodyCustomerUpdateAddress.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['name'] = (node) => name =
        node.getEnumValue<SessionsPostRequestBodyCustomerUpdateName>(
            (stringValue) => SessionsPostRequestBodyCustomerUpdateName.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['shipping'] = (node) => shipping =
        node.getEnumValue<SessionsPostRequestBodyCustomerUpdateShipping>(
            (stringValue) => SessionsPostRequestBodyCustomerUpdateShipping
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<SessionsPostRequestBodyCustomerUpdateAddress>(
        'address', address, (e) => e?.value);
    writer.writeEnumValue<SessionsPostRequestBodyCustomerUpdateName>(
        'name', name, (e) => e?.value);
    writer.writeEnumValue<SessionsPostRequestBodyCustomerUpdateShipping>(
        'shipping', shipping, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
