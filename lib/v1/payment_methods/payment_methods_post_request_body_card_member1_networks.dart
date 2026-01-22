// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_methods_post_request_body_card_member1_networks_preferred.dart';

/// auto generated
class PaymentMethodsPostRequestBodyCardMember1Networks
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred property
  PaymentMethodsPostRequestBodyCardMember1NetworksPreferred? preferred;

  /// Instantiates a new [PaymentMethodsPostRequestBodyCardMember1Networks] and sets the default values.
  PaymentMethodsPostRequestBodyCardMember1Networks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBodyCardMember1Networks
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodsPostRequestBodyCardMember1Networks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preferred'] = (node) => preferred = node.getEnumValue<
            PaymentMethodsPostRequestBodyCardMember1NetworksPreferred>(
        (stringValue) =>
            PaymentMethodsPostRequestBodyCardMember1NetworksPreferred.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentMethodsPostRequestBodyCardMember1NetworksPreferred>(
        'preferred', preferred, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
