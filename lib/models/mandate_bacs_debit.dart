// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './mandate_bacs_debit_network_status.dart';
import './mandate_bacs_debit_revocation_reason.dart';

/// auto generated
class MandateBacsDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The status of the mandate on the Bacs network. Can be one of `pending`, `revoked`, `refused`, or `accepted`.
  MandateBacsDebitNetworkStatus? networkStatus;

  ///  The unique reference identifying the mandate on the Bacs network.
  String? reference;

  ///  When the mandate is revoked on the Bacs network this field displays the reason for the revocation.
  MandateBacsDebitRevocationReason? revocationReason;

  ///  The URL that will contain the mandate that the customer has signed.
  String? url;

  /// Instantiates a new [MandateBacsDebit] and sets the default values.
  MandateBacsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MandateBacsDebit createFromDiscriminatorValue(ParseNode parseNode) {
    return MandateBacsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['network_status'] = (node) => networkStatus =
        node.getEnumValue<MandateBacsDebitNetworkStatus>((stringValue) =>
            MandateBacsDebitNetworkStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['revocation_reason'] = (node) => revocationReason =
        node.getEnumValue<MandateBacsDebitRevocationReason>((stringValue) =>
            MandateBacsDebitRevocationReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<MandateBacsDebitNetworkStatus>(
        'network_status', networkStatus, (e) => e?.value);
    writer.writeStringValue('reference', reference);
    writer.writeEnumValue<MandateBacsDebitRevocationReason>(
        'revocation_reason', revocationReason, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
