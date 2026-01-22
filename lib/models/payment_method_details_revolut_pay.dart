// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './revolut_pay_underlying_payment_method_funding_details.dart';

/// auto generated
class PaymentMethodDetailsRevolutPay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The funding property
  RevolutPayUnderlyingPaymentMethodFundingDetails? funding;

  ///  The Revolut Pay transaction ID associated with this payment.
  String? transactionId;

  /// Instantiates a new [PaymentMethodDetailsRevolutPay] and sets the default values.
  PaymentMethodDetailsRevolutPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsRevolutPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsRevolutPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['funding'] = (node) => funding =
        node.getObjectValue<RevolutPayUnderlyingPaymentMethodFundingDetails>(
            RevolutPayUnderlyingPaymentMethodFundingDetails
                .createFromDiscriminatorValue);
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<RevolutPayUnderlyingPaymentMethodFundingDetails>(
        'funding', funding);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeAdditionalData(additionalData);
  }
}
