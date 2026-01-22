// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The parameters used to automatically create a transfer after the payment is captured.Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
class IncrementAuthorizationPostRequestBodyTransferData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  /// Instantiates a new [IncrementAuthorizationPostRequestBodyTransferData] and sets the default values.
  IncrementAuthorizationPostRequestBodyTransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IncrementAuthorizationPostRequestBodyTransferData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IncrementAuthorizationPostRequestBodyTransferData();
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
