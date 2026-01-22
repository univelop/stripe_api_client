// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './settlements_post_request_body_network.dart';

/// auto generated
class SettlementsPostRequestBody implements Parsable {
  ///  The Bank Identification Number reflecting this settlement record.
  String? bin;

  ///  The date that the transactions are cleared and posted to user's accounts.
  int? clearingDate;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The total interchange received as reimbursement for the transactions.
  int? interchangeFeesAmount;

  ///  The total net amount required to settle with the network.
  int? netTotalAmount;

  ///  The card network for this settlement. One of ["visa", "maestro"]
  SettlementsPostRequestBodyNetwork? network;

  ///  The Settlement Identification Number assigned by the network.
  String? networkSettlementIdentifier;

  ///  The total transaction amount reflected in this settlement.
  int? transactionAmount;

  ///  The total number of transactions reflected in this settlement.
  int? transactionCount;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SettlementsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SettlementsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bin'] = (node) => bin = node.getStringValue();
    deserializerMap['clearing_date'] =
        (node) => clearingDate = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['interchange_fees_amount'] =
        (node) => interchangeFeesAmount = node.getIntValue();
    deserializerMap['net_total_amount'] =
        (node) => netTotalAmount = node.getIntValue();
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<SettlementsPostRequestBodyNetwork>((stringValue) =>
            SettlementsPostRequestBodyNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['network_settlement_identifier'] =
        (node) => networkSettlementIdentifier = node.getStringValue();
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
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('interchange_fees_amount', interchangeFeesAmount);
    writer.writeIntValue('net_total_amount', netTotalAmount);
    writer.writeEnumValue<SettlementsPostRequestBodyNetwork>(
        'network', network, (e) => e?.value);
    writer.writeStringValue(
        'network_settlement_identifier', networkSettlementIdentifier);
    writer.writeIntValue('transaction_amount', transactionAmount);
    writer.writeIntValue('transaction_count', transactionCount);
  }
}
