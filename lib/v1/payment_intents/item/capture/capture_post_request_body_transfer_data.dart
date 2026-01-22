// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The parameters that you can use to automatically create a transfer after the paymentis captured. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
class CapturePostRequestBodyTransferData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  /// Instantiates a new [CapturePostRequestBodyTransferData] and sets the default values.
  CapturePostRequestBodyTransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyTransferData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CapturePostRequestBodyTransferData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeAdditionalData(additionalData);
  }
}
