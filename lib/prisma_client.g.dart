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
      name: json['name'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
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
      'name': instance.name,
      'password': instance.password,
      'salt': instance.salt,
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
      content: json['content'] as String?,
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
      'content': instance.content,
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
    );

Map<String, dynamic> _$UsersCountOutputTypeToJson(
        UsersCountOutputType instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

UsersCountAggregateOutputType _$UsersCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersCountAggregateOutputType(
      id: json['id'] as int,
      email: json['email'] as int,
      name: json['name'] as int,
      password: json['password'] as int,
      salt: json['salt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$UsersCountAggregateOutputTypeToJson(
        UsersCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'salt': instance.salt,
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
      name: json['name'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
    );

Map<String, dynamic> _$UsersMinAggregateOutputTypeToJson(
        UsersMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'salt': instance.salt,
    };

UsersMaxAggregateOutputType _$UsersMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersMaxAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
    );

Map<String, dynamic> _$UsersMaxAggregateOutputTypeToJson(
        UsersMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'salt': instance.salt,
    };

PostCountOutputType _$PostCountOutputTypeFromJson(Map<String, dynamic> json) =>
    PostCountOutputType(
      postmeta: json['postmeta'] as int,
    );

Map<String, dynamic> _$PostCountOutputTypeToJson(
        PostCountOutputType instance) =>
    <String, dynamic>{
      'postmeta': instance.postmeta,
    };

PostCountAggregateOutputType _$PostCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostCountAggregateOutputType(
      id: json['id'] as int,
      title: json['title'] as int,
      content: json['content'] as int,
      published: json['published'] as int,
      authorId: json['authorId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$PostCountAggregateOutputTypeToJson(
        PostCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
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
      content: json['content'] as String?,
      published: json['published'] as bool?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$PostMinAggregateOutputTypeToJson(
        PostMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'published': instance.published,
      'authorId': instance.authorId,
    };

PostMaxAggregateOutputType _$PostMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PostMaxAggregateOutputType(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      published: json['published'] as bool?,
      authorId: json['authorId'] as int?,
    );

Map<String, dynamic> _$PostMaxAggregateOutputTypeToJson(
        PostMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
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

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'salt': instance.salt,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String?,
      published: json['published'] as bool,
      authorId: json['authorId'] as int,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
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
