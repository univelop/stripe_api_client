// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_payment_method_reuse_agreement_position.dart';

/// auto generated
class PaymentLinksResourcePaymentMethodReuseAgreement
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's defaults will be used.When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
  PaymentLinksResourcePaymentMethodReuseAgreementPosition? position;

  /// Instantiates a new [PaymentLinksResourcePaymentMethodReuseAgreement] and sets the default values.
  PaymentLinksResourcePaymentMethodReuseAgreement() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourcePaymentMethodReuseAgreement
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksResourcePaymentMethodReuseAgreement();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['position'] = (node) => position = node
        .getEnumValue<PaymentLinksResourcePaymentMethodReuseAgreementPosition>(
            (stringValue) =>
                PaymentLinksResourcePaymentMethodReuseAgreementPosition.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentLinksResourcePaymentMethodReuseAgreementPosition>(
        'position', position, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
