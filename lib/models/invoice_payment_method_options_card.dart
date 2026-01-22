// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_installments_card.dart';
import './invoice_payment_method_options_card_request_three_d_secure.dart';

/// auto generated
class InvoicePaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The installments property
  InvoiceInstallmentsCard? installments;

  ///  We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
  InvoicePaymentMethodOptionsCardRequestThreeDSecure? requestThreeDSecure;

  /// Instantiates a new [InvoicePaymentMethodOptionsCard] and sets the default values.
  InvoicePaymentMethodOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentMethodOptionsCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicePaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['installments'] = (node) => installments =
        node.getObjectValue<InvoiceInstallmentsCard>(
            InvoiceInstallmentsCard.createFromDiscriminatorValue);
    deserializerMap['request_three_d_secure'] = (node) => requestThreeDSecure =
        node.getEnumValue<InvoicePaymentMethodOptionsCardRequestThreeDSecure>(
            (stringValue) => InvoicePaymentMethodOptionsCardRequestThreeDSecure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<InvoiceInstallmentsCard>(
        'installments', installments);
    writer.writeEnumValue<InvoicePaymentMethodOptionsCardRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
