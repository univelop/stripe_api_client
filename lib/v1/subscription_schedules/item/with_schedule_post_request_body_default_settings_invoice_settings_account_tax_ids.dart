// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<String>?], [String?]
class WithSchedulePostRequestBodyDefaultSettingsInvoiceSettingsAccountTaxIds
    implements Parsable {
  ///  Composed type representation for type [Iterable<String>?]
  Iterable<String>? string_;

  ///  Composed type representation for type [String?]
  String?
      withSchedulePostRequestBodyDefaultSettingsInvoiceSettingsAccountTaxIdsString;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyDefaultSettingsInvoiceSettingsAccountTaxIds
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithSchedulePostRequestBodyDefaultSettingsInvoiceSettingsAccountTaxIds();
    if (parseNode.getStringValue() != null) {
      result.withSchedulePostRequestBodyDefaultSettingsInvoiceSettingsAccountTaxIdsString =
          parseNode.getStringValue();
    } else if (parseNode.getCollectionOfPrimitiveValues<String>().isNotEmpty) {
      result.string_ = parseNode.getCollectionOfPrimitiveValues<String>();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (withSchedulePostRequestBodyDefaultSettingsInvoiceSettingsAccountTaxIdsString !=
        null) {
      writer.writeStringValue(null,
          withSchedulePostRequestBodyDefaultSettingsInvoiceSettingsAccountTaxIdsString);
    } else if (string_ != null) {
      writer.writeCollectionOfPrimitiveValues<String?>(null, string_);
    }
  }
}
