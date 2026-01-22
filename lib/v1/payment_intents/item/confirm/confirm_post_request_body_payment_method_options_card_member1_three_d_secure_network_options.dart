// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_member1_three_d_secure_network_options_cartes_bancaires.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cartes_bancaires property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires?
      cartesBancaires;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'cartes_bancaires'] = (node) => cartesBancaires = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires>(
        ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires>(
        'cartes_bancaires', cartesBancaires);
    writer.writeAdditionalData(additionalData);
  }
}
