// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_three_d_secure_network_options_cartes_bancaires_cb_avalgo.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cb_avalgo property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo?
      cbAvalgo;

  ///  The cb_exemption property
  String? cbExemption;

  ///  The cb_score property
  int? cbScore;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancaires();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cb_avalgo'] = (node) => cbAvalgo = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cb_exemption'] =
        (node) => cbExemption = node.getStringValue();
    deserializerMap['cb_score'] = (node) => cbScore = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptionsCartesBancairesCbAvalgo>(
        'cb_avalgo', cbAvalgo, (e) => e?.value);
    writer.writeStringValue('cb_exemption', cbExemption);
    writer.writeIntValue('cb_score', cbScore);
    writer.writeAdditionalData(additionalData);
  }
}
