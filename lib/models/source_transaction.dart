// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './source_transaction_ach_credit_transfer_data.dart';
import './source_transaction_chf_credit_transfer_data.dart';
import './source_transaction_gbp_credit_transfer_data.dart';
import './source_transaction_object.dart';
import './source_transaction_paper_check_data.dart';
import './source_transaction_sepa_credit_transfer_data.dart';
import './source_transaction_type.dart';

/// auto generated
/// Some payment methods have no required amount that a customer must send.Customers can be instructed to send any amount, and it can be made up ofmultiple transactions. As such, sources can have multiple associatedtransactions.
class SourceTransaction implements AdditionalDataHolder, Parsable {
  ///  The ach_credit_transfer property
  SourceTransactionAchCreditTransferData? achCreditTransfer;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
  int? amount;

  ///  The chf_credit_transfer property
  SourceTransactionChfCreditTransferData? chfCreditTransfer;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The gbp_credit_transfer property
  SourceTransactionGbpCreditTransferData? gbpCreditTransfer;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  SourceTransactionObject? object;

  ///  The paper_check property
  SourceTransactionPaperCheckData? paperCheck;

  ///  The sepa_credit_transfer property
  SourceTransactionSepaCreditTransferData? sepaCreditTransfer;

  ///  The ID of the source this transaction is attached to.
  String? source;

  ///  The status of the transaction, one of `succeeded`, `pending`, or `failed`.
  String? status;

  ///  The type of source this transaction is attached to.
  SourceTransactionType? type_;

  /// Instantiates a new [SourceTransaction] and sets the default values.
  SourceTransaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTransaction createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach_credit_transfer'] = (node) => achCreditTransfer =
        node.getObjectValue<SourceTransactionAchCreditTransferData>(
            SourceTransactionAchCreditTransferData
                .createFromDiscriminatorValue);
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['chf_credit_transfer'] = (node) => chfCreditTransfer =
        node.getObjectValue<SourceTransactionChfCreditTransferData>(
            SourceTransactionChfCreditTransferData
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['gbp_credit_transfer'] = (node) => gbpCreditTransfer =
        node.getObjectValue<SourceTransactionGbpCreditTransferData>(
            SourceTransactionGbpCreditTransferData
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SourceTransactionObject>((stringValue) =>
            SourceTransactionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['paper_check'] = (node) => paperCheck =
        node.getObjectValue<SourceTransactionPaperCheckData>(
            SourceTransactionPaperCheckData.createFromDiscriminatorValue);
    deserializerMap['sepa_credit_transfer'] = (node) => sepaCreditTransfer =
        node.getObjectValue<SourceTransactionSepaCreditTransferData>(
            SourceTransactionSepaCreditTransferData
                .createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SourceTransactionType>((stringValue) =>
            SourceTransactionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SourceTransactionAchCreditTransferData>(
        'ach_credit_transfer', achCreditTransfer);
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<SourceTransactionChfCreditTransferData>(
        'chf_credit_transfer', chfCreditTransfer);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<SourceTransactionGbpCreditTransferData>(
        'gbp_credit_transfer', gbpCreditTransfer);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<SourceTransactionObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<SourceTransactionPaperCheckData>(
        'paper_check', paperCheck);
    writer.writeObjectValue<SourceTransactionSepaCreditTransferData>(
        'sepa_credit_transfer', sepaCreditTransfer);
    writer.writeStringValue('source', source);
    writer.writeStringValue('status', status);
    writer.writeEnumValue<SourceTransactionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
