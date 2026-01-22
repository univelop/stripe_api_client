// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithAccountPostRequestBodyBusinessProfileMonthlyEstimatedRevenue
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The currency property
  String? currency;

  /// Instantiates a new [WithAccountPostRequestBodyBusinessProfileMonthlyEstimatedRevenue] and sets the default values.
  WithAccountPostRequestBodyBusinessProfileMonthlyEstimatedRevenue()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyBusinessProfileMonthlyEstimatedRevenue
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodyBusinessProfileMonthlyEstimatedRevenue();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeAdditionalData(additionalData);
  }
}
