// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class VerifyMicrodepositsPostRequestBody implements Parsable {
  ///  Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
  Iterable<int>? amounts;

  ///  The client secret of the PaymentIntent.
  String? clientSecret;

  ///  A six-character code starting with SM present in the microdeposit sent to the bank account.
  String? descriptorCode;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerifyMicrodepositsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return VerifyMicrodepositsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amounts'] =
        (node) => amounts = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['descriptor_code'] =
        (node) => descriptorCode = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<int?>('amounts', amounts);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeStringValue('descriptor_code', descriptorCode);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
