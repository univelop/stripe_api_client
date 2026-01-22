// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithQuotePostRequestBodyTransferDataMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The amount_percent property
  double? amountPercent;

  ///  The destination property
  String? destination;

  /// Instantiates a new [WithQuotePostRequestBodyTransferDataMember1] and sets the default values.
  WithQuotePostRequestBodyTransferDataMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithQuotePostRequestBodyTransferDataMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithQuotePostRequestBodyTransferDataMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_percent'] =
        (node) => amountPercent = node.getDoubleValue();
    deserializerMap['destination'] =
        (node) => destination = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeDoubleValue('amount_percent', amountPercent);
    writer.writeStringValue('destination', destination);
    writer.writeAdditionalData(additionalData);
  }
}
