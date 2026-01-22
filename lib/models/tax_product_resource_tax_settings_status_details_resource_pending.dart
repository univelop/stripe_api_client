// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TaxProductResourceTaxSettingsStatusDetailsResourcePending
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The list of missing fields that are required to perform calculations. It includes the entry `head_office` when the status is `pending`. It is recommended to set the optional values even if they aren't listed as required for calculating taxes. Calculations can fail if missing fields aren't explicitly provided on every call.
  Iterable<String>? missingFields;

  /// Instantiates a new [TaxProductResourceTaxSettingsStatusDetailsResourcePending] and sets the default values.
  TaxProductResourceTaxSettingsStatusDetailsResourcePending()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceTaxSettingsStatusDetailsResourcePending
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductResourceTaxSettingsStatusDetailsResourcePending();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['missing_fields'] =
        (node) => missingFields = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>(
        'missing_fields', missingFields);
    writer.writeAdditionalData(additionalData);
  }
}
