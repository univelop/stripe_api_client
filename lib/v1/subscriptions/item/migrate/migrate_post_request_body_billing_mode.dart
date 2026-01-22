// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './migrate_post_request_body_billing_mode_flexible.dart';
import './migrate_post_request_body_billing_mode_type.dart';

/// auto generated
/// Controls how prorations and invoices for subscriptions are calculated and orchestrated.
class MigratePostRequestBodyBillingMode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The flexible property
  MigratePostRequestBodyBillingModeFlexible? flexible;

  ///  The type property
  MigratePostRequestBodyBillingModeType? type_;

  /// Instantiates a new [MigratePostRequestBodyBillingMode] and sets the default values.
  MigratePostRequestBodyBillingMode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MigratePostRequestBodyBillingMode createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MigratePostRequestBodyBillingMode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flexible'] = (node) => flexible = node.getObjectValue<
            MigratePostRequestBodyBillingModeFlexible>(
        MigratePostRequestBodyBillingModeFlexible.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<MigratePostRequestBodyBillingModeType>(
            (stringValue) => MigratePostRequestBodyBillingModeType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<MigratePostRequestBodyBillingModeFlexible>(
        'flexible', flexible);
    writer.writeEnumValue<MigratePostRequestBodyBillingModeType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
