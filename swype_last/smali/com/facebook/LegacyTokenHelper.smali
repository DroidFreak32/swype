.class final Lcom/facebook/LegacyTokenHelper;
.super Ljava/lang/Object;
.source "LegacyTokenHelper.java"


# static fields
.field public static final APPLICATION_ID_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ApplicationId"

.field public static final DECLINED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.DeclinedPermissions"

.field public static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field public static final EXPIRATION_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpirationDate"

.field private static final INVALID_BUNDLE_MILLISECONDS:J = -0x8000000000000000L

.field private static final IS_SSO_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.IsSSO"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field public static final LAST_REFRESH_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.LastRefreshDate"

.field public static final PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Permissions"

.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Token"

.field public static final TOKEN_SOURCE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.AccessTokenSource"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-class v0, Lcom/facebook/LegacyTokenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string/jumbo v1, "context"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    .end local p2    # "cacheKey":Ljava/lang/String;
    :cond_12
    iput-object p2, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1b

    move-object p1, v0

    .line 135
    :cond_1b
    iget-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    .line 138
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "{}"

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, "jsonString":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    .local v6, "json":Lorg/json/JSONObject;
    const-string/jumbo v13, "valueType"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 446
    .local v12, "valueType":Ljava/lang/String;
    const-string/jumbo v13, "bool"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    .line 447
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    :cond_30
    :goto_30
    return-void

    .line 448
    :cond_31
    const-string/jumbo v13, "bool[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5c

    .line 449
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 450
    .local v7, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [Z

    .line 451
    .local v2, "array":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_48
    array-length v13, v2

    if-ge v5, v13, :cond_54

    .line 452
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v13

    aput-boolean v13, v2, v5

    .line 451
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 454
    :cond_54
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_30

    .line 455
    .end local v2    # "array":[Z
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_5c
    const-string/jumbo v13, "byte"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 456
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-byte v13, v13

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_30

    .line 457
    :cond_75
    const-string/jumbo v13, "byte[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 458
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 459
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [B

    .line 460
    .local v2, "array":[B
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8c
    array-length v13, v2

    if-ge v5, v13, :cond_99

    .line 461
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    .line 460
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 463
    :cond_99
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_30

    .line 464
    .end local v2    # "array":[B
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_a1
    const-string/jumbo v13, "short"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bb

    .line 465
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-short v13, v13

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_30

    .line 466
    :cond_bb
    const-string/jumbo v13, "short[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e8

    .line 467
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 468
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [S

    .line 469
    .local v2, "array":[S
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d2
    array-length v13, v2

    if-ge v5, v13, :cond_df

    .line 470
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    int-to-short v13, v13

    aput-short v13, v2, v5

    .line 469
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 472
    :cond_df
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_30

    .line 473
    .end local v2    # "array":[S
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_e8
    const-string/jumbo v13, "int"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_101

    .line 474
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_30

    .line 475
    :cond_101
    const-string/jumbo v13, "int[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d

    .line 476
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 477
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [I

    .line 478
    .local v2, "array":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_118
    array-length v13, v2

    if-ge v5, v13, :cond_124

    .line 479
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    aput v13, v2, v5

    .line 478
    add-int/lit8 v5, v5, 0x1

    goto :goto_118

    .line 481
    :cond_124
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_30

    .line 482
    .end local v2    # "array":[I
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_12d
    const-string/jumbo v13, "long"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_146

    .line 483
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_30

    .line 484
    :cond_146
    const-string/jumbo v13, "long[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_172

    .line 485
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 486
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [J

    .line 487
    .local v2, "array":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_15d
    array-length v13, v2

    if-ge v5, v13, :cond_169

    .line 488
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v14

    aput-wide v14, v2, v5

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_15d

    .line 490
    :cond_169
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_30

    .line 491
    .end local v2    # "array":[J
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_172
    const-string/jumbo v13, "float"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18c

    .line 492
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v13, v14

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_30

    .line 493
    :cond_18c
    const-string/jumbo v13, "float[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b9

    .line 494
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 495
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [F

    .line 496
    .local v2, "array":[F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1a3
    array-length v13, v2

    if-ge v5, v13, :cond_1b0

    .line 497
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v14

    double-to-float v13, v14

    aput v13, v2, v5

    .line 496
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a3

    .line 499
    :cond_1b0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_30

    .line 500
    .end local v2    # "array":[F
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_1b9
    const-string/jumbo v13, "double"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d2

    .line 501
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_30

    .line 502
    :cond_1d2
    const-string/jumbo v13, "double[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1fe

    .line 503
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 504
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [D

    .line 505
    .local v2, "array":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1e9
    array-length v13, v2

    if-ge v5, v13, :cond_1f5

    .line 506
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v14

    aput-wide v14, v2, v5

    .line 505
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e9

    .line 508
    :cond_1f5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_30

    .line 509
    .end local v2    # "array":[D
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_1fe
    const-string/jumbo v13, "char"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_225

    .line 510
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "charString":Ljava/lang/String;
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_30

    .line 512
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_30

    .line 514
    .end local v3    # "charString":Ljava/lang/String;
    :cond_225
    const-string/jumbo v13, "char[]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25f

    .line 515
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 516
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v2, v13, [C

    .line 517
    .local v2, "array":[C
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_23c
    array-length v13, v2

    if-ge v5, v13, :cond_256

    .line 518
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 519
    .restart local v3    # "charString":Ljava/lang/String;
    if-eqz v3, :cond_253

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_253

    .line 520
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aput-char v13, v2, v5

    .line 517
    :cond_253
    add-int/lit8 v5, v5, 0x1

    goto :goto_23c

    .line 523
    .end local v3    # "charString":Ljava/lang/String;
    :cond_256
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_30

    .line 524
    .end local v2    # "array":[C
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_25f
    const-string/jumbo v13, "string"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_278

    .line 525
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 526
    :cond_278
    const-string/jumbo v13, "stringList"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2af

    .line 527
    const-string/jumbo v13, "value"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 528
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 529
    .local v10, "numStrings":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_292
    if-ge v5, v10, :cond_2a6

    .line 531
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 532
    .local v9, "jsonStringValue":Ljava/lang/Object;
    sget-object v13, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v9, v13, :cond_2a3

    const/4 v9, 0x0

    .end local v9    # "jsonStringValue":Ljava/lang/Object;
    :goto_29d
    invoke-virtual {v11, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 530
    add-int/lit8 v5, v5, 0x1

    goto :goto_292

    .line 532
    .restart local v9    # "jsonStringValue":Ljava/lang/Object;
    :cond_2a3
    check-cast v9, Ljava/lang/String;

    goto :goto_29d

    .line 536
    .end local v9    # "jsonStringValue":Ljava/lang/Object;
    :cond_2a6
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_30

    .line 537
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "numStrings":I
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2af
    const-string/jumbo v13, "enum"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 539
    :try_start_2b8
    const-string/jumbo v13, "enumType"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 541
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 543
    const-string/jumbo v14, "value"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    .line 544
    .local v4, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_2d5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b8 .. :try_end_2d5} :catch_2d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b8 .. :try_end_2d5} :catch_2da

    goto/16 :goto_30

    .line 547
    .end local v4    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_2d7
    move-exception v13

    goto/16 :goto_30

    :catch_2da
    move-exception v13

    goto/16 :goto_30
.end method

.method public static getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 299
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v2, 0x0

    .line 309
    if-nez p0, :cond_6

    .line 318
    :cond_5
    :goto_5
    return-object v2

    .line 313
    :cond_6
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 314
    .local v0, "n":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_5

    .line 318
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_5
.end method

.method public static getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 219
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getExpirationMilliseconds(Landroid/os/Bundle;)J
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 230
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 278
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getLastRefreshMilliseconds(Landroid/os/Bundle;)J
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 289
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPermissions(Landroid/os/Bundle;)Ljava/util/Set;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const-string/jumbo v1, "bundle"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_11

    .line 243
    const/4 v1, 0x0

    .line 245
    :goto_10
    return-object v1

    :cond_11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_10
.end method

.method public static getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 263
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 265
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessTokenSource;

    .line 268
    :goto_18
    return-object v0

    .line 267
    :cond_19
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.IsSSO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 268
    if-eqz v0, :cond_25

    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    goto :goto_18

    :cond_25
    sget-object v0, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    goto :goto_18
.end method

.method public static getToken(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 208
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasTokenInformation(Landroid/os/Bundle;)Z
    .registers 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 190
    if-nez p0, :cond_6

    .line 204
    :cond_5
    :goto_5
    return v1

    .line 194
    :cond_6
    const-string/jumbo v2, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    const-string/jumbo v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 200
    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 204
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static putApplicationId(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method static putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 322
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 323
    return-void
.end method

.method public static putDeclinedPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 260
    return-void
.end method

.method public static putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 224
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 227
    return-void
.end method

.method public static putExpirationMilliseconds(Landroid/os/Bundle;J)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # J

    .prologue
    .line 235
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    return-void
.end method

.method public static putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 283
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 286
    return-void
.end method

.method public static putLastRefreshMilliseconds(Landroid/os/Bundle;J)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # J

    .prologue
    .line 294
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    return-void
.end method

.method public static putPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Permissions"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    return-void
.end method

.method public static putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Lcom/facebook/AccessTokenSource;

    .prologue
    .line 273
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 275
    return-void
.end method

.method public static putToken(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .registers 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 327
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 328
    .local v9, "value":Ljava/lang/Object;
    if-nez v9, :cond_b

    .line 437
    .end local v9    # "value":Ljava/lang/Object;
    :cond_a
    :goto_a
    return-void

    .line 333
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_b
    const/4 v8, 0x0

    .line 334
    .local v8, "supportedType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 335
    .local v5, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 337
    .local v4, "json":Lorg/json/JSONObject;
    instance-of v12, v9, Ljava/lang/Byte;

    if-eqz v12, :cond_41

    .line 338
    const-string/jumbo v8, "byte"

    .line 339
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/Byte;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Byte;->intValue()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    :cond_25
    :goto_25
    if-eqz v8, :cond_a

    .line 427
    const-string/jumbo v12, "valueType"

    invoke-virtual {v4, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    if-eqz v5, :cond_35

    .line 431
    const-string/jumbo v12, "value"

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    :cond_35
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "jsonString":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_a

    .line 340
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_41
    instance-of v12, v9, Ljava/lang/Short;

    if-eqz v12, :cond_55

    .line 341
    const-string/jumbo v8, "short"

    .line 342
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/Short;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Short;->intValue()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_25

    .line 343
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_55
    instance-of v12, v9, Ljava/lang/Integer;

    if-eqz v12, :cond_69

    .line 344
    const-string/jumbo v8, "int"

    .line 345
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_25

    .line 346
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_69
    instance-of v12, v9, Ljava/lang/Long;

    if-eqz v12, :cond_7d

    .line 347
    const-string/jumbo v8, "long"

    .line 348
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/Long;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_25

    .line 349
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_7d
    instance-of v12, v9, Ljava/lang/Float;

    if-eqz v12, :cond_91

    .line 350
    const-string/jumbo v8, "float"

    .line 351
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/Float;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v4, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_25

    .line 352
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_91
    instance-of v12, v9, Ljava/lang/Double;

    if-eqz v12, :cond_a5

    .line 353
    const-string/jumbo v8, "double"

    .line 354
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/Double;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v4, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_25

    .line 355
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_a5
    instance-of v12, v9, Ljava/lang/Boolean;

    if-eqz v12, :cond_ba

    .line 356
    const-string/jumbo v8, "bool"

    .line 357
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/Boolean;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_25

    .line 358
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_ba
    instance-of v12, v9, Ljava/lang/Character;

    if-eqz v12, :cond_cd

    .line 359
    const-string/jumbo v8, "char"

    .line 360
    const-string/jumbo v12, "value"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_25

    .line 361
    :cond_cd
    instance-of v12, v9, Ljava/lang/String;

    if-eqz v12, :cond_de

    .line 362
    const-string/jumbo v8, "string"

    .line 363
    const-string/jumbo v12, "value"

    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_25

    .line 364
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_de
    instance-of v12, v9, Ljava/lang/Enum;

    if-eqz v12, :cond_ff

    .line 365
    const-string/jumbo v8, "enum"

    .line 366
    const-string/jumbo v12, "value"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string/jumbo v12, "enumType"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_25

    .line 371
    :cond_ff
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 372
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    instance-of v12, v9, [B

    if-eqz v12, :cond_11c

    .line 373
    const-string/jumbo v8, "byte[]"

    .line 374
    check-cast v9, [B

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [B

    .local v2, "arr$":[B
    array-length v7, v2

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_112
    if-ge v3, v7, :cond_25

    aget-byte v10, v2, v3

    .line 375
    .local v10, "v":B
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    .line 377
    .end local v2    # "arr$":[B
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":B
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_11c
    instance-of v12, v9, [S

    if-eqz v12, :cond_134

    .line 378
    const-string/jumbo v8, "short[]"

    .line 379
    check-cast v9, [S

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [S

    .local v2, "arr$":[S
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_12a
    if-ge v3, v7, :cond_25

    aget-short v10, v2, v3

    .line 380
    .local v10, "v":S
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_12a

    .line 382
    .end local v2    # "arr$":[S
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":S
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_134
    instance-of v12, v9, [I

    if-eqz v12, :cond_14c

    .line 383
    const-string/jumbo v8, "int[]"

    .line 384
    check-cast v9, [I

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [I

    .local v2, "arr$":[I
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_142
    if-ge v3, v7, :cond_25

    aget v10, v2, v3

    .line 385
    .local v10, "v":I
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_142

    .line 387
    .end local v2    # "arr$":[I
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":I
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_14c
    instance-of v12, v9, [J

    if-eqz v12, :cond_164

    .line 388
    const-string/jumbo v8, "long[]"

    .line 389
    check-cast v9, [J

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [J

    .local v2, "arr$":[J
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_15a
    if-ge v3, v7, :cond_25

    aget-wide v10, v2, v3

    .line 390
    .local v10, "v":J
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_15a

    .line 392
    .end local v2    # "arr$":[J
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":J
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_164
    instance-of v12, v9, [F

    if-eqz v12, :cond_17d

    .line 393
    const-string/jumbo v8, "float[]"

    .line 394
    check-cast v9, [F

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [F

    .local v2, "arr$":[F
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_172
    if-ge v3, v7, :cond_25

    aget v10, v2, v3

    .line 395
    .local v10, "v":F
    float-to-double v12, v10

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 394
    add-int/lit8 v3, v3, 0x1

    goto :goto_172

    .line 397
    .end local v2    # "arr$":[F
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":F
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_17d
    instance-of v12, v9, [D

    if-eqz v12, :cond_195

    .line 398
    const-string/jumbo v8, "double[]"

    .line 399
    check-cast v9, [D

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [D

    .local v2, "arr$":[D
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_18b
    if-ge v3, v7, :cond_25

    aget-wide v10, v2, v3

    .line 400
    .local v10, "v":D
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_18b

    .line 402
    .end local v2    # "arr$":[D
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":D
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_195
    instance-of v12, v9, [Z

    if-eqz v12, :cond_1ad

    .line 403
    const-string/jumbo v8, "bool[]"

    .line 404
    check-cast v9, [Z

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [Z

    .local v2, "arr$":[Z
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1a3
    if-ge v3, v7, :cond_25

    aget-boolean v10, v2, v3

    .line 405
    .local v10, "v":Z
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a3

    .line 407
    .end local v2    # "arr$":[Z
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":Z
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_1ad
    instance-of v12, v9, [C

    if-eqz v12, :cond_1c9

    .line 408
    const-string/jumbo v8, "char[]"

    .line 409
    check-cast v9, [C

    .end local v9    # "value":Ljava/lang/Object;
    move-object v2, v9

    check-cast v2, [C

    .local v2, "arr$":[C
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1bb
    if-ge v3, v7, :cond_25

    aget-char v10, v2, v3

    .line 410
    .local v10, "v":C
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_1bb

    .line 412
    .end local v2    # "arr$":[C
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "v":C
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_1c9
    instance-of v12, v9, Ljava/util/List;

    if-eqz v12, :cond_1ea

    .line 413
    const-string/jumbo v8, "stringList"

    .line 415
    check-cast v9, Ljava/util/List;

    .line 416
    .end local v9    # "value":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 417
    .local v10, "v":Ljava/lang/String;
    if-nez v10, :cond_1e6

    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v10    # "v":Ljava/lang/String;
    :cond_1e6
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1d6

    .line 422
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_1ea
    const/4 v5, 0x0

    goto/16 :goto_25
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    return-void
.end method

.method public final load()Landroid/os/Bundle;
    .registers 10

    .prologue
    .line 141
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v3, "settings":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 145
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, "key":Ljava/lang/String;
    :try_start_1f
    invoke-direct {p0, v2, v3}, Lcom/facebook/LegacyTokenHelper;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_13

    .line 148
    :catch_23
    move-exception v0

    .line 150
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v5, 0x5

    sget-object v6, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error reading cached value for key: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v3, 0x0

    .line 156
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "settings":Landroid/os/Bundle;
    :cond_48
    return-object v3
.end method

.method public final save(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 160
    const-string/jumbo v4, "bundle"

    invoke-static {p1, v4}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 164
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    .local v3, "key":Ljava/lang/String;
    :try_start_20
    invoke-direct {p0, v3, p1, v1}, Lcom/facebook/LegacyTokenHelper;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_14

    .line 167
    :catch_24
    move-exception v0

    .line 169
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v5, 0x5

    sget-object v6, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error processing value for key: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "key":Ljava/lang/String;
    :goto_48
    return-void

    .line 179
    :cond_49
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_48
.end method
