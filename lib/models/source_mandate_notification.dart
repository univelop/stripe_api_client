// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './source.dart';
import './source_mandate_notification_acss_debit_data.dart';
import './source_mandate_notification_bacs_debit_data.dart';
import './source_mandate_notification_object.dart';
import './source_mandate_notification_sepa_debit_data.dart';

/// auto generated
/// Source mandate notifications should be created when a notification related toa source mandate must be sent to the payer. They will trigger a webhook ordeliver an email to the customer.
class SourceMandateNotification implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SourceMandateNotificationAcssDebitData? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount associated with the mandate notification. The amount is expressed in the currency of the underlying source. Required if the notification type is `debit_initiated`.
  int? amount;

  ///  The bacs_debit property
  SourceMandateNotificationBacsDebitData? bacsDebit;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  SourceMandateNotificationObject? object;

  ///  The reason of the mandate notification. Valid reasons are `mandate_confirmed` or `debit_initiated`.
  String? reason;

  ///  The sepa_debit property
  SourceMandateNotificationSepaDebitData? sepaDebit;

  ///  `Source` objects allow you to accept a variety of payment methods. Theyrepresent a customer's payment instrument, and can be used with the Stripe APIjust like a `Card` object: once chargeable, they can be charged, or can beattached to customers.Stripe doesn't recommend using the deprecated [Sources API](https://docs.stripe.com/api/sources).We recommend that you adopt the [PaymentMethods API](https://docs.stripe.com/api/payment_methods).This newer API provides access to our latest features and payment method types.Related guides: [Sources API](https://docs.stripe.com/sources) and [Sources & Customers](https://docs.stripe.com/sources/customers).
  Source? source;

  ///  The status of the mandate notification. Valid statuses are `pending` or `submitted`.
  String? status;

  ///  The type of source this mandate notification is attached to. Should be the source type identifier code for the payment method, such as `three_d_secure`.
  String? type_;

  /// Instantiates a new [SourceMandateNotification] and sets the default values.
  SourceMandateNotification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceMandateNotification createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceMandateNotification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            SourceMandateNotificationAcssDebitData>(
        SourceMandateNotificationAcssDebitData.createFromDiscriminatorValue);
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node.getObjectValue<
            SourceMandateNotificationBacsDebitData>(
        SourceMandateNotificationBacsDebitData.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SourceMandateNotificationObject>((stringValue) =>
            SourceMandateNotificationObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reason'] = (node) => reason = node.getStringValue();
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getObjectValue<
            SourceMandateNotificationSepaDebitData>(
        SourceMandateNotificationSepaDebitData.createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source =
        node.getObjectValue<Source>(Source.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SourceMandateNotificationAcssDebitData>(
        'acss_debit', acssDebit);
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<SourceMandateNotificationBacsDebitData>(
        'bacs_debit', bacsDebit);
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<SourceMandateNotificationObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('reason', reason);
    writer.writeObjectValue<SourceMandateNotificationSepaDebitData>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<Source>('source', source);
    writer.writeStringValue('status', status);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
