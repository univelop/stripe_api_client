// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_payment_method_reuse_agreement_position.dart';

/// auto generated
class PaymentPagesCheckoutSessionPaymentMethodReuseAgreement
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's defaults will be used.When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
  PaymentPagesCheckoutSessionPaymentMethodReuseAgreementPosition? position;

  /// Instantiates a new [PaymentPagesCheckoutSessionPaymentMethodReuseAgreement] and sets the default values.
  PaymentPagesCheckoutSessionPaymentMethodReuseAgreement()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionPaymentMethodReuseAgreement
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionPaymentMethodReuseAgreement();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['position'] = (node) => position = node.getEnumValue<
            PaymentPagesCheckoutSessionPaymentMethodReuseAgreementPosition>(
        (stringValue) =>
            PaymentPagesCheckoutSessionPaymentMethodReuseAgreementPosition
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentPagesCheckoutSessionPaymentMethodReuseAgreementPosition>(
        'position', position, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
