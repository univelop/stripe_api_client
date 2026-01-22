// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_connections_resource_account_number_details_identifier_type.dart';
import './bank_connections_resource_account_number_details_status.dart';
import './bank_connections_resource_account_number_details_supported_networks.dart';

/// auto generated
class BankConnectionsResourceAccountNumberDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  When the account number is expected to expire, if applicable.
  int? expectedExpiryDate;

  ///  The type of account number associated with the account.
  BankConnectionsResourceAccountNumberDetailsIdentifierType? identifierType;

  ///  Whether the account number is currently active and usable for transactions.
  BankConnectionsResourceAccountNumberDetailsStatus? status;

  ///  The payment networks that the account number can be used for.
  Iterable<BankConnectionsResourceAccountNumberDetailsSupportedNetworks>?
      supportedNetworks;

  /// Instantiates a new [BankConnectionsResourceAccountNumberDetails] and sets the default values.
  BankConnectionsResourceAccountNumberDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankConnectionsResourceAccountNumberDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BankConnectionsResourceAccountNumberDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expected_expiry_date'] =
        (node) => expectedExpiryDate = node.getIntValue();
    deserializerMap['identifier_type'] = (node) => identifierType =
        node.getEnumValue<
                BankConnectionsResourceAccountNumberDetailsIdentifierType>(
            (stringValue) =>
                BankConnectionsResourceAccountNumberDetailsIdentifierType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<BankConnectionsResourceAccountNumberDetailsStatus>(
            (stringValue) => BankConnectionsResourceAccountNumberDetailsStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['supported_networks'] = (node) => supportedNetworks =
        node.getCollectionOfEnumValues<
                BankConnectionsResourceAccountNumberDetailsSupportedNetworks>(
            (stringValue) =>
                BankConnectionsResourceAccountNumberDetailsSupportedNetworks
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('expected_expiry_date', expectedExpiryDate);
    writer.writeEnumValue<
            BankConnectionsResourceAccountNumberDetailsIdentifierType>(
        'identifier_type', identifierType, (e) => e?.value);
    writer.writeEnumValue<BankConnectionsResourceAccountNumberDetailsStatus>(
        'status', status, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            BankConnectionsResourceAccountNumberDetailsSupportedNetworks>(
        'supported_networks', supportedNetworks, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
