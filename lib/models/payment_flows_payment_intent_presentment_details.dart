// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentFlowsPaymentIntentPresentmentDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount intended to be collected by this payment, denominated in `presentment_currency`.
  int? presentmentAmount;

  ///  Currency presented to the customer during payment.
  String? presentmentCurrency;

  /// Instantiates a new [PaymentFlowsPaymentIntentPresentmentDetails] and sets the default values.
  PaymentFlowsPaymentIntentPresentmentDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPaymentIntentPresentmentDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPaymentIntentPresentmentDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['presentment_amount'] =
        (node) => presentmentAmount = node.getIntValue();
    deserializerMap['presentment_currency'] =
        (node) => presentmentCurrency = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('presentment_amount', presentmentAmount);
    writer.writeStringValue('presentment_currency', presentmentCurrency);
    writer.writeAdditionalData(additionalData);
  }
}
