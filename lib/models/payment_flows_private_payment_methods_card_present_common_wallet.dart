// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_card_present_common_wallet_type.dart';

/// auto generated
class PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type of mobile wallet, one of `apple_pay`, `google_pay`, `samsung_pay`, or `unknown`.
  PaymentFlowsPrivatePaymentMethodsCardPresentCommonWalletType? type_;

  /// Instantiates a new [PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet] and sets the default values.
  PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            PaymentFlowsPrivatePaymentMethodsCardPresentCommonWalletType>(
        (stringValue) =>
            PaymentFlowsPrivatePaymentMethodsCardPresentCommonWalletType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentFlowsPrivatePaymentMethodsCardPresentCommonWalletType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
