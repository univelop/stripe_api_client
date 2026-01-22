// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_requirements_error.dart';

/// auto generated
class ExternalAccountRequirements implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Fields that need to be resolved to keep the external account enabled. If not resolved by `current_deadline`, these fields will appear in `past_due` as well, and the account is disabled.
  Iterable<String>? currentlyDue;

  ///  Details about validation and verification failures for `due` requirements that must be resolved.
  Iterable<AccountRequirementsError>? errors;

  ///  Fields that haven't been resolved by `current_deadline`. These fields need to be resolved to enable the external account.
  Iterable<String>? pastDue;

  ///  Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
  Iterable<String>? pendingVerification;

  /// Instantiates a new [ExternalAccountRequirements] and sets the default values.
  ExternalAccountRequirements() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ExternalAccountRequirements createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ExternalAccountRequirements();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currently_due'] =
        (node) => currentlyDue = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['errors'] = (node) => errors =
        node.getCollectionOfObjectValues<AccountRequirementsError>(
            AccountRequirementsError.createFromDiscriminatorValue);
    deserializerMap['past_due'] =
        (node) => pastDue = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['pending_verification'] = (node) =>
        pendingVerification = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>(
        'currently_due', currentlyDue);
    writer.writeCollectionOfObjectValues<AccountRequirementsError>(
        'errors', errors);
    writer.writeCollectionOfPrimitiveValues<String?>('past_due', pastDue);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'pending_verification', pendingVerification);
    writer.writeAdditionalData(additionalData);
  }
}
