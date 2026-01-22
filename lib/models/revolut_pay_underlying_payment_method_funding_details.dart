// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_passthrough_card.dart';
import './revolut_pay_underlying_payment_method_funding_details_type.dart';

/// auto generated
class RevolutPayUnderlyingPaymentMethodFundingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card property
  PaymentMethodDetailsPassthroughCard? card;

  ///  funding type of the underlying payment method.
  RevolutPayUnderlyingPaymentMethodFundingDetailsType? type_;

  /// Instantiates a new [RevolutPayUnderlyingPaymentMethodFundingDetails] and sets the default values.
  RevolutPayUnderlyingPaymentMethodFundingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RevolutPayUnderlyingPaymentMethodFundingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RevolutPayUnderlyingPaymentMethodFundingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentMethodDetailsPassthroughCard>(
            PaymentMethodDetailsPassthroughCard.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RevolutPayUnderlyingPaymentMethodFundingDetailsType>(
            (stringValue) => RevolutPayUnderlyingPaymentMethodFundingDetailsType
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
    writer.writeEnumValue<RevolutPayUnderlyingPaymentMethodFundingDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
