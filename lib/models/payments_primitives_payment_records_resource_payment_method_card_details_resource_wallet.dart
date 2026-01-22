// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_wallet_resource_apple_pay.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_wallet_resource_google_pay.dart';

/// auto generated
class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The apple_pay property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceApplePay?
      applePay;

  ///  (For tokenized numbers only.) The last four digits of the device account number.
  String? dynamicLast4;

  ///  The google_pay property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceGooglePay?
      googlePay;

  ///  The type of the card wallet, one of `apple_pay` or `google_pay`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
  String? type_;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['apple_pay'] = (node) => applePay = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceApplePay>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceApplePay
            .createFromDiscriminatorValue);
    deserializerMap['dynamic_last4'] =
        (node) => dynamicLast4 = node.getStringValue();
    deserializerMap['google_pay'] = (node) => googlePay = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceGooglePay>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceGooglePay
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceApplePay>(
        'apple_pay', applePay);
    writer.writeStringValue('dynamic_last4', dynamicLast4);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWalletResourceGooglePay>(
        'google_pay', googlePay);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
