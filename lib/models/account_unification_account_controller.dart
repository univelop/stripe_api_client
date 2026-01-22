// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_unification_account_controller_fees.dart';
import './account_unification_account_controller_losses.dart';
import './account_unification_account_controller_requirement_collection.dart';
import './account_unification_account_controller_stripe_dashboard.dart';
import './account_unification_account_controller_type.dart';

/// auto generated
class AccountUnificationAccountController
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fees property
  AccountUnificationAccountControllerFees? fees;

  ///  `true` if the Connect application retrieving the resource controls the account and can therefore exercise [platform controls](https://docs.stripe.com/connect/platform-controls-for-standard-accounts). Otherwise, this field is null.
  bool? isController;

  ///  The losses property
  AccountUnificationAccountControllerLosses? losses;

  ///  A value indicating responsibility for collecting requirements on this account. Only returned when the Connect application retrieving the resource controls the account.
  AccountUnificationAccountControllerRequirementCollection?
      requirementCollection;

  ///  The stripe_dashboard property
  AccountUnificationAccountControllerStripeDashboard? stripeDashboard;

  ///  The controller type. Can be `application`, if a Connect application controls the account, or `account`, if the account controls itself.
  AccountUnificationAccountControllerType? type_;

  /// Instantiates a new [AccountUnificationAccountController] and sets the default values.
  AccountUnificationAccountController() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountUnificationAccountController createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountUnificationAccountController();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fees'] = (node) => fees = node.getObjectValue<
            AccountUnificationAccountControllerFees>(
        AccountUnificationAccountControllerFees.createFromDiscriminatorValue);
    deserializerMap['is_controller'] =
        (node) => isController = node.getBoolValue();
    deserializerMap['losses'] = (node) => losses = node.getObjectValue<
            AccountUnificationAccountControllerLosses>(
        AccountUnificationAccountControllerLosses.createFromDiscriminatorValue);
    deserializerMap['requirement_collection'] = (node) =>
        requirementCollection = node.getEnumValue<
                AccountUnificationAccountControllerRequirementCollection>(
            (stringValue) =>
                AccountUnificationAccountControllerRequirementCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['stripe_dashboard'] = (node) => stripeDashboard =
        node.getObjectValue<AccountUnificationAccountControllerStripeDashboard>(
            AccountUnificationAccountControllerStripeDashboard
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<AccountUnificationAccountControllerType>(
            (stringValue) => AccountUnificationAccountControllerType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountUnificationAccountControllerFees>(
        'fees', fees);
    writer.writeBoolValue('is_controller', value: isController);
    writer.writeObjectValue<AccountUnificationAccountControllerLosses>(
        'losses', losses);
    writer.writeEnumValue<
            AccountUnificationAccountControllerRequirementCollection>(
        'requirement_collection', requirementCollection, (e) => e?.value);
    writer.writeObjectValue<AccountUnificationAccountControllerStripeDashboard>(
        'stripe_dashboard', stripeDashboard);
    writer.writeEnumValue<AccountUnificationAccountControllerType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
