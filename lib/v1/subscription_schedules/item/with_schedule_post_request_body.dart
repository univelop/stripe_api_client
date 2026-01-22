// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_default_settings.dart';
import './with_schedule_post_request_body_end_behavior.dart';
import './with_schedule_post_request_body_phases.dart';
import './with_schedule_post_request_body_proration_behavior.dart';

/// auto generated
class WithSchedulePostRequestBody implements Parsable {
  ///  Object representing the subscription schedule's default settings.
  WithSchedulePostRequestBodyDefaultSettings? defaultSettings;

  ///  Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
  WithSchedulePostRequestBodyEndBehavior? endBehavior;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase. Note that past phases can be omitted.
  Iterable<WithSchedulePostRequestBodyPhases>? phases;

  ///  If the update changes the billing configuration (item price, quantity, etc.) of the current phase, indicates how prorations from this change should be handled. The default value is `create_prorations`.
  WithSchedulePostRequestBodyProrationBehavior? prorationBehavior;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSchedulePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_settings'] = (node) => defaultSettings =
        node.getObjectValue<WithSchedulePostRequestBodyDefaultSettings>(
            WithSchedulePostRequestBodyDefaultSettings
                .createFromDiscriminatorValue);
    deserializerMap['end_behavior'] = (node) => endBehavior =
        node.getEnumValue<WithSchedulePostRequestBodyEndBehavior>(
            (stringValue) => WithSchedulePostRequestBodyEndBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['phases'] = (node) => phases =
        node.getCollectionOfObjectValues<WithSchedulePostRequestBodyPhases>(
            WithSchedulePostRequestBodyPhases.createFromDiscriminatorValue);
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<WithSchedulePostRequestBodyProrationBehavior>(
            (stringValue) => WithSchedulePostRequestBodyProrationBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithSchedulePostRequestBodyDefaultSettings>(
        'default_settings', defaultSettings);
    writer.writeEnumValue<WithSchedulePostRequestBodyEndBehavior>(
        'end_behavior', endBehavior, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeCollectionOfObjectValues<WithSchedulePostRequestBodyPhases>(
        'phases', phases);
    writer.writeEnumValue<WithSchedulePostRequestBodyProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
  }
}
