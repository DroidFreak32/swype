.class public Lcom/flurry/sdk/is;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz",
        "<",
        "Lcom/flurry/sdk/hs;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/flurry/sdk/is;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/flurry/sdk/ip;
    .registers 3

    .prologue
    .line 265
    sget-object v1, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    .line 267
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 268
    const-class v0, Lcom/flurry/sdk/ip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 272
    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    move-object v0, v1

    goto :goto_10
.end method

.method private static a(Lcom/flurry/sdk/hp;Lorg/json/JSONArray;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 205
    if-eqz p1, :cond_9d

    .line 206
    const/4 v0, 0x0

    move v4, v2

    .line 208
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_9b

    .line 209
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_35

    .line 213
    const-string/jumbo v3, "string"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 215
    if-nez v0, :cond_21

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    :cond_21
    new-instance v3, Lcom/flurry/sdk/hv;

    invoke-direct {v3}, Lcom/flurry/sdk/hv;-><init>()V

    .line 220
    const-string/jumbo v5, "string"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    .line 221
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_35
    :goto_35
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 225
    :cond_39
    const-string/jumbo v3, "com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 227
    if-nez v0, :cond_49

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :cond_49
    const-string/jumbo v3, "com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_35

    .line 234
    new-instance v5, Lcom/flurry/sdk/hw;

    invoke-direct {v5}, Lcom/flurry/sdk/hw;-><init>()V

    .line 235
    const-string/jumbo v3, "event_name"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/flurry/sdk/hw;->a:Ljava/lang/String;

    .line 236
    const-string/jumbo v3, "event_parameter_name"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/flurry/sdk/hw;->c:Ljava/lang/String;

    .line 238
    const-string/jumbo v3, "event_parameter_values"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 240
    if-eqz v6, :cond_98

    .line 241
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v2

    .line 243
    :goto_7f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_91

    .line 245
    const-string/jumbo v7, ""

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_91
    move-object v1, v3

    .line 252
    :goto_92
    iput-object v1, v5, Lcom/flurry/sdk/hw;->d:[Ljava/lang/String;

    .line 254
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 249
    :cond_98
    new-array v1, v2, [Ljava/lang/String;

    goto :goto_92

    .line 259
    :cond_9b
    iput-object v0, p0, Lcom/flurry/sdk/hp;->c:Ljava/util/List;

    .line 261
    :cond_9d
    return-void
.end method

.method private static a(Lcom/flurry/sdk/hq;Lorg/json/JSONArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    .line 159
    if-eqz p1, :cond_b0

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_ae

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_aa

    .line 166
    new-instance v3, Lcom/flurry/sdk/hp;

    invoke-direct {v3}, Lcom/flurry/sdk/hp;-><init>()V

    .line 167
    const-string/jumbo v4, "partner"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    .line 169
    const-string/jumbo v4, "events"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 170
    invoke-static {v3, v4}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/hp;Lorg/json/JSONArray;)V

    .line 172
    const-string/jumbo v4, "method"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/is;->a(Ljava/lang/String;)Lcom/flurry/sdk/ip;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/hp;->d:Lcom/flurry/sdk/ip;

    .line 173
    const-string/jumbo v4, "uri_template"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/hp;->e:Ljava/lang/String;

    .line 175
    const-string/jumbo v4, "body_template"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 176
    if-eqz v4, :cond_68

    .line 177
    const-string/jumbo v5, "string"

    const-string/jumbo v6, "null"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 179
    iput-object v4, v3, Lcom/flurry/sdk/hp;->f:Ljava/lang/String;

    .line 183
    :cond_68
    const-string/jumbo v4, "max_redirects"

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hp;->g:I

    .line 184
    const-string/jumbo v4, "connect_timeout"

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hp;->h:I

    .line 185
    const-string/jumbo v4, "request_timeout"

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hp;->i:I

    .line 186
    const-string/jumbo v4, "callback_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/hp;->a:J

    .line 188
    const-string/jumbo v4, "headers"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_a7

    .line 190
    const-string/jumbo v4, "map"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_a7

    .line 192
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/flurry/sdk/hp;->j:Ljava/util/Map;

    .line 196
    :cond_a7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 199
    :cond_ae
    iput-object v1, p0, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    .line 201
    :cond_b0
    return-void
.end method

.method private static b(Ljava/io/InputStream;)Lcom/flurry/sdk/hs;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    .line 118
    :cond_3
    :goto_3
    return-object v0

    .line 100
    :cond_4
    invoke-static {p0}, Lcom/flurry/sdk/lr;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 103
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Proton response string: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/flurry/sdk/hs;

    invoke-direct {v0}, Lcom/flurry/sdk/hs;-><init>()V

    .line 107
    :try_start_28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "issued_at"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/flurry/sdk/hs;->a:J

    .line 109
    const-string/jumbo v1, "refresh_ttl"

    const-wide/16 v4, 0xe10

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/flurry/sdk/hs;->b:J

    .line 110
    const-string/jumbo v1, "expiration_ttl"

    const-wide/32 v4, 0x15180

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/flurry/sdk/hs;->c:J

    .line 1122
    const-string/jumbo v1, "global_settings"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1124
    new-instance v3, Lcom/flurry/sdk/hz;

    invoke-direct {v3}, Lcom/flurry/sdk/hz;-><init>()V

    iput-object v3, v0, Lcom/flurry/sdk/hs;->d:Lcom/flurry/sdk/hz;

    .line 1125
    if-eqz v1, :cond_6e

    .line 1126
    iget-object v3, v0, Lcom/flurry/sdk/hs;->d:Lcom/flurry/sdk/hz;

    const-string/jumbo v4, "log_level"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/is;->b(Ljava/lang/String;)Lcom/flurry/sdk/ia;

    move-result-object v1

    iput-object v1, v3, Lcom/flurry/sdk/hz;->a:Lcom/flurry/sdk/ia;

    .line 1131
    :cond_6e
    const-string/jumbo v1, "pulse"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1133
    new-instance v3, Lcom/flurry/sdk/hq;

    invoke-direct {v3}, Lcom/flurry/sdk/hq;-><init>()V

    .line 1135
    if-eqz v1, :cond_b2

    .line 1136
    const-string/jumbo v4, "callbacks"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1137
    invoke-static {v3, v4}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/hq;Lorg/json/JSONArray;)V

    .line 1139
    const-string/jumbo v4, "max_callback_retries"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hq;->b:I

    .line 1140
    const-string/jumbo v4, "max_callback_attempts_per_report"

    const/16 v5, 0xf

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hq;->c:I

    .line 1141
    const-string/jumbo v4, "max_report_delay_seconds"

    const/16 v5, 0x258

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hq;->d:I

    .line 1142
    const-string/jumbo v4, "agent_report_url"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    .line 1145
    :cond_b2
    iput-object v3, v0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    .line 1149
    const-string/jumbo v1, "analytics"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1151
    new-instance v2, Lcom/flurry/sdk/ic;

    invoke-direct {v2}, Lcom/flurry/sdk/ic;-><init>()V

    iput-object v2, v0, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    .line 1152
    if-eqz v1, :cond_3

    .line 1153
    iget-object v2, v0, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    const-string/jumbo v3, "analytics_enabled"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/flurry/sdk/ic;->b:Z

    .line 1154
    iget-object v2, v0, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    const-string/jumbo v3, "max_session_properties"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/flurry/sdk/ic;->a:I
    :try_end_dd
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_dd} :catch_df

    goto/16 :goto_3

    .line 115
    :catch_df
    move-exception v0

    .line 116
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Exception while deserialize: "

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)Lcom/flurry/sdk/ia;
    .registers 3

    .prologue
    .line 277
    sget-object v1, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ia;

    .line 279
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 280
    const-class v0, Lcom/flurry/sdk/ia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ia;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 283
    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    move-object v0, v1

    goto :goto_10
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Lcom/flurry/sdk/is;->b(Ljava/io/InputStream;)Lcom/flurry/sdk/hs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2091
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Serialize not supported for response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
