// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './fee_refund_balance_transaction.dart';
import './fee_refund_fee.dart';
import './fee_refund_metadata.dart';
import './fee_refund_object.dart';

/// auto generated
/// `Application Fee Refund` objects allow you to refund an application fee thathas previously been created but not yet refunded. Funds will be refunded tothe Stripe account from which the fee was originally collected.Related guide: [Refunding application fees](https://docs.stripe.com/connect/destination-charges#refunding-app-fee)
class FeeRefund implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount, in cents (or local equivalent).
  int? amount;

  ///  Balance transaction that describes the impact on your account balance.
  FeeRefundBalanceTransaction? balanceTransaction;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  ID of the application fee that was refunded.
  FeeRefundFee? fee;

  ///  Unique identifier for the object.
  String? id;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  FeeRefundMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  FeeRefundObject? object;

  /// Instantiates a new [FeeRefund] and sets the default values.
  FeeRefund() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeeRefund createFromDiscriminatorValue(ParseNode parseNode) {
    return FeeRefund();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<FeeRefundBalanceTransaction>(
            FeeRefundBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['fee'] = (node) => fee = node.getObjectValue<FeeRefundFee>(
        FeeRefundFee.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<FeeRefundMetadata>(
            FeeRefundMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<FeeRefundObject>((stringValue) => FeeRefundObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<FeeRefundBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<FeeRefundFee>('fee', fee);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<FeeRefundMetadata>('metadata', metadata);
    writer.writeEnumValue<FeeRefundObject>('object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
