// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithAccountPostRequestBodyBusinessProfileAnnualRevenue
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The currency property
  String? currency;

  ///  The fiscal_year_end property
  String? fiscalYearEnd;

  /// Instantiates a new [WithAccountPostRequestBodyBusinessProfileAnnualRevenue] and sets the default values.
  WithAccountPostRequestBodyBusinessProfileAnnualRevenue()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyBusinessProfileAnnualRevenue
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodyBusinessProfileAnnualRevenue();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['fiscal_year_end'] =
        (node) => fiscalYearEnd = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('fiscal_year_end', fiscalYearEnd);
    writer.writeAdditionalData(additionalData);
  }
}
