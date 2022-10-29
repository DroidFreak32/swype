.class public final Lcom/facebook/internal/FacebookRequestErrorClassification;
.super Ljava/lang/Object;
.source "FacebookRequestErrorClassification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FacebookRequestErrorClassification$3;
    }
.end annotation


# static fields
.field public static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field public static final EC_INVALID_SESSION:I = 0x66

.field public static final EC_INVALID_TOKEN:I = 0xbe

.field public static final EC_RATE:I = 0x9

.field public static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field public static final EC_TOO_MANY_USER_ACTION_CALLS:I = 0x155

.field public static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field public static final KEY_LOGIN_RECOVERABLE:Ljava/lang/String; = "login_recoverable"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OTHER:Ljava/lang/String; = "other"

.field public static final KEY_RECOVERY_MESSAGE:Ljava/lang/String; = "recovery_message"

.field public static final KEY_TRANSIENT:Ljava/lang/String; = "transient"

.field private static defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;


# instance fields
.field private final loginRecoverableErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loginRecoverableRecoveryMessage:Ljava/lang/String;

.field private final otherErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final otherRecoveryMessage:Ljava/lang/String;

.field private final transientErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transientRecoveryMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p4, "otherRecoveryMessage"    # Ljava/lang/String;
    .param p5, "transientRecoveryMessage"    # Ljava/lang/String;
    .param p6, "loginRecoverableRecoveryMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "otherErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p2, "transientErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p3, "loginRecoverableErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    .line 70
    iput-object p2, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    .line 71
    iput-object p3, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    .line 72
    iput-object p4, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherRecoveryMessage:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientRecoveryMessage:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableRecoveryMessage:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 12
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v0, 0x0

    .line 196
    if-nez p0, :cond_4

    .line 226
    :goto_3
    return-object v0

    .line 199
    :cond_4
    const/4 v1, 0x0

    .line 200
    .local v1, "otherErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .line 201
    .local v2, "transientErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 202
    .local v3, "loginRecoverableErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 203
    .local v4, "otherRecoveryMessage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 204
    .local v5, "transientRecoveryMessage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 206
    .local v6, "loginRecoverableRecoveryMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_61

    .line 207
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 208
    .local v7, "definition":Lorg/json/JSONObject;
    if-eqz v7, :cond_34

    .line 211
    const-string/jumbo v10, "name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_34

    .line 215
    const-string/jumbo v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 216
    const-string/jumbo v10, "recovery_message"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v7}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 206
    .end local v9    # "name":Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 218
    .restart local v9    # "name":Ljava/lang/String;
    :cond_37
    const-string/jumbo v10, "transient"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 219
    const-string/jumbo v10, "recovery_message"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {v7}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_34

    .line 221
    :cond_4c
    const-string/jumbo v10, "login_recoverable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 222
    const-string/jumbo v10, "recovery_message"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-static {v7}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    goto :goto_34

    .line 226
    .end local v7    # "definition":Lorg/json/JSONObject;
    .end local v9    # "name":Ljava/lang/String;
    :cond_61
    new-instance v0, Lcom/facebook/internal/FacebookRequestErrorClassification;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static declared-synchronized getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 2

    .prologue
    .line 134
    const-class v1, Lcom/facebook/internal/FacebookRequestErrorClassification;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;

    if-nez v0, :cond_d

    .line 135
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 137
    :cond_d
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v2, Lcom/facebook/internal/FacebookRequestErrorClassification$1;

    invoke-direct {v2}, Lcom/facebook/internal/FacebookRequestErrorClassification$1;-><init>()V

    .line 149
    .local v2, "transientErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v3, Lcom/facebook/internal/FacebookRequestErrorClassification$2;

    invoke-direct {v3}, Lcom/facebook/internal/FacebookRequestErrorClassification$2;-><init>()V

    .line 154
    .local v3, "loginRecoverableErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 11
    .param p0, "definition"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    const-string/jumbo v9, "items"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 165
    .local v4, "itemsArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_f

    .line 166
    const/4 v3, 0x0

    .line 192
    :cond_e
    return-object v3

    .line 169
    :cond_f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v3, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_e

    .line 171
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 172
    .local v2, "item":Lorg/json/JSONObject;
    if-eqz v2, :cond_5d

    .line 175
    const-string/jumbo v9, "code"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "code":I
    if-eqz v0, :cond_5d

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, "subcodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string/jumbo v9, "subcodes"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 181
    .local v8, "subcodesArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_56

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_56

    .line 182
    new-instance v7, Ljava/util/HashSet;

    .end local v7    # "subcodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 183
    .restart local v7    # "subcodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_40
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_56

    .line 184
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    .line 185
    .local v6, "subCode":I
    if-eqz v6, :cond_53

    .line 186
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 190
    .end local v5    # "j":I
    .end local v6    # "subCode":I
    :cond_56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v0    # "code":I
    .end local v7    # "subcodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "subcodesArray":Lorg/json/JSONArray;
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method


# virtual methods
.method public final classify(IIZ)Lcom/facebook/FacebookRequestError$Category;
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "errorSubCode"    # I
    .param p3, "isTransient"    # Z

    .prologue
    .line 106
    if-eqz p3, :cond_5

    .line 107
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    .line 130
    :goto_4
    return-object v1

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 111
    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 112
    .local v0, "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 113
    :cond_2d
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_4

    .line 117
    .end local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_30
    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 118
    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 119
    .restart local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_58

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 120
    :cond_58
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_4

    .line 124
    .end local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5b
    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 125
    iget-object v1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 126
    .restart local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_83

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 127
    :cond_83
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    goto/16 :goto_4

    .line 130
    .end local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_87
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto/16 :goto_4
.end method

.method public final getLoginRecoverableErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    return-object v0
.end method

.method public final getOtherErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    return-object v0
.end method

.method public final getRecoveryMessage(Lcom/facebook/FacebookRequestError$Category;)Ljava/lang/String;
    .registers 4
    .param p1, "category"    # Lcom/facebook/FacebookRequestError$Category;

    .prologue
    .line 90
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification$3;->$SwitchMap$com$facebook$FacebookRequestError$Category:[I

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 98
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 92
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherRecoveryMessage:Ljava/lang/String;

    goto :goto_c

    .line 94
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableRecoveryMessage:Ljava/lang/String;

    goto :goto_c

    .line 96
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientRecoveryMessage:Ljava/lang/String;

    goto :goto_c

    .line 90
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public final getTransientErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    return-object v0
.end method
