.class public Lcom/nuance/swype/connect/api/ConnectAccount;
.super Ljava/lang/Object;
.source "ConnectAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;,
        Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;,
        Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
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

.field private static final VERSION_KEY:Ljava/lang/String; = "VERSION"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final serialVersionUID:J = 0x21410eb073857bcL


# instance fields
.field private accountId:Ljava/lang/String;

.field private accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

.field private creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

.field private deviceCount:I

.field private final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation
.end field

.field private existsOnServer:Z

.field private identifier:Ljava/lang/String;

.field private identifierForDisplay:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "ConnectAccount"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;)V
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "creationMethod"    # Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 128
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    .line 150
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/api/ConnectAccount;->setIdentifier(Ljava/lang/String;)V

    .line 152
    iput-object p2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    .line 153
    iput p3, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    .line 154
    iput v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 155
    iput-object p4, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    .line 156
    return-void
.end method

.method private setIdentifier(Ljava/lang/String;)V
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    .line 336
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .line 348
    .local v0, "updateDevice":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->setName(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->setLastCheckin(J)V

    .line 353
    .end local v0    # "updateDevice":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addDevices(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .line 365
    .local v0, "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->addDevice(Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;)V

    .line 366
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v0    # "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 370
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    return-object v0
.end method

.method public getCreationMethod()Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    return-object v0
.end method

.method public getDeviceCount()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

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
            "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    return-object v0
.end method

.method public getExistsOnServer()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    if-eq v0, v1, :cond_0

    .line 266
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 268
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 269
    iput v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 270
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setAccountState(Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;)V
    .locals 0
    .param p1, "state"    # Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 300
    return-void
.end method

.method public setDeviceCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 320
    return-void
.end method

.method public setExistsOnServer(Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 289
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 400
    const-string v6, ""

    .line 401
    .local v6, "json":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 402
    .local v5, "jsdevices":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 404
    .local v0, "account":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "IDENTIFIER"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v7, "DISPLAY_IDENTIFIER"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v7, "ACCOUNT_ID"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v7, "TYPE"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getType()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    const-string v7, "EXISTS_ON_SERVER"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getExistsOnServer()Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 410
    const-string v7, "CREATION_METHOD"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getCreationMethod()Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v7, "ACCOUNT_STATE"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .line 414
    .local v1, "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 415
    .local v4, "jsdevice":Lorg/json/JSONObject;
    const-string v7, "DEVICE_ID"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v7, "NAME"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string v7, "DEVICE_TYPE"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getType()Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v7, "LAST_CHECKIN"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 419
    const-string v7, "IS_THIS_DEVICE"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getIsThisDevice()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 420
    const-string v7, "STATUS"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceStatus()Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    .end local v1    # "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsdevice":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/nuance/swype/connect/api/ConnectAccount;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "failed to create JSON blob for account data"

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 429
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v6

    .line 423
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v7, "DEVICES"

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v7, "VERSION"

    const-wide v8, 0x21410eb073857bcL

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 425
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Account [ id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nidentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexistsOnServer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncreationMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\naccountState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndeviceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()V
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 278
    return-void
.end method
