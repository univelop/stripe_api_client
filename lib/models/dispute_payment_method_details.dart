// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_payment_method_details_amazon_pay.dart';
import './dispute_payment_method_details_card.dart';
import './dispute_payment_method_details_klarna.dart';
import './dispute_payment_method_details_paypal.dart';
import './dispute_payment_method_details_type.dart';

/// auto generated
class DisputePaymentMethodDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amazon_pay property
  DisputePaymentMethodDetailsAmazonPay? amazonPay;

  ///  The card property
  DisputePaymentMethodDetailsCard? card;

  ///  The klarna property
  DisputePaymentMethodDetailsKlarna? klarna;

  ///  The paypal property
  DisputePaymentMethodDetailsPaypal? paypal;

  ///  Payment method type.
  DisputePaymentMethodDetailsType? type_;

  /// Instantiates a new [DisputePaymentMethodDetails] and sets the default values.
  DisputePaymentMethodDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePaymentMethodDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputePaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<DisputePaymentMethodDetailsAmazonPay>(
            DisputePaymentMethodDetailsAmazonPay.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<DisputePaymentMethodDetailsCard>(
            DisputePaymentMethodDetailsCard.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<DisputePaymentMethodDetailsKlarna>(
            DisputePaymentMethodDetailsKlarna.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<DisputePaymentMethodDetailsPaypal>(
            DisputePaymentMethodDetailsPaypal.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<DisputePaymentMethodDetailsType>((stringValue) =>
            DisputePaymentMethodDetailsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<DisputePaymentMethodDetailsAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<DisputePaymentMethodDetailsCard>('card', card);
    writer.writeObjectValue<DisputePaymentMethodDetailsKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<DisputePaymentMethodDetailsPaypal>(
        'paypal', paypal);
    writer.writeEnumValue<DisputePaymentMethodDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
