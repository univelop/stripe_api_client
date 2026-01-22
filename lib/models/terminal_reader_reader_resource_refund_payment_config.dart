// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Represents a per-transaction override of a reader configuration
class TerminalReaderReaderResourceRefundPaymentConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Enable customer-initiated cancellation when refunding this payment.
  bool? enableCustomerCancellation;

  /// Instantiates a new [TerminalReaderReaderResourceRefundPaymentConfig] and sets the default values.
  TerminalReaderReaderResourceRefundPaymentConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceRefundPaymentConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalReaderReaderResourceRefundPaymentConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enable_customer_cancellation'] =
        (node) => enableCustomerCancellation = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enable_customer_cancellation',
        value: enableCustomerCancellation);
    writer.writeAdditionalData(additionalData);
  }
}
