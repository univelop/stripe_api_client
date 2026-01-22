// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './source.dart';
import './topup_balance_transaction.dart';
import './topup_metadata.dart';
import './topup_object.dart';
import './topup_status.dart';

/// auto generated
/// To top up your Stripe balance, you create a top-up object. You can retrieveindividual top-ups, as well as list all top-ups. Top-ups are identified by aunique, random ID.Related guide: [Topping up your platform account](https://docs.stripe.com/connect/top-ups)
class Topup implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount transferred.
  int? amount;

  ///  ID of the balance transaction that describes the impact of this top-up on your account balance. May not be specified depending on status of top-up.
  TopupBalanceTransaction? balanceTransaction;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
  int? expectedAvailabilityDate;

  ///  Error code explaining reason for top-up failure if available (see [the errors section](https://docs.stripe.com/api#errors) for a list of codes).
  String? failureCode;

  ///  Message to user further explaining reason for top-up failure if available.
  String? failureMessage;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  TopupMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  TopupObject? object;

  ///  The source field is deprecated. It might not always be present in the API response.
  Source? source;

  ///  Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
  String? statementDescriptor;

  ///  The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
  TopupStatus? status;

  ///  A string that identifies this top-up as part of a group.
  String? transferGroup;

  /// Instantiates a new [Topup] and sets the default values.
  Topup() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Topup createFromDiscriminatorValue(ParseNode parseNode) {
    return Topup();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<TopupBalanceTransaction>(
            TopupBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expected_availability_date'] =
        (node) => expectedAvailabilityDate = node.getIntValue();
    deserializerMap['failure_code'] =
        (node) => failureCode = node.getStringValue();
    deserializerMap['failure_message'] =
        (node) => failureMessage = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<TopupMetadata>(
            TopupMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TopupObject>((stringValue) => TopupObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['source'] = (node) => source =
        node.getObjectValue<Source>(Source.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<TopupStatus>((stringValue) => TopupStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<TopupBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeIntValue(
        'expected_availability_date', expectedAvailabilityDate);
    writer.writeStringValue('failure_code', failureCode);
    writer.writeStringValue('failure_message', failureMessage);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<TopupMetadata>('metadata', metadata);
    writer.writeEnumValue<TopupObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<Source>('source', source);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeEnumValue<TopupStatus>('status', status, (e) => e?.value);
    writer.writeStringValue('transfer_group', transferGroup);
    writer.writeAdditionalData(additionalData);
  }
}
