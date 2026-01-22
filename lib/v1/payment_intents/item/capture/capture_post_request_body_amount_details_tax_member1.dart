// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CapturePostRequestBodyAmountDetailsTaxMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The total_tax_amount property
  int? totalTaxAmount;

  /// Instantiates a new [CapturePostRequestBodyAmountDetailsTaxMember1] and sets the default values.
  CapturePostRequestBodyAmountDetailsTaxMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyAmountDetailsTaxMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CapturePostRequestBodyAmountDetailsTaxMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['total_tax_amount'] =
        (node) => totalTaxAmount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('total_tax_amount', totalTaxAmount);
    writer.writeAdditionalData(additionalData);
  }
}
