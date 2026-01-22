// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './settlement_metadata.dart';
import './settlement_network.dart';
import './settlement_object.dart';
import './settlement_status.dart';

/// auto generated
/// When a non-stripe BIN is used, any use of an [issued card](https://docs.stripe.com/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing `Settlement` object.
class Settlement implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Bank Identification Number reflecting this settlement record.
  String? bin;

  ///  The date that the transactions are cleared and posted to user's accounts.
  int? clearingDate;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Unique identifier for the object.
  String? id;

  ///  The total interchange received as reimbursement for the transactions.
  int? interchangeFeesAmount;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  SettlementMetadata? metadata;

  ///  The total net amount required to settle with the network.
  int? netTotalAmount;

  ///  The card network for this settlement report. One of ["visa", "maestro"]
  SettlementNetwork? network;

  ///  The total amount of fees owed to the network.
  int? networkFeesAmount;

  ///  The Settlement Identification Number assigned by the network.
  String? networkSettlementIdentifier;

  ///  String representing the object's type. Objects of the same type share the same value.
  SettlementObject? object;

  ///  One of `international` or `uk_national_net`.
  String? settlementService;

  ///  The current processing status of this settlement.
  SettlementStatus? status;

  ///  The total transaction amount reflected in this settlement.
  int? transactionAmount;

  ///  The total number of transactions reflected in this settlement.
  int? transactionCount;

  /// Instantiates a new [Settlement] and sets the default values.
  Settlement() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Settlement createFromDiscriminatorValue(ParseNode parseNode) {
    return Settlement();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bin'] = (node) => bin = node.getStringValue();
    deserializerMap['clearing_date'] =
        (node) => clearingDate = node.getIntValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['interchange_fees_amount'] =
        (node) => interchangeFeesAmount = node.getIntValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SettlementMetadata>(
            SettlementMetadata.createFromDiscriminatorValue);
    deserializerMap['net_total_amount'] =
        (node) => netTotalAmount = node.getIntValue();
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<SettlementNetwork>((stringValue) => SettlementNetwork
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['network_fees_amount'] =
        (node) => networkFeesAmount = node.getIntValue();
    deserializerMap['network_settlement_identifier'] =
        (node) => networkSettlementIdentifier = node.getStringValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<SettlementObject>((stringValue) => SettlementObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['settlement_service'] =
        (node) => settlementService = node.getStringValue();
    deserializerMap['status'] = (node) => status = node
        .getEnumValue<SettlementStatus>((stringValue) => SettlementStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['transaction_amount'] =
        (node) => transactionAmount = node.getIntValue();
    deserializerMap['transaction_count'] =
        (node) => transactionCount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bin', bin);
    writer.writeIntValue('clearing_date', clearingDate);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('id', id);
    writer.writeIntValue('interchange_fees_amount', interchangeFeesAmount);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<SettlementMetadata>('metadata', metadata);
    writer.writeIntValue('net_total_amount', netTotalAmount);
    writer.writeEnumValue<SettlementNetwork>(
        'network', network, (e) => e?.value);
    writer.writeIntValue('network_fees_amount', networkFeesAmount);
    writer.writeStringValue(
        'network_settlement_identifier', networkSettlementIdentifier);
    writer.writeEnumValue<SettlementObject>('object', object, (e) => e?.value);
    writer.writeStringValue('settlement_service', settlementService);
    writer.writeEnumValue<SettlementStatus>('status', status, (e) => e?.value);
    writer.writeIntValue('transaction_amount', transactionAmount);
    writer.writeIntValue('transaction_count', transactionCount);
    writer.writeAdditionalData(additionalData);
  }
}
