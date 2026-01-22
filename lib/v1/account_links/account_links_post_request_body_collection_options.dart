// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_links_post_request_body_collection_options_fields.dart';
import './account_links_post_request_body_collection_options_future_requirements.dart';

/// auto generated
/// Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
class AccountLinksPostRequestBodyCollectionOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fields property
  AccountLinksPostRequestBodyCollectionOptionsFields? fields;

  ///  The future_requirements property
  AccountLinksPostRequestBodyCollectionOptionsFutureRequirements?
      futureRequirements;

  /// Instantiates a new [AccountLinksPostRequestBodyCollectionOptions] and sets the default values.
  AccountLinksPostRequestBodyCollectionOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountLinksPostRequestBodyCollectionOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountLinksPostRequestBodyCollectionOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fields'] = (node) => fields =
        node.getEnumValue<AccountLinksPostRequestBodyCollectionOptionsFields>(
            (stringValue) => AccountLinksPostRequestBodyCollectionOptionsFields
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['future_requirements'] = (node) => futureRequirements =
        node.getEnumValue<
                AccountLinksPostRequestBodyCollectionOptionsFutureRequirements>(
            (stringValue) =>
                AccountLinksPostRequestBodyCollectionOptionsFutureRequirements
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AccountLinksPostRequestBodyCollectionOptionsFields>(
        'fields', fields, (e) => e?.value);
    writer.writeEnumValue<
            AccountLinksPostRequestBodyCollectionOptionsFutureRequirements>(
        'future_requirements', futureRequirements, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
