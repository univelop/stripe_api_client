// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_capability_requirements_disabled_reason.dart';
import './account_requirements_alternative.dart';
import './account_requirements_error.dart';

/// auto generated
class AccountCapabilityRequirements implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Fields that are due and can be resolved by providing the corresponding alternative fields instead. Multiple alternatives can reference the same `original_fields_due`. When this happens, any of these alternatives can serve as a pathway for attempting to resolve the fields. Additionally, providing `original_fields_due` again also serves as a pathway for attempting to resolve the fields.
  Iterable<AccountRequirementsAlternative>? alternatives;

  ///  The date by which all required account information must be both submitted and verified. This includes fields listed in `currently_due` as well as those in `pending_verification`. If any required information is missing or unverified by this date, the account may be disabled. Note that `current_deadline` may change if additional `currently_due` requirements are requested.
  int? currentDeadline;

  ///  Fields that need to be resolved to keep the capability enabled. If not resolved by `current_deadline`, these fields will appear in `past_due` as well, and the capability is disabled.
  Iterable<String>? currentlyDue;

  ///  Description of why the capability is disabled. [Learn more about handling verification issues](https://docs.stripe.com/connect/handling-api-verification).
  AccountCapabilityRequirementsDisabledReason? disabledReason;

  ///  Details about validation and verification failures for `due` requirements that must be resolved.
  Iterable<AccountRequirementsError>? errors;

  ///  Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
  Iterable<String>? eventuallyDue;

  ///  Fields that haven't been resolved by `current_deadline`. These fields need to be resolved to enable the capability on the account.
  Iterable<String>? pastDue;

  ///  Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
  Iterable<String>? pendingVerification;

  /// Instantiates a new [AccountCapabilityRequirements] and sets the default values.
  AccountCapabilityRequirements() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountCapabilityRequirements createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountCapabilityRequirements();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alternatives'] = (node) => alternatives =
        node.getCollectionOfObjectValues<AccountRequirementsAlternative>(
            AccountRequirementsAlternative.createFromDiscriminatorValue);
    deserializerMap['current_deadline'] =
        (node) => currentDeadline = node.getIntValue();
    deserializerMap['currently_due'] =
        (node) => currentlyDue = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['disabled_reason'] = (node) => disabledReason =
        node.getEnumValue<AccountCapabilityRequirementsDisabledReason>(
            (stringValue) => AccountCapabilityRequirementsDisabledReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['errors'] = (node) => errors =
        node.getCollectionOfObjectValues<AccountRequirementsError>(
            AccountRequirementsError.createFromDiscriminatorValue);
    deserializerMap['eventually_due'] =
        (node) => eventuallyDue = node.getCollectionOfPrimitiveValues<String>();
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
    writer.writeCollectionOfObjectValues<AccountRequirementsAlternative>(
        'alternatives', alternatives);
    writer.writeIntValue('current_deadline', currentDeadline);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'currently_due', currentlyDue);
    writer.writeEnumValue<AccountCapabilityRequirementsDisabledReason>(
        'disabled_reason', disabledReason, (e) => e?.value);
    writer.writeCollectionOfObjectValues<AccountRequirementsError>(
        'errors', errors);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'eventually_due', eventuallyDue);
    writer.writeCollectionOfPrimitiveValues<String?>('past_due', pastDue);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'pending_verification', pendingVerification);
    writer.writeAdditionalData(additionalData);
  }
}
