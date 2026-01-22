// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_three_d_secure_network_options_cartes_bancaires.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cartes_bancaires property
  ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires?
      cartesBancaires;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'cartes_bancaires'] = (node) => cartesBancaires = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires>(
        ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires>(
        'cartes_bancaires', cartesBancaires);
    writer.writeAdditionalData(additionalData);
  }
}
