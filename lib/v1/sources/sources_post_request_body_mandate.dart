// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sources_post_request_body_mandate_acceptance.dart';
import './sources_post_request_body_mandate_amount.dart';
import './sources_post_request_body_mandate_interval.dart';
import './sources_post_request_body_mandate_notification_method.dart';

/// auto generated
/// Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
class SourcesPostRequestBodyMandate implements AdditionalDataHolder, Parsable {
  ///  The acceptance property
  SourcesPostRequestBodyMandateAcceptance? acceptance;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  SourcesPostRequestBodyMandateAmount? amount;

  ///  The currency property
  String? currency;

  ///  The interval property
  SourcesPostRequestBodyMandateInterval? interval;

  ///  The notification_method property
  SourcesPostRequestBodyMandateNotificationMethod? notificationMethod;

  /// Instantiates a new [SourcesPostRequestBodyMandate] and sets the default values.
  SourcesPostRequestBodyMandate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBodyMandate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourcesPostRequestBodyMandate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acceptance'] = (node) => acceptance = node.getObjectValue<
            SourcesPostRequestBodyMandateAcceptance>(
        SourcesPostRequestBodyMandateAcceptance.createFromDiscriminatorValue);
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<SourcesPostRequestBodyMandateAmount>(
            SourcesPostRequestBodyMandateAmount.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<SourcesPostRequestBodyMandateInterval>(
            (stringValue) => SourcesPostRequestBodyMandateInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['notification_method'] = (node) => notificationMethod =
        node.getEnumValue<SourcesPostRequestBodyMandateNotificationMethod>(
            (stringValue) => SourcesPostRequestBodyMandateNotificationMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SourcesPostRequestBodyMandateAcceptance>(
        'acceptance', acceptance);
    writer.writeObjectValue<SourcesPostRequestBodyMandateAmount>(
        'amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeEnumValue<SourcesPostRequestBodyMandateInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeEnumValue<SourcesPostRequestBodyMandateNotificationMethod>(
        'notification_method', notificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
