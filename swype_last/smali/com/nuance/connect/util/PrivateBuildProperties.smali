.class public Lcom/nuance/connect/util/PrivateBuildProperties;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/BuildProps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/PrivateBuildProperties$1;
    }
.end annotation


# static fields
.field private static final IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

.field private static final REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;


# instance fields
.field private final DEVICE_PROPERTIES:[Ljava/lang/String;

.field private USER_PROPERTIES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/ConnectClient;",
            ">;"
        }
    .end annotation
.end field

.field private final criticalProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final customProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultProperties:Lcom/nuance/connect/util/BuildProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->OEM_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/connect/util/PrivateBuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DEVICE_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPER_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/util/PrivateBuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->customProperties:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->criticalProperties:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->context:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/nuance/connect/util/BuildProperties;

    invoke-direct {v0, p1}, Lcom/nuance/connect/util/BuildProperties;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->defaultProperties:Lcom/nuance/connect/util/BuildProperties;

    invoke-static {}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getCriticalProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    iget-object v3, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v3, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->criticalProperties:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :cond_5b
    return-void
.end method

.method private checkUserProperties()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_16

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->COLLECT_USER_PROPERTIES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method


# virtual methods
.method public compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/util/PrivateBuildProperties;->checkUserProperties()Z

    move-result v3

    if-eqz p2, :cond_e

    array-length v0, p2

    if-nez v0, :cond_10

    :cond_e
    iget-object p2, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    :cond_10
    new-instance v4, Ljava/util/HashSet;

    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/nuance/connect/util/PrivateBuildProperties;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v5

    if-eqz p1, :cond_65

    array-length v6, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-ge v1, v6, :cond_65

    aget-object v7, p2, v1

    if-nez v3, :cond_32

    iget-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    :cond_32
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4b

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    :cond_4b
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    :cond_61
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public get(Lcom/nuance/connect/util/BuildProps$BuildProperty;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/util/PrivateBuildProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/PrivateBuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCriticalProperties()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->criticalProperties:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDeviceProperties()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/util/PrivateBuildProperties;->checkUserProperties()Z

    move-result v1

    iget-object v3, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_25

    aget-object v5, v3, v0

    if-nez v1, :cond_1b

    iget-object v6, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    :cond_1b
    invoke-virtual {p0, v5}, Lcom/nuance/connect/util/PrivateBuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    iget-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->customProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_4b
    return-object v2
.end method

.method protected getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->from(Ljava/lang/String;)Lcom/nuance/connect/util/BuildProps$BuildProperty;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->customProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    sget-object v1, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    const/4 v0, 0x0

    goto :goto_e

    :pswitch_1c
    iget-object v1, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->defaultProperties:Lcom/nuance/connect/util/BuildProperties;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public hasRequiredDeviceProperties(Ljava/util/HashMap;)[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/util/PrivateBuildProperties;->checkUserProperties()Z

    move-result v2

    sget-object v3, Lcom/nuance/connect/util/PrivateBuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_27

    aget-object v5, v3, v0

    if-nez v2, :cond_1b

    iget-object v6, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    :cond_1b
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setCustomProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->isKnownProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->customProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lcom/nuance/connect/util/PrivateBuildProperties;->criticalProperties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
