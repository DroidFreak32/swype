.class public Lcom/flurry/sdk/ir;
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
        "Lcom/flurry/sdk/hr;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/ir;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ir;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 149
    if-eqz p2, :cond_6

    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :goto_5
    return-void

    .line 152
    :cond_6
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Deserialize not supported for request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    check-cast p2, Lcom/flurry/sdk/hr;

    .line 2050
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 2141
    :cond_7
    :goto_7
    return-void

    .line 2054
    :cond_8
    new-instance v2, Lcom/flurry/sdk/ir$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ir$1;-><init>(Lcom/flurry/sdk/ir;Ljava/io/OutputStream;)V

    .line 2061
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2063
    :try_start_12
    const-string/jumbo v0, "project_key"

    iget-object v4, p2, Lcom/flurry/sdk/hr;->a:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const-string/jumbo v0, "bundle_id"

    iget-object v4, p2, Lcom/flurry/sdk/hr;->b:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string/jumbo v0, "app_version"

    iget-object v4, p2, Lcom/flurry/sdk/hr;->c:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string/jumbo v0, "sdk_version"

    iget v4, p2, Lcom/flurry/sdk/hr;->d:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2067
    const-string/jumbo v0, "platform"

    iget v4, p2, Lcom/flurry/sdk/hr;->e:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2068
    const-string/jumbo v0, "platform_version"

    iget-object v4, p2, Lcom/flurry/sdk/hr;->f:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string/jumbo v0, "limit_ad_tracking"

    iget-boolean v4, p2, Lcom/flurry/sdk/hr;->g:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2073
    iget-object v0, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    if-eqz v0, :cond_1ae

    .line 2074
    iget-object v0, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v0, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    if-eqz v0, :cond_1ae

    .line 2075
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2076
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2078
    const-string/jumbo v5, "model"

    iget-object v6, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v6, v6, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    iget-object v6, v6, Lcom/flurry/sdk/ho;->a:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const-string/jumbo v5, "brand"

    iget-object v6, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v6, v6, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    iget-object v6, v6, Lcom/flurry/sdk/ho;->b:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    const-string/jumbo v5, "id"

    iget-object v6, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v6, v6, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    iget-object v6, v6, Lcom/flurry/sdk/ho;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    const-string/jumbo v5, "device"

    iget-object v6, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v6, v6, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    iget-object v6, v6, Lcom/flurry/sdk/ho;->d:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    const-string/jumbo v5, "product"

    iget-object v6, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v6, v6, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    iget-object v6, v6, Lcom/flurry/sdk/ho;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    const-string/jumbo v5, "version_release"

    iget-object v6, p2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v6, v6, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    iget-object v6, v6, Lcom/flurry/sdk/ho;->f:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string/jumbo v5, "com.flurry.proton.generated.avro.v2.AndroidTags"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2088
    :goto_ac
    if-eqz v0, :cond_f3

    .line 2089
    const-string/jumbo v4, "device_tags"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2095
    :goto_b4
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 2097
    iget-object v0, p2, Lcom/flurry/sdk/hr;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ht;

    .line 2098
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2099
    const-string/jumbo v7, "type"

    iget v8, v0, Lcom/flurry/sdk/ht;->a:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2100
    const-string/jumbo v7, "id"

    iget-object v0, v0, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e3
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_e3} :catch_e4
    .catchall {:try_start_12 .. :try_end_e3} :catchall_ee

    goto :goto_bf

    .line 2137
    :catch_e4
    move-exception v0

    .line 2138
    :try_start_e5
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid Json"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_ee
    .catchall {:try_start_e5 .. :try_end_ee} :catchall_ee

    .line 2140
    :catchall_ee
    move-exception v0

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw v0

    .line 2091
    :cond_f3
    :try_start_f3
    const-string/jumbo v0, "device_tags"

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b4

    .line 2105
    :cond_fc
    const-string/jumbo v0, "device_ids"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2108
    iget-object v0, p2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    if-eqz v0, :cond_1ac

    .line 2109
    iget-object v0, p2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v0, v0, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    if-eqz v0, :cond_1ac

    .line 2110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2111
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2112
    const-string/jumbo v4, "latitude"

    iget-object v5, p2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v5, v5, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    iget-wide v6, v5, Lcom/flurry/sdk/hx;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2113
    const-string/jumbo v4, "longitude"

    iget-object v5, p2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v5, v5, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    iget-wide v6, v5, Lcom/flurry/sdk/hx;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2114
    const-string/jumbo v4, "accuracy"

    iget-object v5, p2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v5, v5, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    iget v5, v5, Lcom/flurry/sdk/hx;->c:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2115
    const-string/jumbo v4, "com.flurry.proton.generated.avro.v2.Geolocation"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2118
    :goto_14c
    if-eqz v0, :cond_19a

    .line 2119
    const-string/jumbo v1, "geo"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2124
    :goto_154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2125
    iget-object v1, p2, Lcom/flurry/sdk/hr;->k:Lcom/flurry/sdk/ib;

    if-eqz v1, :cond_1a3

    .line 2126
    const-string/jumbo v1, "string"

    iget-object v4, p2, Lcom/flurry/sdk/hr;->k:Lcom/flurry/sdk/ib;

    iget-object v4, v4, Lcom/flurry/sdk/ib;->a:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/ir;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    const-string/jumbo v1, "publisher_user_id"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2133
    :goto_16d
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/ir;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Proton Request String: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 2136
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_195
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_195} :catch_e4
    .catchall {:try_start_f3 .. :try_end_195} :catchall_ee

    .line 2140
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_7

    .line 2121
    :cond_19a
    :try_start_19a
    const-string/jumbo v0, "geo"

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_154

    .line 2130
    :cond_1a3
    const-string/jumbo v0, "publisher_user_id"

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ab
    .catch Lorg/json/JSONException; {:try_start_19a .. :try_end_1ab} :catch_e4
    .catchall {:try_start_19a .. :try_end_1ab} :catchall_ee

    goto :goto_16d

    :cond_1ac
    move-object v0, v1

    goto :goto_14c

    :cond_1ae
    move-object v0, v1

    goto/16 :goto_ac
.end method
