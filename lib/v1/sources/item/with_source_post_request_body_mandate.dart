// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_source_post_request_body_mandate_acceptance.dart';
import './with_source_post_request_body_mandate_amount.dart';
import './with_source_post_request_body_mandate_interval.dart';
import './with_source_post_request_body_mandate_notification_method.dart';

/// auto generated
/// Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
class WithSourcePostRequestBodyMandate
    implements AdditionalDataHolder, Parsable {
  ///  The acceptance property
  WithSourcePostRequestBodyMandateAcceptance? acceptance;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  WithSourcePostRequestBodyMandateAmount? amount;

  ///  The currency property
  String? currency;

  ///  The interval property
  WithSourcePostRequestBodyMandateInterval? interval;

  ///  The notification_method property
  WithSourcePostRequestBodyMandateNotificationMethod? notificationMethod;

  /// Instantiates a new [WithSourcePostRequestBodyMandate] and sets the default values.
  WithSourcePostRequestBodyMandate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSourcePostRequestBodyMandate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSourcePostRequestBodyMandate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acceptance'] = (node) => acceptance =
        node.getObjectValue<WithSourcePostRequestBodyMandateAcceptance>(
            WithSourcePostRequestBodyMandateAcceptance
                .createFromDiscriminatorValue);
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            WithSourcePostRequestBodyMandateAmount>(
        WithSourcePostRequestBodyMandateAmount.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<WithSourcePostRequestBodyMandateInterval>(
            (stringValue) => WithSourcePostRequestBodyMandateInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['notification_method'] = (node) => notificationMethod =
        node.getEnumValue<WithSourcePostRequestBodyMandateNotificationMethod>(
            (stringValue) => WithSourcePostRequestBodyMandateNotificationMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithSourcePostRequestBodyMandateAcceptance>(
        'acceptance', acceptance);
    writer.writeObjectValue<WithSourcePostRequestBodyMandateAmount>(
        'amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeEnumValue<WithSourcePostRequestBodyMandateInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeEnumValue<WithSourcePostRequestBodyMandateNotificationMethod>(
        'notification_method', notificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
