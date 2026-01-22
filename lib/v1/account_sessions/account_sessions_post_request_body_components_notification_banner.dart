// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_sessions_post_request_body_components_notification_banner_features.dart';

/// auto generated
class AccountSessionsPostRequestBodyComponentsNotificationBanner
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The features property
  AccountSessionsPostRequestBodyComponentsNotificationBannerFeatures? features;

  /// Instantiates a new [AccountSessionsPostRequestBodyComponentsNotificationBanner] and sets the default values.
  AccountSessionsPostRequestBodyComponentsNotificationBanner()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBodyComponentsNotificationBanner
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSessionsPostRequestBodyComponentsNotificationBanner();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            AccountSessionsPostRequestBodyComponentsNotificationBannerFeatures>(
        AccountSessionsPostRequestBodyComponentsNotificationBannerFeatures
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsNotificationBannerFeatures>(
        'features', features);
    writer.writeAdditionalData(additionalData);
  }
}
