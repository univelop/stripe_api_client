// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './return_post_request_body_returned_details_code.dart';

/// auto generated
/// Details about a returned OutboundTransfer.
class ReturnPostRequestBodyReturnedDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The code property
  ReturnPostRequestBodyReturnedDetailsCode? code;

  /// Instantiates a new [ReturnPostRequestBodyReturnedDetails] and sets the default values.
  ReturnPostRequestBodyReturnedDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReturnPostRequestBodyReturnedDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReturnPostRequestBodyReturnedDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code =
        node.getEnumValue<ReturnPostRequestBodyReturnedDetailsCode>(
            (stringValue) => ReturnPostRequestBodyReturnedDetailsCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<ReturnPostRequestBodyReturnedDetailsCode>(
        'code', code, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
