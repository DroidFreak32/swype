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
    .registers 1

    .prologue
    .line 58
    const-string/jumbo v0, "ConnectAccount"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;)V
    .registers 7
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
    .registers 6
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 330
    if-eqz p1, :cond_33

    .line 331
    const-string/jumbo v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 333
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
    :cond_33
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;)V
    .registers 6
    .param p1, "device"    # Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

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
    :goto_26
    return-void

    .line 351
    :cond_27
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method

.method public addDevices(Ljava/util/List;)V
    .registers 6
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
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v1, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .line 365
    .local v0, "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->addDevice(Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;)V

    .line 366
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 369
    .end local v0    # "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    :cond_20
    iget-object v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 370
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    return-object v0
.end method

.method public getCreationMethod()Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    return-object v0
.end method

.method public getDeviceCount()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    return v0
.end method

.method public getDevices()Ljava/util/Map;
    .registers 2
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
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierForDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    return v0
.end method

.method public isDeleted()Z
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 4

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

    if-eq v0, v1, :cond_13

    .line 266
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 268
    :cond_13
    iput-boolean v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 269
    iput v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 270
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .registers 2
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setAccountState(Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;)V
    .registers 2
    .param p1, "state"    # Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 300
    return-void
.end method

.method public setDeviceCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 320
    return-void
.end method

.method public setExistsOnServer(Z)V
    .registers 2
    .param p1, "exists"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 289
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 11

    .prologue
    .line 400
    const-string/jumbo v4, ""

    .line 401
    .local v4, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 402
    .local v3, "jsdevices":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 404
    .local v0, "account":Lorg/json/JSONObject;
    :try_start_d
    const-string/jumbo v5, "IDENTIFIER"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string/jumbo v5, "DISPLAY_IDENTIFIER"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string/jumbo v5, "ACCOUNT_ID"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string/jumbo v5, "TYPE"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getType()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    const-string/jumbo v5, "EXISTS_ON_SERVER"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getExistsOnServer()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 410
    const-string/jumbo v5, "CREATION_METHOD"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getCreationMethod()Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string/jumbo v5, "ACCOUNT_STATE"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .line 414
    .local v1, "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 415
    .local v2, "jsdevice":Lorg/json/JSONObject;
    const-string/jumbo v5, "DEVICE_ID"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string/jumbo v5, "NAME"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string/jumbo v5, "DEVICE_TYPE"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getType()Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v5, "LAST_CHECKIN"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 419
    const-string/jumbo v5, "IS_THIS_DEVICE"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getIsThisDevice()Z

    move-result v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 420
    const-string/jumbo v5, "STATUS"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceStatus()Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_c5} :catch_c6

    goto :goto_67

    .line 427
    .end local v1    # "device":Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    .end local v2    # "jsdevice":Lorg/json/JSONObject;
    :catch_c6
    move-exception v5

    sget-object v5, Lcom/nuance/swype/connect/api/ConnectAccount;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "failed to create JSON blob for account data"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 429
    :goto_d5
    return-object v4

    .line 423
    :cond_d6
    :try_start_d6
    const-string/jumbo v5, "DEVICES"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string/jumbo v5, "VERSION"

    const-wide v6, 0x21410eb073857bcL

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 425
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_ea} :catch_c6

    move-result-object v4

    goto :goto_d5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Account [ id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nidentifier: "

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\ntype: "

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 380
    iget v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nexistsOnServer: "

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 383
    iget-boolean v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\ncreationMethod: "

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\naccountState: "

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\ndeviceCount: "

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 392
    iget v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n]"

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()V
    .registers 2

    .prologue
    .line 277
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 278
    return-void
.end method
