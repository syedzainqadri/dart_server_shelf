// GENERATED CODE - DO NOT MODIFY BY HAND

part of prisma.client;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggregateSystemSettings _$AggregateSystemSettingsFromJson(
        Map<String, dynamic> json) =>
    AggregateSystemSettings(
      $count: json['_count'] == null
          ? null
          : SystemSettingsCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SystemSettingsAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SystemSettingsSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SystemSettingsMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SystemSettingsMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateSystemSettingsToJson(
        AggregateSystemSettings instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

SystemSettingsGroupByOutputType _$SystemSettingsGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemSettingsGroupByOutputType(
      id: json['id'] as int,
      name: json['name'] as String,
      value: json['value'] as String?,
      settingGroup: $enumDecode(_$SettingGroupEnumMap, json['settingGroup']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : SystemSettingsCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SystemSettingsAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SystemSettingsSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SystemSettingsMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SystemSettingsMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemSettingsGroupByOutputTypeToJson(
        SystemSettingsGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'settingGroup': _$SettingGroupEnumMap[instance.settingGroup]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$SettingGroupEnumMap = {
  SettingGroup.GENERAL: 'GENERAL',
  SettingGroup.EMAIL: 'EMAIL',
  SettingGroup.BRANDING: 'BRANDING',
  SettingGroup.SEO: 'SEO',
};

AggregateSystemUser _$AggregateSystemUserFromJson(Map<String, dynamic> json) =>
    AggregateSystemUser(
      $count: json['_count'] == null
          ? null
          : SystemUserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SystemUserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SystemUserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SystemUserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SystemUserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateSystemUserToJson(
        AggregateSystemUser instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

SystemUserGroupByOutputType _$SystemUserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemUserGroupByOutputType(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      salt: json['salt'] as String,
      role: $enumDecode(_$SystemRoleEnumMap, json['role']),
      email: json['email'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : SystemUserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SystemUserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SystemUserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SystemUserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SystemUserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemUserGroupByOutputTypeToJson(
        SystemUserGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'role': _$SystemRoleEnumMap[instance.role]!,
      'email': instance.email,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$SystemRoleEnumMap = {
  SystemRole.SUPERADMIN: 'SUPERADMIN',
  SystemRole.ADMIN: 'ADMIN',
  SystemRole.AREAMANAGER: 'AREAMANAGER',
  SystemRole.SALESMANAGER: 'SALESMANAGER',
  SystemRole.MANAGER: 'MANAGER',
  SystemRole.MARKETER: 'MARKETER',
};

AggregateSystemUserPermissions _$AggregateSystemUserPermissionsFromJson(
        Map<String, dynamic> json) =>
    AggregateSystemUserPermissions(
      $count: json['_count'] == null
          ? null
          : SystemUserPermissionsCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SystemUserPermissionsAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SystemUserPermissionsSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SystemUserPermissionsMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SystemUserPermissionsMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateSystemUserPermissionsToJson(
        AggregateSystemUserPermissions instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

SystemUserPermissionsGroupByOutputType
    _$SystemUserPermissionsGroupByOutputTypeFromJson(
            Map<String, dynamic> json) =>
        SystemUserPermissionsGroupByOutputType(
          id: json['id'] as int,
          moduleTitle: json['moduleTitle'] as String,
          canView: json['canView'] as bool,
          canAdd: json['canAdd'] as bool,
          canEdit: json['canEdit'] as bool,
          canDelete: json['canDelete'] as bool,
          createdAt: DateTime.parse(json['createdAt'] as String),
          updatedAt: DateTime.parse(json['updatedAt'] as String),
          systemUserId: json['systemUserId'] as int?,
          $count: json['_count'] == null
              ? null
              : SystemUserPermissionsCountAggregateOutputType.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : SystemUserPermissionsAvgAggregateOutputType.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : SystemUserPermissionsSumAggregateOutputType.fromJson(
                  json['_sum'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : SystemUserPermissionsMinAggregateOutputType.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : SystemUserPermissionsMaxAggregateOutputType.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SystemUserPermissionsGroupByOutputTypeToJson(
        SystemUserPermissionsGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moduleTitle': instance.moduleTitle,
      'canView': instance.canView,
      'canAdd': instance.canAdd,
      'canEdit': instance.canEdit,
      'canDelete': instance.canDelete,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'systemUserId': instance.systemUserId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateAgency _$AggregateAgencyFromJson(Map<String, dynamic> json) =>
    AggregateAgency(
      $count: json['_count'] == null
          ? null
          : AgencyCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AgencyAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AgencySumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AgencyMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AgencyMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateAgencyToJson(AggregateAgency instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AgencyGroupByOutputType _$AgencyGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AgencyGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      featuredImage: json['featuredImage'] as String?,
      logoImage: json['logoImage'] as String?,
      ownerName: json['ownerName'] as String?,
      ownerDesignation: json['ownerDesignation'] as String?,
      ownerMessage: json['ownerMessage'] as String?,
      ownerProfilePic: json['ownerProfilePic'] as String?,
      companyTitle: json['companyTitle'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      mobile: json['mobile'] as String?,
      landline: json['landline'] as String?,
      whatsapp: json['whatsapp'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
      $count: json['_count'] == null
          ? null
          : AgencyCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AgencyAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AgencySumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AgencyMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AgencyMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AgencyGroupByOutputTypeToJson(
        AgencyGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'featuredImage': instance.featuredImage,
      'logoImage': instance.logoImage,
      'ownerName': instance.ownerName,
      'ownerDesignation': instance.ownerDesignation,
      'ownerMessage': instance.ownerMessage,
      'ownerProfilePic': instance.ownerProfilePic,
      'companyTitle': instance.companyTitle,
      'country': instance.country,
      'email': instance.email,
      'website': instance.website,
      'address': instance.address,
      'description': instance.description,
      'mobile': instance.mobile,
      'landline': instance.landline,
      'whatsapp': instance.whatsapp,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateDeveloper _$AggregateDeveloperFromJson(Map<String, dynamic> json) =>
    AggregateDeveloper(
      $count: json['_count'] == null
          ? null
          : DeveloperCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : DeveloperAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : DeveloperSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : DeveloperMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : DeveloperMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateDeveloperToJson(AggregateDeveloper instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

DeveloperGroupByOutputType _$DeveloperGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DeveloperGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : DeveloperCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : DeveloperAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : DeveloperSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : DeveloperMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : DeveloperMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeveloperGroupByOutputTypeToJson(
        DeveloperGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateProject _$AggregateProjectFromJson(Map<String, dynamic> json) =>
    AggregateProject(
      $count: json['_count'] == null
          ? null
          : ProjectCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProjectAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProjectSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProjectMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProjectMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateProjectToJson(AggregateProject instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ProjectGroupByOutputType _$ProjectGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      address: json['address'] as String,
      featuredImage: json['featuredImage'] as String?,
      gallery: json['gallery'] as String?,
      locality: json['locality'] as String?,
      city: json['city'] as String?,
      price: json['price'] as String?,
      WalkthroughThreeD: json['WalkthroughThreeD'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      developerId: json['developerId'] as int?,
      categoryId: json['categoryId'] as int?,
      projectNearByPlaceId: json['projectNearByPlaceId'] as int?,
      $count: json['_count'] == null
          ? null
          : ProjectCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProjectAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProjectSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProjectMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProjectMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectGroupByOutputTypeToJson(
        ProjectGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'address': instance.address,
      'featuredImage': instance.featuredImage,
      'gallery': instance.gallery,
      'locality': instance.locality,
      'city': instance.city,
      'price': instance.price,
      'WalkthroughThreeD': instance.WalkthroughThreeD,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'developerId': instance.developerId,
      'categoryId': instance.categoryId,
      'projectNearByPlaceId': instance.projectNearByPlaceId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateFloorPlan _$AggregateFloorPlanFromJson(Map<String, dynamic> json) =>
    AggregateFloorPlan(
      $count: json['_count'] == null
          ? null
          : FloorPlanCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : FloorPlanAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : FloorPlanSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FloorPlanMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FloorPlanMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateFloorPlanToJson(AggregateFloorPlan instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

FloorPlanGroupByOutputType _$FloorPlanGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FloorPlanGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      floorPlanPath: json['floorPlanPath'] as String,
      projectId: json['projectId'] as int?,
      $count: json['_count'] == null
          ? null
          : FloorPlanCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : FloorPlanAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : FloorPlanSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FloorPlanMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FloorPlanMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloorPlanGroupByOutputTypeToJson(
        FloorPlanGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'floorPlanPath': instance.floorPlanPath,
      'projectId': instance.projectId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateProjectNearByPlace _$AggregateProjectNearByPlaceFromJson(
        Map<String, dynamic> json) =>
    AggregateProjectNearByPlace(
      $count: json['_count'] == null
          ? null
          : ProjectNearByPlaceCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProjectNearByPlaceAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProjectNearByPlaceSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProjectNearByPlaceMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProjectNearByPlaceMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateProjectNearByPlaceToJson(
        AggregateProjectNearByPlace instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ProjectNearByPlaceGroupByOutputType
    _$ProjectNearByPlaceGroupByOutputTypeFromJson(Map<String, dynamic> json) =>
        ProjectNearByPlaceGroupByOutputType(
          id: json['id'] as int,
          title: json['title'] as String,
          latitude: json['latitude'] as String,
          longitude: json['longitude'] as String,
          placeCategory: $enumDecode(
              _$ProjectNearByPlaceCategoryEnumMap, json['placeCategory']),
          $count: json['_count'] == null
              ? null
              : ProjectNearByPlaceCountAggregateOutputType.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : ProjectNearByPlaceAvgAggregateOutputType.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : ProjectNearByPlaceSumAggregateOutputType.fromJson(
                  json['_sum'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : ProjectNearByPlaceMinAggregateOutputType.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : ProjectNearByPlaceMaxAggregateOutputType.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProjectNearByPlaceGroupByOutputTypeToJson(
        ProjectNearByPlaceGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'placeCategory':
          _$ProjectNearByPlaceCategoryEnumMap[instance.placeCategory]!,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$ProjectNearByPlaceCategoryEnumMap = {
  ProjectNearByPlaceCategory.PROPERTY: 'PROPERTY',
  ProjectNearByPlaceCategory.SCHOOL: 'SCHOOL',
  ProjectNearByPlaceCategory.RESTAURANT: 'RESTAURANT',
  ProjectNearByPlaceCategory.HOSPITAL: 'HOSPITAL',
  ProjectNearByPlaceCategory.PARK: 'PARK',
};

AggregateSubscription _$AggregateSubscriptionFromJson(
        Map<String, dynamic> json) =>
    AggregateSubscription(
      $count: json['_count'] == null
          ? null
          : SubscriptionCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SubscriptionAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SubscriptionSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SubscriptionMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SubscriptionMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateSubscriptionToJson(
        AggregateSubscription instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

SubscriptionGroupByOutputType _$SubscriptionGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SubscriptionGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : SubscriptionCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SubscriptionAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SubscriptionSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SubscriptionMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SubscriptionMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionGroupByOutputTypeToJson(
        SubscriptionGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'description': instance.description,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateMembership _$AggregateMembershipFromJson(Map<String, dynamic> json) =>
    AggregateMembership(
      $count: json['_count'] == null
          ? null
          : MembershipCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : MembershipAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : MembershipSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : MembershipMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : MembershipMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateMembershipToJson(
        AggregateMembership instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

MembershipGroupByOutputType _$MembershipGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MembershipGroupByOutputType(
      id: json['id'] as int,
      qty: json['qty'] as int,
      subscriptionId: json['subscriptionId'] as int?,
      userId: json['userId'] as int?,
      $count: json['_count'] == null
          ? null
          : MembershipCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : MembershipAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : MembershipSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : MembershipMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : MembershipMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MembershipGroupByOutputTypeToJson(
        MembershipGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateUsers _$AggregateUsersFromJson(Map<String, dynamic> json) =>
    AggregateUsers(
      $count: json['_count'] == null
          ? null
          : UsersCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UsersAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UsersSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UsersMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UsersMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateUsersToJson(AggregateUsers instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

UsersGroupByOutputType _$UsersGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersGroupByOutputType(
      id: json['id'] as int,
      email: json['email'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      password: json['password'] as String?,
      fcmtoken: json['fcmtoken'] as String?,
      salt: json['salt'] as String?,
      preferencesEmailNotification:
          json['preferencesEmailNotification'] as bool,
      preferencesNewsletter: json['preferencesNewsletter'] as bool,
      preferencesAutomatedReport: json['preferencesAutomatedReport'] as bool,
      currency: json['currency'] as String,
      AreaUnit: $enumDecode(_$AreaSizeUnitEnumMap, json['AreaUnit']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : UsersCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UsersAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UsersSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UsersMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UsersMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersGroupByOutputTypeToJson(
        UsersGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': _$RoleEnumMap[instance.role]!,
      'password': instance.password,
      'fcmtoken': instance.fcmtoken,
      'salt': instance.salt,
      'preferencesEmailNotification': instance.preferencesEmailNotification,
      'preferencesNewsletter': instance.preferencesNewsletter,
      'preferencesAutomatedReport': instance.preferencesAutomatedReport,
      'currency': instance.currency,
      'AreaUnit': _$AreaSizeUnitEnumMap[instance.AreaUnit]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$RoleEnumMap = {
  Role.USER: 'USER',
  Role.ADMIN: 'ADMIN',
};

const _$AreaSizeUnitEnumMap = {
  AreaSizeUnit.MARLA: 'MARLA',
  AreaSizeUnit.SQFT: 'SQFT',
  AreaSizeUnit.SQMT: 'SQMT',
};

AggregateProfile _$AggregateProfileFromJson(Map<String, dynamic> json) =>
    AggregateProfile(
      $count: json['_count'] == null
          ? null
          : ProfileCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProfileAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProfileSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProfileMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProfileMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateProfileToJson(AggregateProfile instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ProfileGroupByOutputType _$ProfileGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProfileGroupByOutputType(
      id: json['id'] as int,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postCode: json['postCode'] as String?,
      phone: json['phone'] as String?,
      slug: json['slug'] as String?,
      images: json['images'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool,
      userId: json['userId'] as int?,
      $count: json['_count'] == null
          ? null
          : ProfileCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProfileAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProfileSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProfileMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProfileMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileGroupByOutputTypeToJson(
        ProfileGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postCode': instance.postCode,
      'phone': instance.phone,
      'slug': instance.slug,
      'images': instance.images,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'published': instance.published,
      'userId': instance.userId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregatePost _$AggregatePostFromJson(Map<String, dynamic> json) =>
    AggregatePost(
      $count: json['_count'] == null
          ? null
          : PostCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregatePostToJson(AggregatePost instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

PostGroupByOutputType _$PostGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      propertyNumber: json['propertyNumber'] as String?,
      description: json['description'] as String?,
      featuredImages: json['featuredImages'] as String?,
      galleryImages: json['galleryImages'] as String?,
      video: json['video'] as String,
      longDescription: json['longDescription'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      plotNumber: json['plotNumber'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      city: json['city'] as String?,
      area: json['area'] as String?,
      isInstallmentAvailable: json['isInstallmentAvailable'] as bool?,
      advanceAmount: (json['advanceAmount'] as num).toDouble(),
      noOfInstallments: json['noOfInstallments'] as int,
      monthlyInstallments: json['monthlyInstallments'] as int,
      readyForPossession: json['readyForPossession'] as bool?,
      areaSizeUnit:
          $enumDecodeNullable(_$AreaSizeUnitEnumMap, json['areaSizeUnit']),
      bedroooms: json['bedroooms'] as int,
      bathroom: json['bathroom'] as int,
      contactEmail: json['contactEmail'] as String,
      contactMobile: json['contactMobile'] as String,
      contactLandline: json['contactLandline'] as String,
      featureAndAmenities: json['featureAndAmenities'] as String,
      categoryId: json['categoryId'] as int,
      authorId: json['authorId'] as int,
      slugId: json['slugId'] as int,
      status: $enumDecode(_$PostStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : PostCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostGroupByOutputTypeToJson(
        PostGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'propertyNumber': instance.propertyNumber,
      'description': instance.description,
      'featuredImages': instance.featuredImages,
      'galleryImages': instance.galleryImages,
      'video': instance.video,
      'longDescription': instance.longDescription,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'plotNumber': instance.plotNumber,
      'price': instance.price,
      'city': instance.city,
      'area': instance.area,
      'isInstallmentAvailable': instance.isInstallmentAvailable,
      'advanceAmount': instance.advanceAmount,
      'noOfInstallments': instance.noOfInstallments,
      'monthlyInstallments': instance.monthlyInstallments,
      'readyForPossession': instance.readyForPossession,
      'areaSizeUnit': _$AreaSizeUnitEnumMap[instance.areaSizeUnit],
      'bedroooms': instance.bedroooms,
      'bathroom': instance.bathroom,
      'contactEmail': instance.contactEmail,
      'contactMobile': instance.contactMobile,
      'contactLandline': instance.contactLandline,
      'featureAndAmenities': instance.featureAndAmenities,
      'categoryId': instance.categoryId,
      'authorId': instance.authorId,
      'slugId': instance.slugId,
      'status': _$PostStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$PostStatusEnumMap = {
  PostStatus.DRAFT: 'DRAFT',
  PostStatus.PUBLISH: 'PUBLISH',
  PostStatus.PENDING: 'PENDING',
  PostStatus.DELETED: 'DELETED',
};

AggregatePostContact _$AggregatePostContactFromJson(
        Map<String, dynamic> json) =>
    AggregatePostContact(
      $count: json['_count'] == null
          ? null
          : PostContactCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostContactAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostContactSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostContactMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostContactMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregatePostContactToJson(
        AggregatePostContact instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

PostContactGroupByOutputType _$PostContactGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostContactGroupByOutputType(
      id: json['id'] as int,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      message: json['message'] as String?,
      ccontactPersonType:
          $enumDecode(_$CcontactPersonTypeEnumMap, json['ccontactPersonType']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int,
      $count: json['_count'] == null
          ? null
          : PostContactCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostContactAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostContactSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostContactMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostContactMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostContactGroupByOutputTypeToJson(
        PostContactGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'message': instance.message,
      'ccontactPersonType':
          _$CcontactPersonTypeEnumMap[instance.ccontactPersonType]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'postId': instance.postId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$CcontactPersonTypeEnumMap = {
  CcontactPersonType.BUYERTENAT: 'BUYERTENAT',
  CcontactPersonType.AGENT: 'AGENT',
  CcontactPersonType.OTHER: 'OTHER',
};

AggregateReview _$AggregateReviewFromJson(Map<String, dynamic> json) =>
    AggregateReview(
      $count: json['_count'] == null
          ? null
          : ReviewCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ReviewAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ReviewSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ReviewMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ReviewMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateReviewToJson(AggregateReview instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ReviewGroupByOutputType _$ReviewGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ReviewGroupByOutputType(
      id: json['id'] as int,
      name: json['name'] as String?,
      message: json['message'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int,
      postId: json['postId'] as int,
      $count: json['_count'] == null
          ? null
          : ReviewCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ReviewAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ReviewSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ReviewMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ReviewMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewGroupByOutputTypeToJson(
        ReviewGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
      'postId': instance.postId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregatePostComment _$AggregatePostCommentFromJson(
        Map<String, dynamic> json) =>
    AggregatePostComment(
      $count: json['_count'] == null
          ? null
          : PostCommentCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostCommentAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostCommentSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostCommentMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostCommentMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregatePostCommentToJson(
        AggregatePostComment instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

PostCommentGroupByOutputType _$PostCommentGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCommentGroupByOutputType(
      id: json['id'] as int,
      postReplyTitle: json['postReplyTitle'] as String,
      postReplyType: json['postReplyType'] as String,
      postReplyDescription: json['postReplyDescription'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int,
      userId: json['userId'] as int,
      $count: json['_count'] == null
          ? null
          : PostCommentCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostCommentAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostCommentSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostCommentMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostCommentMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostCommentGroupByOutputTypeToJson(
        PostCommentGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'postId': instance.postId,
      'userId': instance.userId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateWishlit _$AggregateWishlitFromJson(Map<String, dynamic> json) =>
    AggregateWishlit(
      $count: json['_count'] == null
          ? null
          : WishlitCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : WishlitAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : WishlitSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : WishlitMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : WishlitMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateWishlitToJson(AggregateWishlit instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

WishlitGroupByOutputType _$WishlitGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    WishlitGroupByOutputType(
      id: json['id'] as int,
      postId: json['postId'] as int,
      userId: json['userId'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : WishlitCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : WishlitAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : WishlitSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : WishlitMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : WishlitMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishlitGroupByOutputTypeToJson(
        WishlitGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregatePostMeta _$AggregatePostMetaFromJson(Map<String, dynamic> json) =>
    AggregatePostMeta(
      $count: json['_count'] == null
          ? null
          : PostMetaCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostMetaAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostMetaSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostMetaMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostMetaMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregatePostMetaToJson(AggregatePostMeta instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

PostMetaGroupByOutputType _$PostMetaGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaGroupByOutputType(
      id: json['id'] as int,
      metaTitle: json['metaTitle'] as String,
      metaDescription: json['metaDescription'] as String?,
      published: json['published'] as bool,
      postId: json['postId'] as int,
      $count: json['_count'] == null
          ? null
          : PostMetaCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PostMetaAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PostMetaSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PostMetaMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PostMetaMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostMetaGroupByOutputTypeToJson(
        PostMetaGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'published': instance.published,
      'postId': instance.postId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateAmenities _$AggregateAmenitiesFromJson(Map<String, dynamic> json) =>
    AggregateAmenities(
      $count: json['_count'] == null
          ? null
          : AmenitiesCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AmenitiesAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AmenitiesSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AmenitiesMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AmenitiesMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateAmenitiesToJson(AggregateAmenities instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AmenitiesGroupByOutputType _$AmenitiesGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AmenitiesGroupByOutputType(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool,
      categoryId: json['categoryId'] as int,
      $count: json['_count'] == null
          ? null
          : AmenitiesCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AmenitiesAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AmenitiesSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AmenitiesMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AmenitiesMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmenitiesGroupByOutputTypeToJson(
        AmenitiesGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'published': instance.published,
      'categoryId': instance.categoryId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateCategory _$AggregateCategoryFromJson(Map<String, dynamic> json) =>
    AggregateCategory(
      $count: json['_count'] == null
          ? null
          : CategoryCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : CategoryAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : CategorySumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : CategoryMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : CategoryMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateCategoryToJson(AggregateCategory instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

CategoryGroupByOutputType _$CategoryGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryGroupByOutputType(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      parentId: json['parentId'] as int?,
      published: json['published'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : CategoryCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : CategoryAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : CategorySumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : CategoryMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : CategoryMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryGroupByOutputTypeToJson(
        CategoryGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'parentId': instance.parentId,
      'published': instance.published,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateBlog _$AggregateBlogFromJson(Map<String, dynamic> json) =>
    AggregateBlog(
      $count: json['_count'] == null
          ? null
          : BlogCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : BlogAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : BlogSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : BlogMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : BlogMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateBlogToJson(AggregateBlog instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

BlogGroupByOutputType _$BlogGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool,
      blogCategoryId: json['blogCategoryId'] as int,
      slugId: json['slugId'] as int,
      authorId: json['authorId'] as int,
      $count: json['_count'] == null
          ? null
          : BlogCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : BlogAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : BlogSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : BlogMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : BlogMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogGroupByOutputTypeToJson(
        BlogGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'status': instance.status,
      'blogCategoryId': instance.blogCategoryId,
      'slugId': instance.slugId,
      'authorId': instance.authorId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateBlogCategory _$AggregateBlogCategoryFromJson(
        Map<String, dynamic> json) =>
    AggregateBlogCategory(
      $count: json['_count'] == null
          ? null
          : BlogCategoryCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : BlogCategoryAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : BlogCategorySumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : BlogCategoryMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : BlogCategoryMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateBlogCategoryToJson(
        AggregateBlogCategory instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

BlogCategoryGroupByOutputType _$BlogCategoryGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogCategoryGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String?,
      iconImage: json['iconImage'] as String?,
      image: json['image'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : BlogCategoryCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : BlogCategoryAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : BlogCategorySumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : BlogCategoryMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : BlogCategoryMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogCategoryGroupByOutputTypeToJson(
        BlogCategoryGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'iconImage': instance.iconImage,
      'image': instance.image,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregatePage _$AggregatePageFromJson(Map<String, dynamic> json) =>
    AggregatePage(
      $count: json['_count'] == null
          ? null
          : PageCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PageAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PageSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PageMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PageMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregatePageToJson(AggregatePage instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

PageGroupByOutputType _$PageGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PageGroupByOutputType(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool,
      slugId: json['slugId'] as int,
      $count: json['_count'] == null
          ? null
          : PageCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PageAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PageSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PageMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PageMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageGroupByOutputTypeToJson(
        PageGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'status': instance.status,
      'slugId': instance.slugId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateSlug _$AggregateSlugFromJson(Map<String, dynamic> json) =>
    AggregateSlug(
      $count: json['_count'] == null
          ? null
          : SlugCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SlugAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SlugSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SlugMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SlugMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateSlugToJson(AggregateSlug instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

SlugGroupByOutputType _$SlugGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SlugGroupByOutputType(
      id: json['id'] as int,
      slug: json['slug'] as String,
      type: $enumDecode(_$SlugTypeEnumMap, json['type']),
      referenceId: json['referenceId'] as int,
      $count: json['_count'] == null
          ? null
          : SlugCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : SlugAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : SlugSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : SlugMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : SlugMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SlugGroupByOutputTypeToJson(
        SlugGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': _$SlugTypeEnumMap[instance.type]!,
      'referenceId': instance.referenceId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$SlugTypeEnumMap = {
  SlugType.POST: 'POST',
  SlugType.POSTCATEGORY: 'POSTCATEGORY',
  SlugType.PAGE: 'PAGE',
  SlugType.BLOG: 'BLOG',
  SlugType.BLOGCATEGORY: 'BLOGCATEGORY',
};

AggregateForumPost _$AggregateForumPostFromJson(Map<String, dynamic> json) =>
    AggregateForumPost(
      $count: json['_count'] == null
          ? null
          : ForumPostCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ForumPostAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ForumPostSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ForumPostMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ForumPostMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateForumPostToJson(AggregateForumPost instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ForumPostGroupByOutputType _$ForumPostGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostGroupByOutputType(
      id: json['id'] as int,
      postTitle: json['postTitle'] as String,
      postType: json['postType'] as String,
      postDescription: json['postDescription'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int,
      $count: json['_count'] == null
          ? null
          : ForumPostCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ForumPostAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ForumPostSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ForumPostMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ForumPostMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForumPostGroupByOutputTypeToJson(
        ForumPostGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postTitle': instance.postTitle,
      'postType': instance.postType,
      'postDescription': instance.postDescription,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateForumPostComment _$AggregateForumPostCommentFromJson(
        Map<String, dynamic> json) =>
    AggregateForumPostComment(
      $count: json['_count'] == null
          ? null
          : ForumPostCommentCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ForumPostCommentAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ForumPostCommentSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ForumPostCommentMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ForumPostCommentMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateForumPostCommentToJson(
        AggregateForumPostComment instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ForumPostCommentGroupByOutputType _$ForumPostCommentGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostCommentGroupByOutputType(
      id: json['id'] as int,
      postReplyTitle: json['postReplyTitle'] as String,
      postReplyType: json['postReplyType'] as String,
      postReplyDescription: json['postReplyDescription'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      forumPostId: json['forumPostId'] as int,
      userId: json['userId'] as int,
      $count: json['_count'] == null
          ? null
          : ForumPostCommentCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ForumPostCommentAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ForumPostCommentSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ForumPostCommentMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ForumPostCommentMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForumPostCommentGroupByOutputTypeToJson(
        ForumPostCommentGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'forumPostId': instance.forumPostId,
      'userId': instance.userId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateFaqGroup _$AggregateFaqGroupFromJson(Map<String, dynamic> json) =>
    AggregateFaqGroup(
      $count: json['_count'] == null
          ? null
          : FaqGroupCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : FaqGroupAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : FaqGroupSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FaqGroupMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FaqGroupMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateFaqGroupToJson(AggregateFaqGroup instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

FaqGroupGroupByOutputType _$FaqGroupGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqGroupGroupByOutputType(
      id: json['id'] as int,
      faqGroupName: json['faqGroupName'] as String,
      sortOrder: json['sortOrder'] as int,
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : FaqGroupCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : FaqGroupAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : FaqGroupSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FaqGroupMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FaqGroupMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FaqGroupGroupByOutputTypeToJson(
        FaqGroupGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'faqGroupName': instance.faqGroupName,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateFaqQuestionAnswer _$AggregateFaqQuestionAnswerFromJson(
        Map<String, dynamic> json) =>
    AggregateFaqQuestionAnswer(
      $count: json['_count'] == null
          ? null
          : FaqQuestionAnswerCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : FaqQuestionAnswerAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : FaqQuestionAnswerSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FaqQuestionAnswerMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FaqQuestionAnswerMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateFaqQuestionAnswerToJson(
        AggregateFaqQuestionAnswer instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

FaqQuestionAnswerGroupByOutputType _$FaqQuestionAnswerGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqQuestionAnswerGroupByOutputType(
      id: json['id'] as int,
      qusestion: json['qusestion'] as String,
      answer: json['answer'] as String,
      sortOrder: json['sortOrder'] as int,
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      faqGroupId: json['faqGroupId'] as int,
      $count: json['_count'] == null
          ? null
          : FaqQuestionAnswerCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : FaqQuestionAnswerAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : FaqQuestionAnswerSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FaqQuestionAnswerMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FaqQuestionAnswerMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FaqQuestionAnswerGroupByOutputTypeToJson(
        FaqQuestionAnswerGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qusestion': instance.qusestion,
      'answer': instance.answer,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'faqGroupId': instance.faqGroupId,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

SystemSettingsCountAggregateOutputType
    _$SystemSettingsCountAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        SystemSettingsCountAggregateOutputType(
          id: json['id'] as int,
          name: json['name'] as int,
          value: json['value'] as int,
          settingGroup: json['settingGroup'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$SystemSettingsCountAggregateOutputTypeToJson(
        SystemSettingsCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'settingGroup': instance.settingGroup,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

SystemSettingsAvgAggregateOutputType
    _$SystemSettingsAvgAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        SystemSettingsAvgAggregateOutputType(
          id: (json['id'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$SystemSettingsAvgAggregateOutputTypeToJson(
        SystemSettingsAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SystemSettingsSumAggregateOutputType
    _$SystemSettingsSumAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        SystemSettingsSumAggregateOutputType(
          id: json['id'] as int?,
        );

Map<String, dynamic> _$SystemSettingsSumAggregateOutputTypeToJson(
        SystemSettingsSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SystemSettingsMinAggregateOutputType
    _$SystemSettingsMinAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        SystemSettingsMinAggregateOutputType(
          id: json['id'] as int?,
          name: json['name'] as String?,
          value: json['value'] as String?,
          settingGroup:
              $enumDecodeNullable(_$SettingGroupEnumMap, json['settingGroup']),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$SystemSettingsMinAggregateOutputTypeToJson(
        SystemSettingsMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'settingGroup': _$SettingGroupEnumMap[instance.settingGroup],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SystemSettingsMaxAggregateOutputType
    _$SystemSettingsMaxAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        SystemSettingsMaxAggregateOutputType(
          id: json['id'] as int?,
          name: json['name'] as String?,
          value: json['value'] as String?,
          settingGroup:
              $enumDecodeNullable(_$SettingGroupEnumMap, json['settingGroup']),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$SystemSettingsMaxAggregateOutputTypeToJson(
        SystemSettingsMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'settingGroup': _$SettingGroupEnumMap[instance.settingGroup],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SystemUserCountOutputType _$SystemUserCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemUserCountOutputType(
      systemUserPermissions: json['systemUserPermissions'] as int,
    );

Map<String, dynamic> _$SystemUserCountOutputTypeToJson(
        SystemUserCountOutputType instance) =>
    <String, dynamic>{
      'systemUserPermissions': instance.systemUserPermissions,
    };

SystemUserCountAggregateOutputType _$SystemUserCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemUserCountAggregateOutputType(
      id: json['id'] as int,
      username: json['username'] as int,
      password: json['password'] as int,
      salt: json['salt'] as int,
      role: json['role'] as int,
      email: json['email'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$SystemUserCountAggregateOutputTypeToJson(
        SystemUserCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'role': instance.role,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

SystemUserAvgAggregateOutputType _$SystemUserAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemUserAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SystemUserAvgAggregateOutputTypeToJson(
        SystemUserAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SystemUserSumAggregateOutputType _$SystemUserSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemUserSumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$SystemUserSumAggregateOutputTypeToJson(
        SystemUserSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SystemUserMinAggregateOutputType _$SystemUserMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemUserMinAggregateOutputType(
      id: json['id'] as int?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
      role: $enumDecodeNullable(_$SystemRoleEnumMap, json['role']),
      email: json['email'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SystemUserMinAggregateOutputTypeToJson(
        SystemUserMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'role': _$SystemRoleEnumMap[instance.role],
      'email': instance.email,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SystemUserMaxAggregateOutputType _$SystemUserMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SystemUserMaxAggregateOutputType(
      id: json['id'] as int?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
      role: $enumDecodeNullable(_$SystemRoleEnumMap, json['role']),
      email: json['email'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SystemUserMaxAggregateOutputTypeToJson(
        SystemUserMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'role': _$SystemRoleEnumMap[instance.role],
      'email': instance.email,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SystemUserPermissionsCountAggregateOutputType
    _$SystemUserPermissionsCountAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        SystemUserPermissionsCountAggregateOutputType(
          id: json['id'] as int,
          moduleTitle: json['moduleTitle'] as int,
          canView: json['canView'] as int,
          canAdd: json['canAdd'] as int,
          canEdit: json['canEdit'] as int,
          canDelete: json['canDelete'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          systemUserId: json['systemUserId'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$SystemUserPermissionsCountAggregateOutputTypeToJson(
        SystemUserPermissionsCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moduleTitle': instance.moduleTitle,
      'canView': instance.canView,
      'canAdd': instance.canAdd,
      'canEdit': instance.canEdit,
      'canDelete': instance.canDelete,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'systemUserId': instance.systemUserId,
      '_all': instance.$all,
    };

SystemUserPermissionsAvgAggregateOutputType
    _$SystemUserPermissionsAvgAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        SystemUserPermissionsAvgAggregateOutputType(
          id: (json['id'] as num?)?.toDouble(),
          systemUserId: (json['systemUserId'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$SystemUserPermissionsAvgAggregateOutputTypeToJson(
        SystemUserPermissionsAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'systemUserId': instance.systemUserId,
    };

SystemUserPermissionsSumAggregateOutputType
    _$SystemUserPermissionsSumAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        SystemUserPermissionsSumAggregateOutputType(
          id: json['id'] as int?,
          systemUserId: json['systemUserId'] as int?,
        );

Map<String, dynamic> _$SystemUserPermissionsSumAggregateOutputTypeToJson(
        SystemUserPermissionsSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'systemUserId': instance.systemUserId,
    };

SystemUserPermissionsMinAggregateOutputType
    _$SystemUserPermissionsMinAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        SystemUserPermissionsMinAggregateOutputType(
          id: json['id'] as int?,
          moduleTitle: json['moduleTitle'] as String?,
          canView: json['canView'] as bool?,
          canAdd: json['canAdd'] as bool?,
          canEdit: json['canEdit'] as bool?,
          canDelete: json['canDelete'] as bool?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          systemUserId: json['systemUserId'] as int?,
        );

Map<String, dynamic> _$SystemUserPermissionsMinAggregateOutputTypeToJson(
        SystemUserPermissionsMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moduleTitle': instance.moduleTitle,
      'canView': instance.canView,
      'canAdd': instance.canAdd,
      'canEdit': instance.canEdit,
      'canDelete': instance.canDelete,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'systemUserId': instance.systemUserId,
    };

SystemUserPermissionsMaxAggregateOutputType
    _$SystemUserPermissionsMaxAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        SystemUserPermissionsMaxAggregateOutputType(
          id: json['id'] as int?,
          moduleTitle: json['moduleTitle'] as String?,
          canView: json['canView'] as bool?,
          canAdd: json['canAdd'] as bool?,
          canEdit: json['canEdit'] as bool?,
          canDelete: json['canDelete'] as bool?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          systemUserId: json['systemUserId'] as int?,
        );

Map<String, dynamic> _$SystemUserPermissionsMaxAggregateOutputTypeToJson(
        SystemUserPermissionsMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moduleTitle': instance.moduleTitle,
      'canView': instance.canView,
      'canAdd': instance.canAdd,
      'canEdit': instance.canEdit,
      'canDelete': instance.canDelete,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'systemUserId': instance.systemUserId,
    };

AgencyCountAggregateOutputType _$AgencyCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AgencyCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      featuredImage: json['featuredImage'] as int,
      logoImage: json['logoImage'] as int,
      ownerName: json['ownerName'] as int,
      ownerDesignation: json['ownerDesignation'] as int,
      ownerMessage: json['ownerMessage'] as int,
      ownerProfilePic: json['ownerProfilePic'] as int,
      companyTitle: json['companyTitle'] as int,
      country: json['country'] as int,
      email: json['email'] as int,
      website: json['website'] as int,
      address: json['address'] as int,
      description: json['description'] as int,
      mobile: json['mobile'] as int,
      landline: json['landline'] as int,
      whatsapp: json['whatsapp'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      userId: json['userId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$AgencyCountAggregateOutputTypeToJson(
        AgencyCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'featuredImage': instance.featuredImage,
      'logoImage': instance.logoImage,
      'ownerName': instance.ownerName,
      'ownerDesignation': instance.ownerDesignation,
      'ownerMessage': instance.ownerMessage,
      'ownerProfilePic': instance.ownerProfilePic,
      'companyTitle': instance.companyTitle,
      'country': instance.country,
      'email': instance.email,
      'website': instance.website,
      'address': instance.address,
      'description': instance.description,
      'mobile': instance.mobile,
      'landline': instance.landline,
      'whatsapp': instance.whatsapp,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
      '_all': instance.$all,
    };

AgencyAvgAggregateOutputType _$AgencyAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AgencyAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AgencyAvgAggregateOutputTypeToJson(
        AgencyAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

AgencySumAggregateOutputType _$AgencySumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AgencySumAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$AgencySumAggregateOutputTypeToJson(
        AgencySumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

AgencyMinAggregateOutputType _$AgencyMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AgencyMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      featuredImage: json['featuredImage'] as String?,
      logoImage: json['logoImage'] as String?,
      ownerName: json['ownerName'] as String?,
      ownerDesignation: json['ownerDesignation'] as String?,
      ownerMessage: json['ownerMessage'] as String?,
      ownerProfilePic: json['ownerProfilePic'] as String?,
      companyTitle: json['companyTitle'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      mobile: json['mobile'] as String?,
      landline: json['landline'] as String?,
      whatsapp: json['whatsapp'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$AgencyMinAggregateOutputTypeToJson(
        AgencyMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'featuredImage': instance.featuredImage,
      'logoImage': instance.logoImage,
      'ownerName': instance.ownerName,
      'ownerDesignation': instance.ownerDesignation,
      'ownerMessage': instance.ownerMessage,
      'ownerProfilePic': instance.ownerProfilePic,
      'companyTitle': instance.companyTitle,
      'country': instance.country,
      'email': instance.email,
      'website': instance.website,
      'address': instance.address,
      'description': instance.description,
      'mobile': instance.mobile,
      'landline': instance.landline,
      'whatsapp': instance.whatsapp,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userId': instance.userId,
    };

AgencyMaxAggregateOutputType _$AgencyMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AgencyMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      featuredImage: json['featuredImage'] as String?,
      logoImage: json['logoImage'] as String?,
      ownerName: json['ownerName'] as String?,
      ownerDesignation: json['ownerDesignation'] as String?,
      ownerMessage: json['ownerMessage'] as String?,
      ownerProfilePic: json['ownerProfilePic'] as String?,
      companyTitle: json['companyTitle'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      mobile: json['mobile'] as String?,
      landline: json['landline'] as String?,
      whatsapp: json['whatsapp'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$AgencyMaxAggregateOutputTypeToJson(
        AgencyMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'featuredImage': instance.featuredImage,
      'logoImage': instance.logoImage,
      'ownerName': instance.ownerName,
      'ownerDesignation': instance.ownerDesignation,
      'ownerMessage': instance.ownerMessage,
      'ownerProfilePic': instance.ownerProfilePic,
      'companyTitle': instance.companyTitle,
      'country': instance.country,
      'email': instance.email,
      'website': instance.website,
      'address': instance.address,
      'description': instance.description,
      'mobile': instance.mobile,
      'landline': instance.landline,
      'whatsapp': instance.whatsapp,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userId': instance.userId,
    };

DeveloperCountOutputType _$DeveloperCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DeveloperCountOutputType(
      projects: json['projects'] as int,
    );

Map<String, dynamic> _$DeveloperCountOutputTypeToJson(
        DeveloperCountOutputType instance) =>
    <String, dynamic>{
      'projects': instance.projects,
    };

DeveloperCountAggregateOutputType _$DeveloperCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DeveloperCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$DeveloperCountAggregateOutputTypeToJson(
        DeveloperCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

DeveloperAvgAggregateOutputType _$DeveloperAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DeveloperAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DeveloperAvgAggregateOutputTypeToJson(
        DeveloperAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DeveloperSumAggregateOutputType _$DeveloperSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DeveloperSumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$DeveloperSumAggregateOutputTypeToJson(
        DeveloperSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DeveloperMinAggregateOutputType _$DeveloperMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DeveloperMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DeveloperMinAggregateOutputTypeToJson(
        DeveloperMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

DeveloperMaxAggregateOutputType _$DeveloperMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DeveloperMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DeveloperMaxAggregateOutputTypeToJson(
        DeveloperMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ProjectCountOutputType _$ProjectCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectCountOutputType(
      floorplans: json['floorplans'] as int,
    );

Map<String, dynamic> _$ProjectCountOutputTypeToJson(
        ProjectCountOutputType instance) =>
    <String, dynamic>{
      'floorplans': instance.floorplans,
    };

ProjectCountAggregateOutputType _$ProjectCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      address: json['address'] as int,
      featuredImage: json['featuredImage'] as int,
      gallery: json['gallery'] as int,
      locality: json['locality'] as int,
      city: json['city'] as int,
      price: json['price'] as int,
      WalkthroughThreeD: json['WalkthroughThreeD'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      developerId: json['developerId'] as int,
      categoryId: json['categoryId'] as int,
      projectNearByPlaceId: json['projectNearByPlaceId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$ProjectCountAggregateOutputTypeToJson(
        ProjectCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'address': instance.address,
      'featuredImage': instance.featuredImage,
      'gallery': instance.gallery,
      'locality': instance.locality,
      'city': instance.city,
      'price': instance.price,
      'WalkthroughThreeD': instance.WalkthroughThreeD,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'developerId': instance.developerId,
      'categoryId': instance.categoryId,
      'projectNearByPlaceId': instance.projectNearByPlaceId,
      '_all': instance.$all,
    };

ProjectAvgAggregateOutputType _$ProjectAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      developerId: (json['developerId'] as num?)?.toDouble(),
      categoryId: (json['categoryId'] as num?)?.toDouble(),
      projectNearByPlaceId: (json['projectNearByPlaceId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProjectAvgAggregateOutputTypeToJson(
        ProjectAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developerId': instance.developerId,
      'categoryId': instance.categoryId,
      'projectNearByPlaceId': instance.projectNearByPlaceId,
    };

ProjectSumAggregateOutputType _$ProjectSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectSumAggregateOutputType(
      id: json['id'] as int?,
      developerId: json['developerId'] as int?,
      categoryId: json['categoryId'] as int?,
      projectNearByPlaceId: json['projectNearByPlaceId'] as int?,
    );

Map<String, dynamic> _$ProjectSumAggregateOutputTypeToJson(
        ProjectSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developerId': instance.developerId,
      'categoryId': instance.categoryId,
      'projectNearByPlaceId': instance.projectNearByPlaceId,
    };

ProjectMinAggregateOutputType _$ProjectMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      address: json['address'] as String?,
      featuredImage: json['featuredImage'] as String?,
      gallery: json['gallery'] as String?,
      locality: json['locality'] as String?,
      city: json['city'] as String?,
      price: json['price'] as String?,
      WalkthroughThreeD: json['WalkthroughThreeD'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      developerId: json['developerId'] as int?,
      categoryId: json['categoryId'] as int?,
      projectNearByPlaceId: json['projectNearByPlaceId'] as int?,
    );

Map<String, dynamic> _$ProjectMinAggregateOutputTypeToJson(
        ProjectMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'address': instance.address,
      'featuredImage': instance.featuredImage,
      'gallery': instance.gallery,
      'locality': instance.locality,
      'city': instance.city,
      'price': instance.price,
      'WalkthroughThreeD': instance.WalkthroughThreeD,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'developerId': instance.developerId,
      'categoryId': instance.categoryId,
      'projectNearByPlaceId': instance.projectNearByPlaceId,
    };

ProjectMaxAggregateOutputType _$ProjectMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      address: json['address'] as String?,
      featuredImage: json['featuredImage'] as String?,
      gallery: json['gallery'] as String?,
      locality: json['locality'] as String?,
      city: json['city'] as String?,
      price: json['price'] as String?,
      WalkthroughThreeD: json['WalkthroughThreeD'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      developerId: json['developerId'] as int?,
      categoryId: json['categoryId'] as int?,
      projectNearByPlaceId: json['projectNearByPlaceId'] as int?,
    );

Map<String, dynamic> _$ProjectMaxAggregateOutputTypeToJson(
        ProjectMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'address': instance.address,
      'featuredImage': instance.featuredImage,
      'gallery': instance.gallery,
      'locality': instance.locality,
      'city': instance.city,
      'price': instance.price,
      'WalkthroughThreeD': instance.WalkthroughThreeD,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'developerId': instance.developerId,
      'categoryId': instance.categoryId,
      'projectNearByPlaceId': instance.projectNearByPlaceId,
    };

FloorPlanCountAggregateOutputType _$FloorPlanCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FloorPlanCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      floorPlanPath: json['floorPlanPath'] as int,
      projectId: json['projectId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$FloorPlanCountAggregateOutputTypeToJson(
        FloorPlanCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'floorPlanPath': instance.floorPlanPath,
      'projectId': instance.projectId,
      '_all': instance.$all,
    };

FloorPlanAvgAggregateOutputType _$FloorPlanAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FloorPlanAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      projectId: (json['projectId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FloorPlanAvgAggregateOutputTypeToJson(
        FloorPlanAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
    };

FloorPlanSumAggregateOutputType _$FloorPlanSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FloorPlanSumAggregateOutputType(
      id: json['id'] as int?,
      projectId: json['projectId'] as int?,
    );

Map<String, dynamic> _$FloorPlanSumAggregateOutputTypeToJson(
        FloorPlanSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
    };

FloorPlanMinAggregateOutputType _$FloorPlanMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FloorPlanMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      floorPlanPath: json['floorPlanPath'] as String?,
      projectId: json['projectId'] as int?,
    );

Map<String, dynamic> _$FloorPlanMinAggregateOutputTypeToJson(
        FloorPlanMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'floorPlanPath': instance.floorPlanPath,
      'projectId': instance.projectId,
    };

FloorPlanMaxAggregateOutputType _$FloorPlanMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FloorPlanMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      floorPlanPath: json['floorPlanPath'] as String?,
      projectId: json['projectId'] as int?,
    );

Map<String, dynamic> _$FloorPlanMaxAggregateOutputTypeToJson(
        FloorPlanMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'floorPlanPath': instance.floorPlanPath,
      'projectId': instance.projectId,
    };

ProjectNearByPlaceCountOutputType _$ProjectNearByPlaceCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProjectNearByPlaceCountOutputType(
      projects: json['projects'] as int,
    );

Map<String, dynamic> _$ProjectNearByPlaceCountOutputTypeToJson(
        ProjectNearByPlaceCountOutputType instance) =>
    <String, dynamic>{
      'projects': instance.projects,
    };

ProjectNearByPlaceCountAggregateOutputType
    _$ProjectNearByPlaceCountAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ProjectNearByPlaceCountAggregateOutputType(
          id: json['id'] as int,
          title: json['title'] as int,
          latitude: json['latitude'] as int,
          longitude: json['longitude'] as int,
          placeCategory: json['placeCategory'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$ProjectNearByPlaceCountAggregateOutputTypeToJson(
        ProjectNearByPlaceCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'placeCategory': instance.placeCategory,
      '_all': instance.$all,
    };

ProjectNearByPlaceAvgAggregateOutputType
    _$ProjectNearByPlaceAvgAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ProjectNearByPlaceAvgAggregateOutputType(
          id: (json['id'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$ProjectNearByPlaceAvgAggregateOutputTypeToJson(
        ProjectNearByPlaceAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ProjectNearByPlaceSumAggregateOutputType
    _$ProjectNearByPlaceSumAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ProjectNearByPlaceSumAggregateOutputType(
          id: json['id'] as int?,
        );

Map<String, dynamic> _$ProjectNearByPlaceSumAggregateOutputTypeToJson(
        ProjectNearByPlaceSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ProjectNearByPlaceMinAggregateOutputType
    _$ProjectNearByPlaceMinAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ProjectNearByPlaceMinAggregateOutputType(
          id: json['id'] as int?,
          title: json['title'] as String?,
          latitude: json['latitude'] as String?,
          longitude: json['longitude'] as String?,
          placeCategory: $enumDecodeNullable(
              _$ProjectNearByPlaceCategoryEnumMap, json['placeCategory']),
        );

Map<String, dynamic> _$ProjectNearByPlaceMinAggregateOutputTypeToJson(
        ProjectNearByPlaceMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'placeCategory':
          _$ProjectNearByPlaceCategoryEnumMap[instance.placeCategory],
    };

ProjectNearByPlaceMaxAggregateOutputType
    _$ProjectNearByPlaceMaxAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ProjectNearByPlaceMaxAggregateOutputType(
          id: json['id'] as int?,
          title: json['title'] as String?,
          latitude: json['latitude'] as String?,
          longitude: json['longitude'] as String?,
          placeCategory: $enumDecodeNullable(
              _$ProjectNearByPlaceCategoryEnumMap, json['placeCategory']),
        );

Map<String, dynamic> _$ProjectNearByPlaceMaxAggregateOutputTypeToJson(
        ProjectNearByPlaceMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'placeCategory':
          _$ProjectNearByPlaceCategoryEnumMap[instance.placeCategory],
    };

SubscriptionCountOutputType _$SubscriptionCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SubscriptionCountOutputType(
      membership: json['membership'] as int,
    );

Map<String, dynamic> _$SubscriptionCountOutputTypeToJson(
        SubscriptionCountOutputType instance) =>
    <String, dynamic>{
      'membership': instance.membership,
    };

SubscriptionCountAggregateOutputType
    _$SubscriptionCountAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        SubscriptionCountAggregateOutputType(
          id: json['id'] as int,
          title: json['title'] as int,
          amount: json['amount'] as int,
          description: json['description'] as int,
          status: json['status'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$SubscriptionCountAggregateOutputTypeToJson(
        SubscriptionCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'description': instance.description,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

SubscriptionAvgAggregateOutputType _$SubscriptionAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SubscriptionAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SubscriptionAvgAggregateOutputTypeToJson(
        SubscriptionAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
    };

SubscriptionSumAggregateOutputType _$SubscriptionSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SubscriptionSumAggregateOutputType(
      id: json['id'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SubscriptionSumAggregateOutputTypeToJson(
        SubscriptionSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
    };

SubscriptionMinAggregateOutputType _$SubscriptionMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SubscriptionMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      description: json['description'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SubscriptionMinAggregateOutputTypeToJson(
        SubscriptionMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'description': instance.description,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SubscriptionMaxAggregateOutputType _$SubscriptionMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SubscriptionMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      description: json['description'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SubscriptionMaxAggregateOutputTypeToJson(
        SubscriptionMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'description': instance.description,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

MembershipCountAggregateOutputType _$MembershipCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MembershipCountAggregateOutputType(
      id: json['id'] as int,
      qty: json['qty'] as int,
      subscriptionId: json['subscriptionId'] as int,
      userId: json['userId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$MembershipCountAggregateOutputTypeToJson(
        MembershipCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
      '_all': instance.$all,
    };

MembershipAvgAggregateOutputType _$MembershipAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MembershipAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      qty: (json['qty'] as num?)?.toDouble(),
      subscriptionId: (json['subscriptionId'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MembershipAvgAggregateOutputTypeToJson(
        MembershipAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
    };

MembershipSumAggregateOutputType _$MembershipSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MembershipSumAggregateOutputType(
      id: json['id'] as int?,
      qty: json['qty'] as int?,
      subscriptionId: json['subscriptionId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$MembershipSumAggregateOutputTypeToJson(
        MembershipSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
    };

MembershipMinAggregateOutputType _$MembershipMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MembershipMinAggregateOutputType(
      id: json['id'] as int?,
      qty: json['qty'] as int?,
      subscriptionId: json['subscriptionId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$MembershipMinAggregateOutputTypeToJson(
        MembershipMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
    };

MembershipMaxAggregateOutputType _$MembershipMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MembershipMaxAggregateOutputType(
      id: json['id'] as int?,
      qty: json['qty'] as int?,
      subscriptionId: json['subscriptionId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$MembershipMaxAggregateOutputTypeToJson(
        MembershipMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
    };

UsersCountOutputType _$UsersCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersCountOutputType(
      posts: json['posts'] as int,
      Profile: json['Profile'] as int,
      reviews: json['reviews'] as int,
      wishlists: json['wishlists'] as int,
      formPosts: json['formPosts'] as int,
      formPostComments: json['formPostComments'] as int,
      postComments: json['postComments'] as int,
      blogs: json['blogs'] as int,
      agency: json['agency'] as int,
      membership: json['membership'] as int,
    );

Map<String, dynamic> _$UsersCountOutputTypeToJson(
        UsersCountOutputType instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'Profile': instance.Profile,
      'reviews': instance.reviews,
      'wishlists': instance.wishlists,
      'formPosts': instance.formPosts,
      'formPostComments': instance.formPostComments,
      'postComments': instance.postComments,
      'blogs': instance.blogs,
      'agency': instance.agency,
      'membership': instance.membership,
    };

UsersCountAggregateOutputType _$UsersCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersCountAggregateOutputType(
      id: json['id'] as int,
      email: json['email'] as int,
      role: json['role'] as int,
      password: json['password'] as int,
      fcmtoken: json['fcmtoken'] as int,
      salt: json['salt'] as int,
      preferencesEmailNotification: json['preferencesEmailNotification'] as int,
      preferencesNewsletter: json['preferencesNewsletter'] as int,
      preferencesAutomatedReport: json['preferencesAutomatedReport'] as int,
      currency: json['currency'] as int,
      AreaUnit: json['AreaUnit'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$UsersCountAggregateOutputTypeToJson(
        UsersCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'password': instance.password,
      'fcmtoken': instance.fcmtoken,
      'salt': instance.salt,
      'preferencesEmailNotification': instance.preferencesEmailNotification,
      'preferencesNewsletter': instance.preferencesNewsletter,
      'preferencesAutomatedReport': instance.preferencesAutomatedReport,
      'currency': instance.currency,
      'AreaUnit': instance.AreaUnit,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

UsersAvgAggregateOutputType _$UsersAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UsersAvgAggregateOutputTypeToJson(
        UsersAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UsersSumAggregateOutputType _$UsersSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersSumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$UsersSumAggregateOutputTypeToJson(
        UsersSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UsersMinAggregateOutputType _$UsersMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersMinAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      password: json['password'] as String?,
      fcmtoken: json['fcmtoken'] as String?,
      salt: json['salt'] as String?,
      preferencesEmailNotification:
          json['preferencesEmailNotification'] as bool?,
      preferencesNewsletter: json['preferencesNewsletter'] as bool?,
      preferencesAutomatedReport: json['preferencesAutomatedReport'] as bool?,
      currency: json['currency'] as String?,
      AreaUnit: $enumDecodeNullable(_$AreaSizeUnitEnumMap, json['AreaUnit']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UsersMinAggregateOutputTypeToJson(
        UsersMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': _$RoleEnumMap[instance.role],
      'password': instance.password,
      'fcmtoken': instance.fcmtoken,
      'salt': instance.salt,
      'preferencesEmailNotification': instance.preferencesEmailNotification,
      'preferencesNewsletter': instance.preferencesNewsletter,
      'preferencesAutomatedReport': instance.preferencesAutomatedReport,
      'currency': instance.currency,
      'AreaUnit': _$AreaSizeUnitEnumMap[instance.AreaUnit],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

UsersMaxAggregateOutputType _$UsersMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersMaxAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      password: json['password'] as String?,
      fcmtoken: json['fcmtoken'] as String?,
      salt: json['salt'] as String?,
      preferencesEmailNotification:
          json['preferencesEmailNotification'] as bool?,
      preferencesNewsletter: json['preferencesNewsletter'] as bool?,
      preferencesAutomatedReport: json['preferencesAutomatedReport'] as bool?,
      currency: json['currency'] as String?,
      AreaUnit: $enumDecodeNullable(_$AreaSizeUnitEnumMap, json['AreaUnit']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UsersMaxAggregateOutputTypeToJson(
        UsersMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': _$RoleEnumMap[instance.role],
      'password': instance.password,
      'fcmtoken': instance.fcmtoken,
      'salt': instance.salt,
      'preferencesEmailNotification': instance.preferencesEmailNotification,
      'preferencesNewsletter': instance.preferencesNewsletter,
      'preferencesAutomatedReport': instance.preferencesAutomatedReport,
      'currency': instance.currency,
      'AreaUnit': _$AreaSizeUnitEnumMap[instance.AreaUnit],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ProfileCountAggregateOutputType _$ProfileCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProfileCountAggregateOutputType(
      id: json['id'] as int,
      firstName: json['firstName'] as int,
      lastName: json['lastName'] as int,
      addressLine1: json['addressLine1'] as int,
      addressLine2: json['addressLine2'] as int,
      city: json['city'] as int,
      state: json['state'] as int,
      country: json['country'] as int,
      postCode: json['postCode'] as int,
      phone: json['phone'] as int,
      slug: json['slug'] as int,
      images: json['images'] as int,
      longitude: json['longitude'] as int,
      latitude: json['latitude'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      published: json['published'] as int,
      userId: json['userId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$ProfileCountAggregateOutputTypeToJson(
        ProfileCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postCode': instance.postCode,
      'phone': instance.phone,
      'slug': instance.slug,
      'images': instance.images,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'published': instance.published,
      'userId': instance.userId,
      '_all': instance.$all,
    };

ProfileAvgAggregateOutputType _$ProfileAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProfileAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProfileAvgAggregateOutputTypeToJson(
        ProfileAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

ProfileSumAggregateOutputType _$ProfileSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProfileSumAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$ProfileSumAggregateOutputTypeToJson(
        ProfileSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

ProfileMinAggregateOutputType _$ProfileMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProfileMinAggregateOutputType(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postCode: json['postCode'] as String?,
      phone: json['phone'] as String?,
      slug: json['slug'] as String?,
      images: json['images'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$ProfileMinAggregateOutputTypeToJson(
        ProfileMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postCode': instance.postCode,
      'phone': instance.phone,
      'slug': instance.slug,
      'images': instance.images,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'published': instance.published,
      'userId': instance.userId,
    };

ProfileMaxAggregateOutputType _$ProfileMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProfileMaxAggregateOutputType(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postCode: json['postCode'] as String?,
      phone: json['phone'] as String?,
      slug: json['slug'] as String?,
      images: json['images'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$ProfileMaxAggregateOutputTypeToJson(
        ProfileMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postCode': instance.postCode,
      'phone': instance.phone,
      'slug': instance.slug,
      'images': instance.images,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'published': instance.published,
      'userId': instance.userId,
    };

PostCountOutputType _$PostCountOutputTypeFromJson(Map<String, dynamic> json) =>
    PostCountOutputType(
      postmeta: json['postmeta'] as int,
      postContact: json['postContact'] as int,
      review: json['review'] as int,
      wishlist: json['wishlist'] as int,
      postComment: json['postComment'] as int,
    );

Map<String, dynamic> _$PostCountOutputTypeToJson(
        PostCountOutputType instance) =>
    <String, dynamic>{
      'postmeta': instance.postmeta,
      'postContact': instance.postContact,
      'review': instance.review,
      'wishlist': instance.wishlist,
      'postComment': instance.postComment,
    };

PostCountAggregateOutputType _$PostCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      propertyNumber: json['propertyNumber'] as int,
      description: json['description'] as int,
      featuredImages: json['featuredImages'] as int,
      galleryImages: json['galleryImages'] as int,
      video: json['video'] as int,
      longDescription: json['longDescription'] as int,
      longitude: json['longitude'] as int,
      latitude: json['latitude'] as int,
      content: json['content'] as int,
      plotNumber: json['plotNumber'] as int,
      price: json['price'] as int,
      city: json['city'] as int,
      area: json['area'] as int,
      isInstallmentAvailable: json['isInstallmentAvailable'] as int,
      advanceAmount: json['advanceAmount'] as int,
      noOfInstallments: json['noOfInstallments'] as int,
      monthlyInstallments: json['monthlyInstallments'] as int,
      readyForPossession: json['readyForPossession'] as int,
      areaSizeUnit: json['areaSizeUnit'] as int,
      bedroooms: json['bedroooms'] as int,
      bathroom: json['bathroom'] as int,
      contactEmail: json['contactEmail'] as int,
      contactMobile: json['contactMobile'] as int,
      contactLandline: json['contactLandline'] as int,
      featureAndAmenities: json['featureAndAmenities'] as int,
      categoryId: json['categoryId'] as int,
      authorId: json['authorId'] as int,
      slugId: json['slugId'] as int,
      status: json['status'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$PostCountAggregateOutputTypeToJson(
        PostCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'propertyNumber': instance.propertyNumber,
      'description': instance.description,
      'featuredImages': instance.featuredImages,
      'galleryImages': instance.galleryImages,
      'video': instance.video,
      'longDescription': instance.longDescription,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'plotNumber': instance.plotNumber,
      'price': instance.price,
      'city': instance.city,
      'area': instance.area,
      'isInstallmentAvailable': instance.isInstallmentAvailable,
      'advanceAmount': instance.advanceAmount,
      'noOfInstallments': instance.noOfInstallments,
      'monthlyInstallments': instance.monthlyInstallments,
      'readyForPossession': instance.readyForPossession,
      'areaSizeUnit': instance.areaSizeUnit,
      'bedroooms': instance.bedroooms,
      'bathroom': instance.bathroom,
      'contactEmail': instance.contactEmail,
      'contactMobile': instance.contactMobile,
      'contactLandline': instance.contactLandline,
      'featureAndAmenities': instance.featureAndAmenities,
      'categoryId': instance.categoryId,
      'authorId': instance.authorId,
      'slugId': instance.slugId,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

PostAvgAggregateOutputType _$PostAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      advanceAmount: (json['advanceAmount'] as num?)?.toDouble(),
      noOfInstallments: (json['noOfInstallments'] as num?)?.toDouble(),
      monthlyInstallments: (json['monthlyInstallments'] as num?)?.toDouble(),
      bedroooms: (json['bedroooms'] as num?)?.toDouble(),
      bathroom: (json['bathroom'] as num?)?.toDouble(),
      categoryId: (json['categoryId'] as num?)?.toDouble(),
      authorId: (json['authorId'] as num?)?.toDouble(),
      slugId: (json['slugId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PostAvgAggregateOutputTypeToJson(
        PostAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'advanceAmount': instance.advanceAmount,
      'noOfInstallments': instance.noOfInstallments,
      'monthlyInstallments': instance.monthlyInstallments,
      'bedroooms': instance.bedroooms,
      'bathroom': instance.bathroom,
      'categoryId': instance.categoryId,
      'authorId': instance.authorId,
      'slugId': instance.slugId,
    };

PostSumAggregateOutputType _$PostSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostSumAggregateOutputType(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      advanceAmount: (json['advanceAmount'] as num?)?.toDouble(),
      noOfInstallments: json['noOfInstallments'] as int?,
      monthlyInstallments: json['monthlyInstallments'] as int?,
      bedroooms: json['bedroooms'] as int?,
      bathroom: json['bathroom'] as int?,
      categoryId: json['categoryId'] as int?,
      authorId: json['authorId'] as int?,
      slugId: json['slugId'] as int?,
    );

Map<String, dynamic> _$PostSumAggregateOutputTypeToJson(
        PostSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'advanceAmount': instance.advanceAmount,
      'noOfInstallments': instance.noOfInstallments,
      'monthlyInstallments': instance.monthlyInstallments,
      'bedroooms': instance.bedroooms,
      'bathroom': instance.bathroom,
      'categoryId': instance.categoryId,
      'authorId': instance.authorId,
      'slugId': instance.slugId,
    };

PostMinAggregateOutputType _$PostMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      propertyNumber: json['propertyNumber'] as String?,
      description: json['description'] as String?,
      featuredImages: json['featuredImages'] as String?,
      galleryImages: json['galleryImages'] as String?,
      video: json['video'] as String?,
      longDescription: json['longDescription'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      plotNumber: json['plotNumber'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      city: json['city'] as String?,
      area: json['area'] as String?,
      isInstallmentAvailable: json['isInstallmentAvailable'] as bool?,
      advanceAmount: (json['advanceAmount'] as num?)?.toDouble(),
      noOfInstallments: json['noOfInstallments'] as int?,
      monthlyInstallments: json['monthlyInstallments'] as int?,
      readyForPossession: json['readyForPossession'] as bool?,
      areaSizeUnit:
          $enumDecodeNullable(_$AreaSizeUnitEnumMap, json['areaSizeUnit']),
      bedroooms: json['bedroooms'] as int?,
      bathroom: json['bathroom'] as int?,
      contactEmail: json['contactEmail'] as String?,
      contactMobile: json['contactMobile'] as String?,
      contactLandline: json['contactLandline'] as String?,
      featureAndAmenities: json['featureAndAmenities'] as String?,
      categoryId: json['categoryId'] as int?,
      authorId: json['authorId'] as int?,
      slugId: json['slugId'] as int?,
      status: $enumDecodeNullable(_$PostStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PostMinAggregateOutputTypeToJson(
        PostMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'propertyNumber': instance.propertyNumber,
      'description': instance.description,
      'featuredImages': instance.featuredImages,
      'galleryImages': instance.galleryImages,
      'video': instance.video,
      'longDescription': instance.longDescription,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'plotNumber': instance.plotNumber,
      'price': instance.price,
      'city': instance.city,
      'area': instance.area,
      'isInstallmentAvailable': instance.isInstallmentAvailable,
      'advanceAmount': instance.advanceAmount,
      'noOfInstallments': instance.noOfInstallments,
      'monthlyInstallments': instance.monthlyInstallments,
      'readyForPossession': instance.readyForPossession,
      'areaSizeUnit': _$AreaSizeUnitEnumMap[instance.areaSizeUnit],
      'bedroooms': instance.bedroooms,
      'bathroom': instance.bathroom,
      'contactEmail': instance.contactEmail,
      'contactMobile': instance.contactMobile,
      'contactLandline': instance.contactLandline,
      'featureAndAmenities': instance.featureAndAmenities,
      'categoryId': instance.categoryId,
      'authorId': instance.authorId,
      'slugId': instance.slugId,
      'status': _$PostStatusEnumMap[instance.status],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

PostMaxAggregateOutputType _$PostMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      propertyNumber: json['propertyNumber'] as String?,
      description: json['description'] as String?,
      featuredImages: json['featuredImages'] as String?,
      galleryImages: json['galleryImages'] as String?,
      video: json['video'] as String?,
      longDescription: json['longDescription'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      plotNumber: json['plotNumber'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      city: json['city'] as String?,
      area: json['area'] as String?,
      isInstallmentAvailable: json['isInstallmentAvailable'] as bool?,
      advanceAmount: (json['advanceAmount'] as num?)?.toDouble(),
      noOfInstallments: json['noOfInstallments'] as int?,
      monthlyInstallments: json['monthlyInstallments'] as int?,
      readyForPossession: json['readyForPossession'] as bool?,
      areaSizeUnit:
          $enumDecodeNullable(_$AreaSizeUnitEnumMap, json['areaSizeUnit']),
      bedroooms: json['bedroooms'] as int?,
      bathroom: json['bathroom'] as int?,
      contactEmail: json['contactEmail'] as String?,
      contactMobile: json['contactMobile'] as String?,
      contactLandline: json['contactLandline'] as String?,
      featureAndAmenities: json['featureAndAmenities'] as String?,
      categoryId: json['categoryId'] as int?,
      authorId: json['authorId'] as int?,
      slugId: json['slugId'] as int?,
      status: $enumDecodeNullable(_$PostStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PostMaxAggregateOutputTypeToJson(
        PostMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'propertyNumber': instance.propertyNumber,
      'description': instance.description,
      'featuredImages': instance.featuredImages,
      'galleryImages': instance.galleryImages,
      'video': instance.video,
      'longDescription': instance.longDescription,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'plotNumber': instance.plotNumber,
      'price': instance.price,
      'city': instance.city,
      'area': instance.area,
      'isInstallmentAvailable': instance.isInstallmentAvailable,
      'advanceAmount': instance.advanceAmount,
      'noOfInstallments': instance.noOfInstallments,
      'monthlyInstallments': instance.monthlyInstallments,
      'readyForPossession': instance.readyForPossession,
      'areaSizeUnit': _$AreaSizeUnitEnumMap[instance.areaSizeUnit],
      'bedroooms': instance.bedroooms,
      'bathroom': instance.bathroom,
      'contactEmail': instance.contactEmail,
      'contactMobile': instance.contactMobile,
      'contactLandline': instance.contactLandline,
      'featureAndAmenities': instance.featureAndAmenities,
      'categoryId': instance.categoryId,
      'authorId': instance.authorId,
      'slugId': instance.slugId,
      'status': _$PostStatusEnumMap[instance.status],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

PostContactCountAggregateOutputType
    _$PostContactCountAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        PostContactCountAggregateOutputType(
          id: json['id'] as int,
          name: json['name'] as int,
          email: json['email'] as int,
          phone: json['phone'] as int,
          message: json['message'] as int,
          ccontactPersonType: json['ccontactPersonType'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          postId: json['postId'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$PostContactCountAggregateOutputTypeToJson(
        PostContactCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'message': instance.message,
      'ccontactPersonType': instance.ccontactPersonType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'postId': instance.postId,
      '_all': instance.$all,
    };

PostContactAvgAggregateOutputType _$PostContactAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostContactAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      postId: (json['postId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PostContactAvgAggregateOutputTypeToJson(
        PostContactAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
    };

PostContactSumAggregateOutputType _$PostContactSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostContactSumAggregateOutputType(
      id: json['id'] as int?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostContactSumAggregateOutputTypeToJson(
        PostContactSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
    };

PostContactMinAggregateOutputType _$PostContactMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostContactMinAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      message: json['message'] as String?,
      ccontactPersonType: $enumDecodeNullable(
          _$CcontactPersonTypeEnumMap, json['ccontactPersonType']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostContactMinAggregateOutputTypeToJson(
        PostContactMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'message': instance.message,
      'ccontactPersonType':
          _$CcontactPersonTypeEnumMap[instance.ccontactPersonType],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'postId': instance.postId,
    };

PostContactMaxAggregateOutputType _$PostContactMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostContactMaxAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      message: json['message'] as String?,
      ccontactPersonType: $enumDecodeNullable(
          _$CcontactPersonTypeEnumMap, json['ccontactPersonType']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostContactMaxAggregateOutputTypeToJson(
        PostContactMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'message': instance.message,
      'ccontactPersonType':
          _$CcontactPersonTypeEnumMap[instance.ccontactPersonType],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'postId': instance.postId,
    };

ReviewCountAggregateOutputType _$ReviewCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ReviewCountAggregateOutputType(
      id: json['id'] as int,
      name: json['name'] as int,
      message: json['message'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      userId: json['userId'] as int,
      postId: json['postId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$ReviewCountAggregateOutputTypeToJson(
        ReviewCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
      'postId': instance.postId,
      '_all': instance.$all,
    };

ReviewAvgAggregateOutputType _$ReviewAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ReviewAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
      postId: (json['postId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ReviewAvgAggregateOutputTypeToJson(
        ReviewAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'postId': instance.postId,
    };

ReviewSumAggregateOutputType _$ReviewSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ReviewSumAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$ReviewSumAggregateOutputTypeToJson(
        ReviewSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'postId': instance.postId,
    };

ReviewMinAggregateOutputType _$ReviewMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ReviewMinAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      message: json['message'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$ReviewMinAggregateOutputTypeToJson(
        ReviewMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userId': instance.userId,
      'postId': instance.postId,
    };

ReviewMaxAggregateOutputType _$ReviewMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ReviewMaxAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      message: json['message'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$ReviewMaxAggregateOutputTypeToJson(
        ReviewMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userId': instance.userId,
      'postId': instance.postId,
    };

PostCommentCountAggregateOutputType
    _$PostCommentCountAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        PostCommentCountAggregateOutputType(
          id: json['id'] as int,
          postReplyTitle: json['postReplyTitle'] as int,
          postReplyType: json['postReplyType'] as int,
          postReplyDescription: json['postReplyDescription'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          postId: json['postId'] as int,
          userId: json['userId'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$PostCommentCountAggregateOutputTypeToJson(
        PostCommentCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'postId': instance.postId,
      'userId': instance.userId,
      '_all': instance.$all,
    };

PostCommentAvgAggregateOutputType _$PostCommentAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCommentAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      postId: (json['postId'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PostCommentAvgAggregateOutputTypeToJson(
        PostCommentAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
    };

PostCommentSumAggregateOutputType _$PostCommentSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCommentSumAggregateOutputType(
      id: json['id'] as int?,
      postId: json['postId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$PostCommentSumAggregateOutputTypeToJson(
        PostCommentSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
    };

PostCommentMinAggregateOutputType _$PostCommentMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCommentMinAggregateOutputType(
      id: json['id'] as int?,
      postReplyTitle: json['postReplyTitle'] as String?,
      postReplyType: json['postReplyType'] as String?,
      postReplyDescription: json['postReplyDescription'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$PostCommentMinAggregateOutputTypeToJson(
        PostCommentMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'postId': instance.postId,
      'userId': instance.userId,
    };

PostCommentMaxAggregateOutputType _$PostCommentMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCommentMaxAggregateOutputType(
      id: json['id'] as int?,
      postReplyTitle: json['postReplyTitle'] as String?,
      postReplyType: json['postReplyType'] as String?,
      postReplyDescription: json['postReplyDescription'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$PostCommentMaxAggregateOutputTypeToJson(
        PostCommentMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'postId': instance.postId,
      'userId': instance.userId,
    };

WishlitCountAggregateOutputType _$WishlitCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    WishlitCountAggregateOutputType(
      id: json['id'] as int,
      postId: json['postId'] as int,
      userId: json['userId'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$WishlitCountAggregateOutputTypeToJson(
        WishlitCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

WishlitAvgAggregateOutputType _$WishlitAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    WishlitAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      postId: (json['postId'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WishlitAvgAggregateOutputTypeToJson(
        WishlitAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
    };

WishlitSumAggregateOutputType _$WishlitSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    WishlitSumAggregateOutputType(
      id: json['id'] as int?,
      postId: json['postId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$WishlitSumAggregateOutputTypeToJson(
        WishlitSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
    };

WishlitMinAggregateOutputType _$WishlitMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    WishlitMinAggregateOutputType(
      id: json['id'] as int?,
      postId: json['postId'] as int?,
      userId: json['userId'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WishlitMinAggregateOutputTypeToJson(
        WishlitMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

WishlitMaxAggregateOutputType _$WishlitMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    WishlitMaxAggregateOutputType(
      id: json['id'] as int?,
      postId: json['postId'] as int?,
      userId: json['userId'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WishlitMaxAggregateOutputTypeToJson(
        WishlitMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

PostMetaCountAggregateOutputType _$PostMetaCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaCountAggregateOutputType(
      id: json['id'] as int,
      metaTitle: json['metaTitle'] as int,
      metaDescription: json['metaDescription'] as int,
      published: json['published'] as int,
      postId: json['postId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$PostMetaCountAggregateOutputTypeToJson(
        PostMetaCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'published': instance.published,
      'postId': instance.postId,
      '_all': instance.$all,
    };

PostMetaAvgAggregateOutputType _$PostMetaAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      postId: (json['postId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PostMetaAvgAggregateOutputTypeToJson(
        PostMetaAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
    };

PostMetaSumAggregateOutputType _$PostMetaSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaSumAggregateOutputType(
      id: json['id'] as int?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostMetaSumAggregateOutputTypeToJson(
        PostMetaSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
    };

PostMetaMinAggregateOutputType _$PostMetaMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaMinAggregateOutputType(
      id: json['id'] as int?,
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      published: json['published'] as bool?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostMetaMinAggregateOutputTypeToJson(
        PostMetaMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'published': instance.published,
      'postId': instance.postId,
    };

PostMetaMaxAggregateOutputType _$PostMetaMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaMaxAggregateOutputType(
      id: json['id'] as int?,
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      published: json['published'] as bool?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostMetaMaxAggregateOutputTypeToJson(
        PostMetaMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'published': instance.published,
      'postId': instance.postId,
    };

AmenitiesCountAggregateOutputType _$AmenitiesCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AmenitiesCountAggregateOutputType(
      id: json['id'] as int,
      name: json['name'] as int,
      slug: json['slug'] as int,
      description: json['description'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      published: json['published'] as int,
      categoryId: json['categoryId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$AmenitiesCountAggregateOutputTypeToJson(
        AmenitiesCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'published': instance.published,
      'categoryId': instance.categoryId,
      '_all': instance.$all,
    };

AmenitiesAvgAggregateOutputType _$AmenitiesAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AmenitiesAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      categoryId: (json['categoryId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AmenitiesAvgAggregateOutputTypeToJson(
        AmenitiesAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
    };

AmenitiesSumAggregateOutputType _$AmenitiesSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AmenitiesSumAggregateOutputType(
      id: json['id'] as int?,
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$AmenitiesSumAggregateOutputTypeToJson(
        AmenitiesSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
    };

AmenitiesMinAggregateOutputType _$AmenitiesMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AmenitiesMinAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool?,
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$AmenitiesMinAggregateOutputTypeToJson(
        AmenitiesMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'published': instance.published,
      'categoryId': instance.categoryId,
    };

AmenitiesMaxAggregateOutputType _$AmenitiesMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AmenitiesMaxAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool?,
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$AmenitiesMaxAggregateOutputTypeToJson(
        AmenitiesMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'published': instance.published,
      'categoryId': instance.categoryId,
    };

CategoryCountOutputType _$CategoryCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryCountOutputType(
      amenities: json['amenities'] as int,
      posts: json['posts'] as int,
      projects: json['projects'] as int,
    );

Map<String, dynamic> _$CategoryCountOutputTypeToJson(
        CategoryCountOutputType instance) =>
    <String, dynamic>{
      'amenities': instance.amenities,
      'posts': instance.posts,
      'projects': instance.projects,
    };

CategoryCountAggregateOutputType _$CategoryCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryCountAggregateOutputType(
      id: json['id'] as int,
      name: json['name'] as int,
      slug: json['slug'] as int,
      description: json['description'] as int,
      parentId: json['parentId'] as int,
      published: json['published'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$CategoryCountAggregateOutputTypeToJson(
        CategoryCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'parentId': instance.parentId,
      'published': instance.published,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

CategoryAvgAggregateOutputType _$CategoryAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      parentId: (json['parentId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CategoryAvgAggregateOutputTypeToJson(
        CategoryAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
    };

CategorySumAggregateOutputType _$CategorySumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategorySumAggregateOutputType(
      id: json['id'] as int?,
      parentId: json['parentId'] as int?,
    );

Map<String, dynamic> _$CategorySumAggregateOutputTypeToJson(
        CategorySumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
    };

CategoryMinAggregateOutputType _$CategoryMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryMinAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      parentId: json['parentId'] as int?,
      published: json['published'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CategoryMinAggregateOutputTypeToJson(
        CategoryMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'parentId': instance.parentId,
      'published': instance.published,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

CategoryMaxAggregateOutputType _$CategoryMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryMaxAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      parentId: json['parentId'] as int?,
      published: json['published'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CategoryMaxAggregateOutputTypeToJson(
        CategoryMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'parentId': instance.parentId,
      'published': instance.published,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

BlogCountAggregateOutputType _$BlogCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      content: json['content'] as int,
      featuredImage: json['featuredImage'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      status: json['status'] as int,
      blogCategoryId: json['blogCategoryId'] as int,
      slugId: json['slugId'] as int,
      authorId: json['authorId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$BlogCountAggregateOutputTypeToJson(
        BlogCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'status': instance.status,
      'blogCategoryId': instance.blogCategoryId,
      'slugId': instance.slugId,
      'authorId': instance.authorId,
      '_all': instance.$all,
    };

BlogAvgAggregateOutputType _$BlogAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      blogCategoryId: (json['blogCategoryId'] as num?)?.toDouble(),
      slugId: (json['slugId'] as num?)?.toDouble(),
      authorId: (json['authorId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BlogAvgAggregateOutputTypeToJson(
        BlogAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blogCategoryId': instance.blogCategoryId,
      'slugId': instance.slugId,
      'authorId': instance.authorId,
    };

BlogSumAggregateOutputType _$BlogSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogSumAggregateOutputType(
      id: json['id'] as int?,
      blogCategoryId: json['blogCategoryId'] as int?,
      slugId: json['slugId'] as int?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$BlogSumAggregateOutputTypeToJson(
        BlogSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blogCategoryId': instance.blogCategoryId,
      'slugId': instance.slugId,
      'authorId': instance.authorId,
    };

BlogMinAggregateOutputType _$BlogMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool?,
      blogCategoryId: json['blogCategoryId'] as int?,
      slugId: json['slugId'] as int?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$BlogMinAggregateOutputTypeToJson(
        BlogMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'status': instance.status,
      'blogCategoryId': instance.blogCategoryId,
      'slugId': instance.slugId,
      'authorId': instance.authorId,
    };

BlogMaxAggregateOutputType _$BlogMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool?,
      blogCategoryId: json['blogCategoryId'] as int?,
      slugId: json['slugId'] as int?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$BlogMaxAggregateOutputTypeToJson(
        BlogMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'status': instance.status,
      'blogCategoryId': instance.blogCategoryId,
      'slugId': instance.slugId,
      'authorId': instance.authorId,
    };

BlogCategoryCountOutputType _$BlogCategoryCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogCategoryCountOutputType(
      blogs: json['blogs'] as int,
    );

Map<String, dynamic> _$BlogCategoryCountOutputTypeToJson(
        BlogCategoryCountOutputType instance) =>
    <String, dynamic>{
      'blogs': instance.blogs,
    };

BlogCategoryCountAggregateOutputType
    _$BlogCategoryCountAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        BlogCategoryCountAggregateOutputType(
          id: json['id'] as int,
          title: json['title'] as int,
          content: json['content'] as int,
          iconImage: json['iconImage'] as int,
          image: json['image'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$BlogCategoryCountAggregateOutputTypeToJson(
        BlogCategoryCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'iconImage': instance.iconImage,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

BlogCategoryAvgAggregateOutputType _$BlogCategoryAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogCategoryAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BlogCategoryAvgAggregateOutputTypeToJson(
        BlogCategoryAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

BlogCategorySumAggregateOutputType _$BlogCategorySumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogCategorySumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$BlogCategorySumAggregateOutputTypeToJson(
        BlogCategorySumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

BlogCategoryMinAggregateOutputType _$BlogCategoryMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogCategoryMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      iconImage: json['iconImage'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$BlogCategoryMinAggregateOutputTypeToJson(
        BlogCategoryMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'iconImage': instance.iconImage,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

BlogCategoryMaxAggregateOutputType _$BlogCategoryMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BlogCategoryMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      iconImage: json['iconImage'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$BlogCategoryMaxAggregateOutputTypeToJson(
        BlogCategoryMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'iconImage': instance.iconImage,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

PageCountAggregateOutputType _$PageCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PageCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      content: json['content'] as int,
      featuredImage: json['featuredImage'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      status: json['status'] as int,
      slugId: json['slugId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$PageCountAggregateOutputTypeToJson(
        PageCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'status': instance.status,
      'slugId': instance.slugId,
      '_all': instance.$all,
    };

PageAvgAggregateOutputType _$PageAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PageAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      slugId: (json['slugId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PageAvgAggregateOutputTypeToJson(
        PageAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slugId': instance.slugId,
    };

PageSumAggregateOutputType _$PageSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PageSumAggregateOutputType(
      id: json['id'] as int?,
      slugId: json['slugId'] as int?,
    );

Map<String, dynamic> _$PageSumAggregateOutputTypeToJson(
        PageSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slugId': instance.slugId,
    };

PageMinAggregateOutputType _$PageMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PageMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool?,
      slugId: json['slugId'] as int?,
    );

Map<String, dynamic> _$PageMinAggregateOutputTypeToJson(
        PageMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'status': instance.status,
      'slugId': instance.slugId,
    };

PageMaxAggregateOutputType _$PageMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PageMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool?,
      slugId: json['slugId'] as int?,
    );

Map<String, dynamic> _$PageMaxAggregateOutputTypeToJson(
        PageMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'status': instance.status,
      'slugId': instance.slugId,
    };

SlugCountOutputType _$SlugCountOutputTypeFromJson(Map<String, dynamic> json) =>
    SlugCountOutputType(
      pages: json['pages'] as int,
      blogs: json['blogs'] as int,
      posts: json['posts'] as int,
    );

Map<String, dynamic> _$SlugCountOutputTypeToJson(
        SlugCountOutputType instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'blogs': instance.blogs,
      'posts': instance.posts,
    };

SlugCountAggregateOutputType _$SlugCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SlugCountAggregateOutputType(
      id: json['id'] as int,
      slug: json['slug'] as int,
      type: json['type'] as int,
      referenceId: json['referenceId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$SlugCountAggregateOutputTypeToJson(
        SlugCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'referenceId': instance.referenceId,
      '_all': instance.$all,
    };

SlugAvgAggregateOutputType _$SlugAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SlugAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      referenceId: (json['referenceId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SlugAvgAggregateOutputTypeToJson(
        SlugAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
    };

SlugSumAggregateOutputType _$SlugSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SlugSumAggregateOutputType(
      id: json['id'] as int?,
      referenceId: json['referenceId'] as int?,
    );

Map<String, dynamic> _$SlugSumAggregateOutputTypeToJson(
        SlugSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
    };

SlugMinAggregateOutputType _$SlugMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SlugMinAggregateOutputType(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      type: $enumDecodeNullable(_$SlugTypeEnumMap, json['type']),
      referenceId: json['referenceId'] as int?,
    );

Map<String, dynamic> _$SlugMinAggregateOutputTypeToJson(
        SlugMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': _$SlugTypeEnumMap[instance.type],
      'referenceId': instance.referenceId,
    };

SlugMaxAggregateOutputType _$SlugMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SlugMaxAggregateOutputType(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      type: $enumDecodeNullable(_$SlugTypeEnumMap, json['type']),
      referenceId: json['referenceId'] as int?,
    );

Map<String, dynamic> _$SlugMaxAggregateOutputTypeToJson(
        SlugMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': _$SlugTypeEnumMap[instance.type],
      'referenceId': instance.referenceId,
    };

ForumPostCountOutputType _$ForumPostCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostCountOutputType(
      forumPostReply: json['forumPostReply'] as int,
    );

Map<String, dynamic> _$ForumPostCountOutputTypeToJson(
        ForumPostCountOutputType instance) =>
    <String, dynamic>{
      'forumPostReply': instance.forumPostReply,
    };

ForumPostCountAggregateOutputType _$ForumPostCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostCountAggregateOutputType(
      id: json['id'] as int,
      postTitle: json['postTitle'] as int,
      postType: json['postType'] as int,
      postDescription: json['postDescription'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      userId: json['userId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$ForumPostCountAggregateOutputTypeToJson(
        ForumPostCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postTitle': instance.postTitle,
      'postType': instance.postType,
      'postDescription': instance.postDescription,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
      '_all': instance.$all,
    };

ForumPostAvgAggregateOutputType _$ForumPostAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ForumPostAvgAggregateOutputTypeToJson(
        ForumPostAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

ForumPostSumAggregateOutputType _$ForumPostSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostSumAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$ForumPostSumAggregateOutputTypeToJson(
        ForumPostSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

ForumPostMinAggregateOutputType _$ForumPostMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostMinAggregateOutputType(
      id: json['id'] as int?,
      postTitle: json['postTitle'] as String?,
      postType: json['postType'] as String?,
      postDescription: json['postDescription'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$ForumPostMinAggregateOutputTypeToJson(
        ForumPostMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postTitle': instance.postTitle,
      'postType': instance.postType,
      'postDescription': instance.postDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userId': instance.userId,
    };

ForumPostMaxAggregateOutputType _$ForumPostMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ForumPostMaxAggregateOutputType(
      id: json['id'] as int?,
      postTitle: json['postTitle'] as String?,
      postType: json['postType'] as String?,
      postDescription: json['postDescription'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$ForumPostMaxAggregateOutputTypeToJson(
        ForumPostMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postTitle': instance.postTitle,
      'postType': instance.postType,
      'postDescription': instance.postDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userId': instance.userId,
    };

ForumPostCommentCountAggregateOutputType
    _$ForumPostCommentCountAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ForumPostCommentCountAggregateOutputType(
          id: json['id'] as int,
          postReplyTitle: json['postReplyTitle'] as int,
          postReplyType: json['postReplyType'] as int,
          postReplyDescription: json['postReplyDescription'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          forumPostId: json['forumPostId'] as int,
          userId: json['userId'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$ForumPostCommentCountAggregateOutputTypeToJson(
        ForumPostCommentCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'forumPostId': instance.forumPostId,
      'userId': instance.userId,
      '_all': instance.$all,
    };

ForumPostCommentAvgAggregateOutputType
    _$ForumPostCommentAvgAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ForumPostCommentAvgAggregateOutputType(
          id: (json['id'] as num?)?.toDouble(),
          forumPostId: (json['forumPostId'] as num?)?.toDouble(),
          userId: (json['userId'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$ForumPostCommentAvgAggregateOutputTypeToJson(
        ForumPostCommentAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forumPostId': instance.forumPostId,
      'userId': instance.userId,
    };

ForumPostCommentSumAggregateOutputType
    _$ForumPostCommentSumAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ForumPostCommentSumAggregateOutputType(
          id: json['id'] as int?,
          forumPostId: json['forumPostId'] as int?,
          userId: json['userId'] as int?,
        );

Map<String, dynamic> _$ForumPostCommentSumAggregateOutputTypeToJson(
        ForumPostCommentSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forumPostId': instance.forumPostId,
      'userId': instance.userId,
    };

ForumPostCommentMinAggregateOutputType
    _$ForumPostCommentMinAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ForumPostCommentMinAggregateOutputType(
          id: json['id'] as int?,
          postReplyTitle: json['postReplyTitle'] as String?,
          postReplyType: json['postReplyType'] as String?,
          postReplyDescription: json['postReplyDescription'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          forumPostId: json['forumPostId'] as int?,
          userId: json['userId'] as int?,
        );

Map<String, dynamic> _$ForumPostCommentMinAggregateOutputTypeToJson(
        ForumPostCommentMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'forumPostId': instance.forumPostId,
      'userId': instance.userId,
    };

ForumPostCommentMaxAggregateOutputType
    _$ForumPostCommentMaxAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        ForumPostCommentMaxAggregateOutputType(
          id: json['id'] as int?,
          postReplyTitle: json['postReplyTitle'] as String?,
          postReplyType: json['postReplyType'] as String?,
          postReplyDescription: json['postReplyDescription'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          forumPostId: json['forumPostId'] as int?,
          userId: json['userId'] as int?,
        );

Map<String, dynamic> _$ForumPostCommentMaxAggregateOutputTypeToJson(
        ForumPostCommentMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'forumPostId': instance.forumPostId,
      'userId': instance.userId,
    };

FaqGroupCountOutputType _$FaqGroupCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqGroupCountOutputType(
      faqQuestionAnswer: json['faqQuestionAnswer'] as int,
    );

Map<String, dynamic> _$FaqGroupCountOutputTypeToJson(
        FaqGroupCountOutputType instance) =>
    <String, dynamic>{
      'faqQuestionAnswer': instance.faqQuestionAnswer,
    };

FaqGroupCountAggregateOutputType _$FaqGroupCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqGroupCountAggregateOutputType(
      id: json['id'] as int,
      faqGroupName: json['faqGroupName'] as int,
      sortOrder: json['sortOrder'] as int,
      status: json['status'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$FaqGroupCountAggregateOutputTypeToJson(
        FaqGroupCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'faqGroupName': instance.faqGroupName,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

FaqGroupAvgAggregateOutputType _$FaqGroupAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqGroupAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      sortOrder: (json['sortOrder'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FaqGroupAvgAggregateOutputTypeToJson(
        FaqGroupAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sortOrder': instance.sortOrder,
    };

FaqGroupSumAggregateOutputType _$FaqGroupSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqGroupSumAggregateOutputType(
      id: json['id'] as int?,
      sortOrder: json['sortOrder'] as int?,
    );

Map<String, dynamic> _$FaqGroupSumAggregateOutputTypeToJson(
        FaqGroupSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sortOrder': instance.sortOrder,
    };

FaqGroupMinAggregateOutputType _$FaqGroupMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqGroupMinAggregateOutputType(
      id: json['id'] as int?,
      faqGroupName: json['faqGroupName'] as String?,
      sortOrder: json['sortOrder'] as int?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FaqGroupMinAggregateOutputTypeToJson(
        FaqGroupMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'faqGroupName': instance.faqGroupName,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

FaqGroupMaxAggregateOutputType _$FaqGroupMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FaqGroupMaxAggregateOutputType(
      id: json['id'] as int?,
      faqGroupName: json['faqGroupName'] as String?,
      sortOrder: json['sortOrder'] as int?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FaqGroupMaxAggregateOutputTypeToJson(
        FaqGroupMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'faqGroupName': instance.faqGroupName,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

FaqQuestionAnswerCountAggregateOutputType
    _$FaqQuestionAnswerCountAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        FaqQuestionAnswerCountAggregateOutputType(
          id: json['id'] as int,
          qusestion: json['qusestion'] as int,
          answer: json['answer'] as int,
          sortOrder: json['sortOrder'] as int,
          status: json['status'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          faqGroupId: json['faqGroupId'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$FaqQuestionAnswerCountAggregateOutputTypeToJson(
        FaqQuestionAnswerCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qusestion': instance.qusestion,
      'answer': instance.answer,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'faqGroupId': instance.faqGroupId,
      '_all': instance.$all,
    };

FaqQuestionAnswerAvgAggregateOutputType
    _$FaqQuestionAnswerAvgAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        FaqQuestionAnswerAvgAggregateOutputType(
          id: (json['id'] as num?)?.toDouble(),
          sortOrder: (json['sortOrder'] as num?)?.toDouble(),
          faqGroupId: (json['faqGroupId'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$FaqQuestionAnswerAvgAggregateOutputTypeToJson(
        FaqQuestionAnswerAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sortOrder': instance.sortOrder,
      'faqGroupId': instance.faqGroupId,
    };

FaqQuestionAnswerSumAggregateOutputType
    _$FaqQuestionAnswerSumAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        FaqQuestionAnswerSumAggregateOutputType(
          id: json['id'] as int?,
          sortOrder: json['sortOrder'] as int?,
          faqGroupId: json['faqGroupId'] as int?,
        );

Map<String, dynamic> _$FaqQuestionAnswerSumAggregateOutputTypeToJson(
        FaqQuestionAnswerSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sortOrder': instance.sortOrder,
      'faqGroupId': instance.faqGroupId,
    };

FaqQuestionAnswerMinAggregateOutputType
    _$FaqQuestionAnswerMinAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        FaqQuestionAnswerMinAggregateOutputType(
          id: json['id'] as int?,
          qusestion: json['qusestion'] as String?,
          answer: json['answer'] as String?,
          sortOrder: json['sortOrder'] as int?,
          status: json['status'] as bool?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          faqGroupId: json['faqGroupId'] as int?,
        );

Map<String, dynamic> _$FaqQuestionAnswerMinAggregateOutputTypeToJson(
        FaqQuestionAnswerMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qusestion': instance.qusestion,
      'answer': instance.answer,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'faqGroupId': instance.faqGroupId,
    };

FaqQuestionAnswerMaxAggregateOutputType
    _$FaqQuestionAnswerMaxAggregateOutputTypeFromJson(
            Map<String, dynamic> json) =>
        FaqQuestionAnswerMaxAggregateOutputType(
          id: json['id'] as int?,
          qusestion: json['qusestion'] as String?,
          answer: json['answer'] as String?,
          sortOrder: json['sortOrder'] as int?,
          status: json['status'] as bool?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          faqGroupId: json['faqGroupId'] as int?,
        );

Map<String, dynamic> _$FaqQuestionAnswerMaxAggregateOutputTypeToJson(
        FaqQuestionAnswerMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qusestion': instance.qusestion,
      'answer': instance.answer,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'faqGroupId': instance.faqGroupId,
    };

SystemSettings _$SystemSettingsFromJson(Map<String, dynamic> json) =>
    SystemSettings(
      id: json['id'] as int,
      name: json['name'] as String,
      value: json['value'] as String?,
      settingGroup: $enumDecode(_$SettingGroupEnumMap, json['settingGroup']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SystemSettingsToJson(SystemSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'settingGroup': _$SettingGroupEnumMap[instance.settingGroup]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

SystemUser _$SystemUserFromJson(Map<String, dynamic> json) => SystemUser(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      salt: json['salt'] as String,
      role: $enumDecode(_$SystemRoleEnumMap, json['role']),
      email: json['email'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SystemUserToJson(SystemUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'role': _$SystemRoleEnumMap[instance.role]!,
      'email': instance.email,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

SystemUserPermissions _$SystemUserPermissionsFromJson(
        Map<String, dynamic> json) =>
    SystemUserPermissions(
      id: json['id'] as int,
      moduleTitle: json['moduleTitle'] as String,
      canView: json['canView'] as bool,
      canAdd: json['canAdd'] as bool,
      canEdit: json['canEdit'] as bool,
      canDelete: json['canDelete'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      systemUserId: json['systemUserId'] as int?,
    );

Map<String, dynamic> _$SystemUserPermissionsToJson(
        SystemUserPermissions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moduleTitle': instance.moduleTitle,
      'canView': instance.canView,
      'canAdd': instance.canAdd,
      'canEdit': instance.canEdit,
      'canDelete': instance.canDelete,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'systemUserId': instance.systemUserId,
    };

Agency _$AgencyFromJson(Map<String, dynamic> json) => Agency(
      id: json['id'] as int,
      title: json['title'] as String,
      featuredImage: json['featuredImage'] as String?,
      logoImage: json['logoImage'] as String?,
      ownerName: json['ownerName'] as String?,
      ownerDesignation: json['ownerDesignation'] as String?,
      ownerMessage: json['ownerMessage'] as String?,
      ownerProfilePic: json['ownerProfilePic'] as String?,
      companyTitle: json['companyTitle'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      mobile: json['mobile'] as String?,
      landline: json['landline'] as String?,
      whatsapp: json['whatsapp'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$AgencyToJson(Agency instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'featuredImage': instance.featuredImage,
      'logoImage': instance.logoImage,
      'ownerName': instance.ownerName,
      'ownerDesignation': instance.ownerDesignation,
      'ownerMessage': instance.ownerMessage,
      'ownerProfilePic': instance.ownerProfilePic,
      'companyTitle': instance.companyTitle,
      'country': instance.country,
      'email': instance.email,
      'website': instance.website,
      'address': instance.address,
      'description': instance.description,
      'mobile': instance.mobile,
      'landline': instance.landline,
      'whatsapp': instance.whatsapp,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
    };

Developer _$DeveloperFromJson(Map<String, dynamic> json) => Developer(
      id: json['id'] as int,
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DeveloperToJson(Developer instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      id: json['id'] as int,
      title: json['title'] as String,
      address: json['address'] as String,
      featuredImage: json['featuredImage'] as String?,
      gallery: json['gallery'] as String?,
      locality: json['locality'] as String?,
      city: json['city'] as String?,
      price: json['price'] as String?,
      WalkthroughThreeD: json['WalkthroughThreeD'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      developerId: json['developerId'] as int?,
      categoryId: json['categoryId'] as int?,
      projectNearByPlaceId: json['projectNearByPlaceId'] as int?,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'address': instance.address,
      'featuredImage': instance.featuredImage,
      'gallery': instance.gallery,
      'locality': instance.locality,
      'city': instance.city,
      'price': instance.price,
      'WalkthroughThreeD': instance.WalkthroughThreeD,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'developerId': instance.developerId,
      'categoryId': instance.categoryId,
      'projectNearByPlaceId': instance.projectNearByPlaceId,
    };

FloorPlan _$FloorPlanFromJson(Map<String, dynamic> json) => FloorPlan(
      id: json['id'] as int,
      title: json['title'] as String,
      floorPlanPath: json['floorPlanPath'] as String,
      projectId: json['projectId'] as int?,
    );

Map<String, dynamic> _$FloorPlanToJson(FloorPlan instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'floorPlanPath': instance.floorPlanPath,
      'projectId': instance.projectId,
    };

ProjectNearByPlace _$ProjectNearByPlaceFromJson(Map<String, dynamic> json) =>
    ProjectNearByPlace(
      id: json['id'] as int,
      title: json['title'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      placeCategory: $enumDecode(
          _$ProjectNearByPlaceCategoryEnumMap, json['placeCategory']),
    );

Map<String, dynamic> _$ProjectNearByPlaceToJson(ProjectNearByPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'placeCategory':
          _$ProjectNearByPlaceCategoryEnumMap[instance.placeCategory]!,
    };

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      id: json['id'] as int,
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'description': instance.description,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Membership _$MembershipFromJson(Map<String, dynamic> json) => Membership(
      id: json['id'] as int,
      qty: json['qty'] as int,
      subscriptionId: json['subscriptionId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$MembershipToJson(Membership instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
    };

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      id: json['id'] as int,
      email: json['email'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      password: json['password'] as String?,
      fcmtoken: json['fcmtoken'] as String?,
      salt: json['salt'] as String?,
      preferencesEmailNotification:
          json['preferencesEmailNotification'] as bool,
      preferencesNewsletter: json['preferencesNewsletter'] as bool,
      preferencesAutomatedReport: json['preferencesAutomatedReport'] as bool,
      currency: json['currency'] as String,
      AreaUnit: $enumDecode(_$AreaSizeUnitEnumMap, json['AreaUnit']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': _$RoleEnumMap[instance.role]!,
      'password': instance.password,
      'fcmtoken': instance.fcmtoken,
      'salt': instance.salt,
      'preferencesEmailNotification': instance.preferencesEmailNotification,
      'preferencesNewsletter': instance.preferencesNewsletter,
      'preferencesAutomatedReport': instance.preferencesAutomatedReport,
      'currency': instance.currency,
      'AreaUnit': _$AreaSizeUnitEnumMap[instance.AreaUnit]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: json['id'] as int,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postCode: json['postCode'] as String?,
      phone: json['phone'] as String?,
      slug: json['slug'] as String?,
      images: json['images'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postCode': instance.postCode,
      'phone': instance.phone,
      'slug': instance.slug,
      'images': instance.images,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'published': instance.published,
      'userId': instance.userId,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['id'] as int,
      title: json['title'] as String,
      propertyNumber: json['propertyNumber'] as String?,
      description: json['description'] as String?,
      featuredImages: json['featuredImages'] as String?,
      galleryImages: json['galleryImages'] as String?,
      video: json['video'] as String,
      longDescription: json['longDescription'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      plotNumber: json['plotNumber'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      city: json['city'] as String?,
      area: json['area'] as String?,
      isInstallmentAvailable: json['isInstallmentAvailable'] as bool?,
      advanceAmount: (json['advanceAmount'] as num).toDouble(),
      noOfInstallments: json['noOfInstallments'] as int,
      monthlyInstallments: json['monthlyInstallments'] as int,
      readyForPossession: json['readyForPossession'] as bool?,
      areaSizeUnit:
          $enumDecodeNullable(_$AreaSizeUnitEnumMap, json['areaSizeUnit']),
      bedroooms: json['bedroooms'] as int,
      bathroom: json['bathroom'] as int,
      contactEmail: json['contactEmail'] as String,
      contactMobile: json['contactMobile'] as String,
      contactLandline: json['contactLandline'] as String,
      featureAndAmenities: json['featureAndAmenities'] as String,
      categoryId: json['categoryId'] as int,
      authorId: json['authorId'] as int,
      slugId: json['slugId'] as int,
      status: $enumDecode(_$PostStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'propertyNumber': instance.propertyNumber,
      'description': instance.description,
      'featuredImages': instance.featuredImages,
      'galleryImages': instance.galleryImages,
      'video': instance.video,
      'longDescription': instance.longDescription,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'plotNumber': instance.plotNumber,
      'price': instance.price,
      'city': instance.city,
      'area': instance.area,
      'isInstallmentAvailable': instance.isInstallmentAvailable,
      'advanceAmount': instance.advanceAmount,
      'noOfInstallments': instance.noOfInstallments,
      'monthlyInstallments': instance.monthlyInstallments,
      'readyForPossession': instance.readyForPossession,
      'areaSizeUnit': _$AreaSizeUnitEnumMap[instance.areaSizeUnit],
      'bedroooms': instance.bedroooms,
      'bathroom': instance.bathroom,
      'contactEmail': instance.contactEmail,
      'contactMobile': instance.contactMobile,
      'contactLandline': instance.contactLandline,
      'featureAndAmenities': instance.featureAndAmenities,
      'categoryId': instance.categoryId,
      'authorId': instance.authorId,
      'slugId': instance.slugId,
      'status': _$PostStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

PostContact _$PostContactFromJson(Map<String, dynamic> json) => PostContact(
      id: json['id'] as int,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      message: json['message'] as String?,
      ccontactPersonType:
          $enumDecode(_$CcontactPersonTypeEnumMap, json['ccontactPersonType']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int,
    );

Map<String, dynamic> _$PostContactToJson(PostContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'message': instance.message,
      'ccontactPersonType':
          _$CcontactPersonTypeEnumMap[instance.ccontactPersonType]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'postId': instance.postId,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      id: json['id'] as int,
      name: json['name'] as String?,
      message: json['message'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int,
      postId: json['postId'] as int,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
      'postId': instance.postId,
    };

PostComment _$PostCommentFromJson(Map<String, dynamic> json) => PostComment(
      id: json['id'] as int,
      postReplyTitle: json['postReplyTitle'] as String,
      postReplyType: json['postReplyType'] as String,
      postReplyDescription: json['postReplyDescription'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$PostCommentToJson(PostComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'postId': instance.postId,
      'userId': instance.userId,
    };

Wishlit _$WishlitFromJson(Map<String, dynamic> json) => Wishlit(
      id: json['id'] as int,
      postId: json['postId'] as int,
      userId: json['userId'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WishlitToJson(Wishlit instance) => <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

PostMeta _$PostMetaFromJson(Map<String, dynamic> json) => PostMeta(
      id: json['id'] as int,
      metaTitle: json['metaTitle'] as String,
      metaDescription: json['metaDescription'] as String?,
      published: json['published'] as bool,
      postId: json['postId'] as int,
    );

Map<String, dynamic> _$PostMetaToJson(PostMeta instance) => <String, dynamic>{
      'id': instance.id,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'published': instance.published,
      'postId': instance.postId,
    };

Amenities _$AmenitiesFromJson(Map<String, dynamic> json) => Amenities(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool,
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$AmenitiesToJson(Amenities instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'published': instance.published,
      'categoryId': instance.categoryId,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      parentId: json['parentId'] as int?,
      published: json['published'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'parentId': instance.parentId,
      'published': instance.published,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Blog _$BlogFromJson(Map<String, dynamic> json) => Blog(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool,
      blogCategoryId: json['blogCategoryId'] as int,
      slugId: json['slugId'] as int,
      authorId: json['authorId'] as int,
    );

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'status': instance.status,
      'blogCategoryId': instance.blogCategoryId,
      'slugId': instance.slugId,
      'authorId': instance.authorId,
    };

BlogCategory _$BlogCategoryFromJson(Map<String, dynamic> json) => BlogCategory(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String?,
      iconImage: json['iconImage'] as String?,
      image: json['image'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$BlogCategoryToJson(BlogCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'iconImage': instance.iconImage,
      'image': instance.image,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String?,
      featuredImage: json['featuredImage'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as bool,
      slugId: json['slugId'] as int,
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'status': instance.status,
      'slugId': instance.slugId,
    };

Slug _$SlugFromJson(Map<String, dynamic> json) => Slug(
      id: json['id'] as int,
      slug: json['slug'] as String,
      type: $enumDecode(_$SlugTypeEnumMap, json['type']),
      referenceId: json['referenceId'] as int,
    );

Map<String, dynamic> _$SlugToJson(Slug instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': _$SlugTypeEnumMap[instance.type]!,
      'referenceId': instance.referenceId,
    };

ForumPost _$ForumPostFromJson(Map<String, dynamic> json) => ForumPost(
      id: json['id'] as int,
      postTitle: json['postTitle'] as String,
      postType: json['postType'] as String,
      postDescription: json['postDescription'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$ForumPostToJson(ForumPost instance) => <String, dynamic>{
      'id': instance.id,
      'postTitle': instance.postTitle,
      'postType': instance.postType,
      'postDescription': instance.postDescription,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
    };

ForumPostComment _$ForumPostCommentFromJson(Map<String, dynamic> json) =>
    ForumPostComment(
      id: json['id'] as int,
      postReplyTitle: json['postReplyTitle'] as String,
      postReplyType: json['postReplyType'] as String,
      postReplyDescription: json['postReplyDescription'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      forumPostId: json['forumPostId'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$ForumPostCommentToJson(ForumPostComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postReplyTitle': instance.postReplyTitle,
      'postReplyType': instance.postReplyType,
      'postReplyDescription': instance.postReplyDescription,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'forumPostId': instance.forumPostId,
      'userId': instance.userId,
    };

FaqGroup _$FaqGroupFromJson(Map<String, dynamic> json) => FaqGroup(
      id: json['id'] as int,
      faqGroupName: json['faqGroupName'] as String,
      sortOrder: json['sortOrder'] as int,
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FaqGroupToJson(FaqGroup instance) => <String, dynamic>{
      'id': instance.id,
      'faqGroupName': instance.faqGroupName,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

FaqQuestionAnswer _$FaqQuestionAnswerFromJson(Map<String, dynamic> json) =>
    FaqQuestionAnswer(
      id: json['id'] as int,
      qusestion: json['qusestion'] as String,
      answer: json['answer'] as String,
      sortOrder: json['sortOrder'] as int,
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      faqGroupId: json['faqGroupId'] as int,
    );

Map<String, dynamic> _$FaqQuestionAnswerToJson(FaqQuestionAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qusestion': instance.qusestion,
      'answer': instance.answer,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'faqGroupId': instance.faqGroupId,
    };
