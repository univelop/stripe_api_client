// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_force_capture_post_request_body_merchant_data_category.dart';

/// auto generated
/// Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
class CreateForceCapturePostRequestBodyMerchantData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The category property
  CreateForceCapturePostRequestBodyMerchantDataCategory? category;

  ///  The city property
  String? city;

  ///  The country property
  String? country;

  ///  The name property
  String? name;

  ///  The network_id property
  String? networkId;

  ///  The postal_code property
  String? postalCode;

  ///  The state property
  String? state;

  ///  The terminal_id property
  String? terminalId;

  ///  The url property
  String? url;

  /// Instantiates a new [CreateForceCapturePostRequestBodyMerchantData] and sets the default values.
  CreateForceCapturePostRequestBodyMerchantData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateForceCapturePostRequestBodyMerchantData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateForceCapturePostRequestBodyMerchantData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['category'] = (node) => category = node
        .getEnumValue<CreateForceCapturePostRequestBodyMerchantDataCategory>(
            (stringValue) =>
                CreateForceCapturePostRequestBodyMerchantDataCategory.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['city'] = (node) => city = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['network_id'] = (node) => networkId = node.getStringValue();
    deserializerMap['postal_code'] =
        (node) => postalCode = node.getStringValue();
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['terminal_id'] =
        (node) => terminalId = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<CreateForceCapturePostRequestBodyMerchantDataCategory>(
            'category', category, (e) => e?.value);
    writer.writeStringValue('city', city);
    writer.writeStringValue('country', country);
    writer.writeStringValue('name', name);
    writer.writeStringValue('network_id', networkId);
    writer.writeStringValue('postal_code', postalCode);
    writer.writeStringValue('state', state);
    writer.writeStringValue('terminal_id', terminalId);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
