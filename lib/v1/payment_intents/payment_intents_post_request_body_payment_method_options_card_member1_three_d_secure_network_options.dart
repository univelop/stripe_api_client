// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_card_member1_three_d_secure_network_options_cartes_bancaires.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cartes_bancaires property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires?
      cartesBancaires;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'cartes_bancaires'] = (node) => cartesBancaires = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires>(
        'cartes_bancaires', cartesBancaires);
    writer.writeAdditionalData(additionalData);
  }
}
