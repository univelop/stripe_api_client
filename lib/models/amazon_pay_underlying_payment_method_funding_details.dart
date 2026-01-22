// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './amazon_pay_underlying_payment_method_funding_details_type.dart';
import './payment_method_details_passthrough_card.dart';

/// auto generated
class AmazonPayUnderlyingPaymentMethodFundingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card property
  PaymentMethodDetailsPassthroughCard? card;

  ///  funding type of the underlying payment method.
  AmazonPayUnderlyingPaymentMethodFundingDetailsType? type_;

  /// Instantiates a new [AmazonPayUnderlyingPaymentMethodFundingDetails] and sets the default values.
  AmazonPayUnderlyingPaymentMethodFundingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AmazonPayUnderlyingPaymentMethodFundingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AmazonPayUnderlyingPaymentMethodFundingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentMethodDetailsPassthroughCard>(
            PaymentMethodDetailsPassthroughCard.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<AmazonPayUnderlyingPaymentMethodFundingDetailsType>(
            (stringValue) => AmazonPayUnderlyingPaymentMethodFundingDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodDetailsPassthroughCard>('card', card);
    writer.writeEnumValue<AmazonPayUnderlyingPaymentMethodFundingDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
