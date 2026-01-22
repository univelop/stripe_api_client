// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_tipping_config.dart';

/// auto generated
/// Represents a per-transaction override of a reader configuration
class TerminalReaderReaderResourceProcessConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Enable customer-initiated cancellation when processing this payment.
  bool? enableCustomerCancellation;

  ///  If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
  String? returnUrl;

  ///  Override showing a tipping selection screen on this transaction.
  bool? skipTipping;

  ///  Represents a per-transaction tipping configuration
  TerminalReaderReaderResourceTippingConfig? tipping;

  /// Instantiates a new [TerminalReaderReaderResourceProcessConfig] and sets the default values.
  TerminalReaderReaderResourceProcessConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceProcessConfig createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceProcessConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enable_customer_cancellation'] =
        (node) => enableCustomerCancellation = node.getBoolValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['skip_tipping'] =
        (node) => skipTipping = node.getBoolValue();
    deserializerMap['tipping'] = (node) => tipping = node.getObjectValue<
            TerminalReaderReaderResourceTippingConfig>(
        TerminalReaderReaderResourceTippingConfig.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enable_customer_cancellation',
        value: enableCustomerCancellation);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeBoolValue('skip_tipping', value: skipTipping);
    writer.writeObjectValue<TerminalReaderReaderResourceTippingConfig>(
        'tipping', tipping);
    writer.writeAdditionalData(additionalData);
  }
}
