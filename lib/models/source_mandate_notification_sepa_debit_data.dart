// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceMandateNotificationSepaDebitData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  SEPA creditor ID.
  String? creditorIdentifier;

  ///  Last 4 digits of the account number associated with the debit.
  String? last4;

  ///  Mandate reference associated with the debit.
  String? mandateReference;

  /// Instantiates a new [SourceMandateNotificationSepaDebitData] and sets the default values.
  SourceMandateNotificationSepaDebitData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceMandateNotificationSepaDebitData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceMandateNotificationSepaDebitData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['creditor_identifier'] =
        (node) => creditorIdentifier = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate_reference'] =
        (node) => mandateReference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('creditor_identifier', creditorIdentifier);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('mandate_reference', mandateReference);
    writer.writeAdditionalData(additionalData);
  }
}
