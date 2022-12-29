// GENERATED CODE - DO NOT MODIFY BY HAND

part of prisma.client;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      images: json['images'] as String?,
      long_description: json['long_description'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool,
      authorId: json['authorId'] as int,
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
      'slug': instance.slug,
      'description': instance.description,
      'images': instance.images,
      'long_description': instance.long_description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'published': instance.published,
      'authorId': instance.authorId,
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
      meta_title: json['meta_title'] as String,
      meta_description: json['meta_description'] as String?,
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
      'meta_title': instance.meta_title,
      'meta_description': instance.meta_description,
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
      published: json['published'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int,
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
      'published': instance.published,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'postId': instance.postId,
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

UsersCountOutputType _$UsersCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersCountOutputType(
      posts: json['posts'] as int,
      Profile: json['Profile'] as int,
    );

Map<String, dynamic> _$UsersCountOutputTypeToJson(
        UsersCountOutputType instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'Profile': instance.Profile,
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
      category: json['category'] as int,
    );

Map<String, dynamic> _$PostCountOutputTypeToJson(
        PostCountOutputType instance) =>
    <String, dynamic>{
      'postmeta': instance.postmeta,
      'category': instance.category,
    };

PostCountAggregateOutputType _$PostCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      slug: json['slug'] as int,
      description: json['description'] as int,
      images: json['images'] as int,
      long_description: json['long_description'] as int,
      longitude: json['longitude'] as int,
      latitude: json['latitude'] as int,
      content: json['content'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      published: json['published'] as int,
      authorId: json['authorId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$PostCountAggregateOutputTypeToJson(
        PostCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'images': instance.images,
      'long_description': instance.long_description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'published': instance.published,
      'authorId': instance.authorId,
      '_all': instance.$all,
    };

PostAvgAggregateOutputType _$PostAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      authorId: (json['authorId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PostAvgAggregateOutputTypeToJson(
        PostAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
    };

PostSumAggregateOutputType _$PostSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostSumAggregateOutputType(
      id: json['id'] as int?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$PostSumAggregateOutputTypeToJson(
        PostSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
    };

PostMinAggregateOutputType _$PostMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMinAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      images: json['images'] as String?,
      long_description: json['long_description'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$PostMinAggregateOutputTypeToJson(
        PostMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'images': instance.images,
      'long_description': instance.long_description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'published': instance.published,
      'authorId': instance.authorId,
    };

PostMaxAggregateOutputType _$PostMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      images: json['images'] as String?,
      long_description: json['long_description'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$PostMaxAggregateOutputTypeToJson(
        PostMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'images': instance.images,
      'long_description': instance.long_description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'published': instance.published,
      'authorId': instance.authorId,
    };

PostMetaCountAggregateOutputType _$PostMetaCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaCountAggregateOutputType(
      id: json['id'] as int,
      meta_title: json['meta_title'] as int,
      meta_description: json['meta_description'] as int,
      published: json['published'] as int,
      postId: json['postId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$PostMetaCountAggregateOutputTypeToJson(
        PostMetaCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta_title': instance.meta_title,
      'meta_description': instance.meta_description,
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
      meta_title: json['meta_title'] as String?,
      meta_description: json['meta_description'] as String?,
      published: json['published'] as bool?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostMetaMinAggregateOutputTypeToJson(
        PostMetaMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta_title': instance.meta_title,
      'meta_description': instance.meta_description,
      'published': instance.published,
      'postId': instance.postId,
    };

PostMetaMaxAggregateOutputType _$PostMetaMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMetaMaxAggregateOutputType(
      id: json['id'] as int?,
      meta_title: json['meta_title'] as String?,
      meta_description: json['meta_description'] as String?,
      published: json['published'] as bool?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$PostMetaMaxAggregateOutputTypeToJson(
        PostMetaMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta_title': instance.meta_title,
      'meta_description': instance.meta_description,
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
    );

Map<String, dynamic> _$CategoryCountOutputTypeToJson(
        CategoryCountOutputType instance) =>
    <String, dynamic>{
      'amenities': instance.amenities,
    };

CategoryCountAggregateOutputType _$CategoryCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryCountAggregateOutputType(
      id: json['id'] as int,
      name: json['name'] as int,
      slug: json['slug'] as int,
      description: json['description'] as int,
      published: json['published'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      postId: json['postId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$CategoryCountAggregateOutputTypeToJson(
        CategoryCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'published': instance.published,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'postId': instance.postId,
      '_all': instance.$all,
    };

CategoryAvgAggregateOutputType _$CategoryAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      postId: (json['postId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CategoryAvgAggregateOutputTypeToJson(
        CategoryAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
    };

CategorySumAggregateOutputType _$CategorySumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategorySumAggregateOutputType(
      id: json['id'] as int?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$CategorySumAggregateOutputTypeToJson(
        CategorySumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
    };

CategoryMinAggregateOutputType _$CategoryMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryMinAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      published: json['published'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$CategoryMinAggregateOutputTypeToJson(
        CategoryMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'published': instance.published,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'postId': instance.postId,
    };

CategoryMaxAggregateOutputType _$CategoryMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryMaxAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      published: json['published'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$CategoryMaxAggregateOutputTypeToJson(
        CategoryMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'published': instance.published,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'postId': instance.postId,
    };

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      id: json['id'] as int,
      email: json['email'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      password: json['password'] as String?,
      fcmtoken: json['fcmtoken'] as String?,
      salt: json['salt'] as String?,
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
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      images: json['images'] as String?,
      long_description: json['long_description'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      content: json['content'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      published: json['published'] as bool,
      authorId: json['authorId'] as int,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'images': instance.images,
      'long_description': instance.long_description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'published': instance.published,
      'authorId': instance.authorId,
    };

PostMeta _$PostMetaFromJson(Map<String, dynamic> json) => PostMeta(
      id: json['id'] as int,
      meta_title: json['meta_title'] as String,
      meta_description: json['meta_description'] as String?,
      published: json['published'] as bool,
      postId: json['postId'] as int,
    );

Map<String, dynamic> _$PostMetaToJson(PostMeta instance) => <String, dynamic>{
      'id': instance.id,
      'meta_title': instance.meta_title,
      'meta_description': instance.meta_description,
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
      published: json['published'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      postId: json['postId'] as int,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'published': instance.published,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'postId': instance.postId,
    };
