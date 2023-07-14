.class public Lcom/nuance/connect/internal/common/ConnectAccount;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;,
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;,
        Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;
    }
.end annotation


# static fields
.field private static final ACCOUNT_DEVICES_KEY:Ljava/lang/String; = "DEVICES"

.field private static final ACCOUNT_ID_KEY:Ljava/lang/String; = "ACCOUNT_ID"

.field private static final ACCOUNT_STATE_KEY:Ljava/lang/String; = "ACCOUNT_STATE"

.field public static final ACCOUNT_TYPE_EMAIL:I = 0x1

.field private static final CREATION_METHOD_KEY:Ljava/lang/String; = "CREATION_METHOD"

.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_LAST_CHECKIN_KEY:Ljava/lang/String; = "LAST_CHECKIN"

.field private static final DEVICE_NAME_KEY:Ljava/lang/String; = "NAME"

.field private static final DEVICE_STATUS_KEY:Ljava/lang/String; = "STATUS"

.field private static final DEVICE_TYPE_KEY:Ljava/lang/String; = "DEVICE_TYPE"

.field private static final DISPLAY_IDENTIFIER_KEY:Ljava/lang/String; = "DISPLAY_IDENTIFIER"

.field private static final EXISTS_ON_SERVER_KEY:Ljava/lang/String; = "EXISTS_ON_SERVER"

.field private static final IDENTIFIER_KEY:Ljava/lang/String; = "IDENTIFIER"

.field private static final IS_THIS_DEVICE_KEY:Ljava/lang/String; = "IS_THIS_DEVICE"

.field private static final TYPE_KEY:Ljava/lang/String; = "TYPE"

.field private static final VERSION:Ljava/lang/String; = "VERSION"

.field private static final serialVersionUID:J = 0xe1639e55e75f087L


# instance fields
.field private accountId:Ljava/lang/String;

.field private accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field private creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

.field private creationTime:J

.field private deviceCount:I

.field private final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation
.end field

.field private existsOnServer:Z

.field private identifier:Ljava/lang/String;

.field private identifierForDisplay:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/common/ConnectAccount;->setIdentifier(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->type:I

    iput v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    iput-object p4, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    :try_start_0
    const-string/jumbo v1, "ACCOUNT_ID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v1, "DISPLAY_IDENTIFIER"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->setIdentifier(Ljava/lang/String;)V

    const-string/jumbo v1, "DISPLAY_IDENTIFIER"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    const-string/jumbo v1, "TYPE"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->type:I

    const-string/jumbo v1, "CREATION_METHOD"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    const-string/jumbo v1, "ACCOUNT_STATE"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string/jumbo v1, "DEVICES"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    :try_start_3
    new-instance v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    const-string/jumbo v2, "DEVICE_ID"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NAME"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LAST_CHECKIN"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "IS_THIS_DEVICE"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v9, "DEVICE_TYPE"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->addDevice(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unable to parse JSON object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :cond_0
    return-void

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method private setIdentifier(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifier:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->setLastCheckin(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addDevices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->addDevice(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-object v0
.end method

.method public getCreationMethod()Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationTime:J

    return-wide v0
.end method

.method public getDeviceCount()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    return v0
.end method

.method public getDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    return-object v0
.end method

.method public getDevicesArray()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getExistsOnServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierForDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->type:I

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    :cond_0
    iput-boolean v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    iput v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-void
.end method

.method public setCreationTimeSeconds(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationTime:J

    return-void
.end method

.method public setDeviceCount(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    return-void
.end method

.method public setExistsOnServer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 10

    const-string/jumbo v1, ""

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "IDENTIFIER"

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "DISPLAY_IDENTIFIER"

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ACCOUNT_ID"

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "TYPE"

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "EXISTS_ON_SERVER"

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getExistsOnServer()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CREATION_METHOD"

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getCreationMethod()Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ACCOUNT_STATE"

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "DEVICE_ID"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "NAME"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "DEVICE_TYPE"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getType()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "LAST_CHECKIN"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v6, "IS_THIS_DEVICE"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getIsThisDevice()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v6, "STATUS"

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceStatus()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "DEVICES"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "VERSION"

    const-wide v4, 0xe1639e55e75f087L    # 8.333123888197926E-241

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Account [ id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nidentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nexistsOnServer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ncreationMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\naccountState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ndeviceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-void
.end method
