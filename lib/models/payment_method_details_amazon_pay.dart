// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './amazon_pay_underlying_payment_method_funding_details.dart';

/// auto generated
class PaymentMethodDetailsAmazonPay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The funding property
  AmazonPayUnderlyingPaymentMethodFundingDetails? funding;

  ///  The Amazon Pay transaction ID associated with this payment.
  String? transactionId;

  /// Instantiates a new [PaymentMethodDetailsAmazonPay] and sets the default values.
  PaymentMethodDetailsAmazonPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsAmazonPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsAmazonPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['funding'] = (node) => funding =
        node.getObjectValue<AmazonPayUnderlyingPaymentMethodFundingDetails>(
            AmazonPayUnderlyingPaymentMethodFundingDetails
                .createFromDiscriminatorValue);
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AmazonPayUnderlyingPaymentMethodFundingDetails>(
        'funding', funding);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeAdditionalData(additionalData);
  }
}
