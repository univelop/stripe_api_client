// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Represents a per-transaction override of a reader configuration
class TerminalReaderReaderResourceConfirmConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
  String? returnUrl;

  /// Instantiates a new [TerminalReaderReaderResourceConfirmConfig] and sets the default values.
  TerminalReaderReaderResourceConfirmConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceConfirmConfig createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceConfirmConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('return_url', returnUrl);
    writer.writeAdditionalData(additionalData);
  }
}
