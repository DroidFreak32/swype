.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ACLanguageDbInfoImpl"
.end annotation


# instance fields
.field private volatile defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

.field private final infos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/LanguageService$LdbInfo;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    if-nez p1, :cond_2b

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ACLanguageDbInfoImpl null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v3, v1, v3

    const/4 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/api/LanguageService$LdbInfo;-><init>([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    :cond_2b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getFlavorNameForType(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFlavorNameForType(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_2d

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    if-ne p1, v0, :cond_a

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    if-eq p1, v0, :cond_2d

    :cond_a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedLanguageModels()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v2

    if-eqz v0, :cond_33

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getInstalledLanguageModel(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    invoke-static {v0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v3

    array-length v4, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v4, :cond_33

    aget-object v5, v2, v0

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v6

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v7

    if-ge v6, v7, :cond_33

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    :goto_3a
    return-object v0

    :cond_3b
    move-object v0, v1

    goto :goto_3a
.end method

.method public getFlavors()[Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_21
    sget-object v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v5

    if-le v0, v5, :cond_56

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v0, 0x1

    :goto_38
    if-nez v0, :cond_b

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_41
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    :goto_48
    return-object v0

    :cond_49
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_48

    :cond_56
    move v0, v1

    goto :goto_38
.end method

.method public getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 6

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v0

    if-le v1, v0, :cond_4e

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_31

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    sget-object v4, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b

    :cond_4e
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v0

    return v0
.end method

.method public getXt9LanguageId()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v0

    return v0
.end method

.method public getXt9LanguageIds()[I
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageIds()[I

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1e
    if-ge v0, v5, :cond_c

    aget v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2c
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [I

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_36

    :cond_4c
    return-object v3
.end method

.method public installedFlavor()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getInstalledFlavor(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$700(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public installedType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getInstalledLanguageModel(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public isDownloaded()Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$600(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isInstalled()Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isDownloaded(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$600(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isNewerVersionAvailable()Z
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v2

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isNewerVersionAvailable(II)Z
    invoke-static {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;II)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public isPreinstalled()Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isPreinstalled(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "ACLanguageDbInfo id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getXt9LanguageId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getXt9LanguageIds()[I

    move-result-object v2

    const-string/jumbo v0, ", ids=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_31

    if-eqz v0, :cond_29

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_31
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    Display Name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    Country Code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    All Types: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    All Flavors: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getFlavors()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    Pre-installed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->isPreinstalled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", isDownloaded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->isDownloaded()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->installedType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", flavor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->installedFlavor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    Newer version available: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->isNewerVersionAvailable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    Version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n    Enhanced language models: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getEnhancedLanguageModels()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateWithInfo(Lcom/nuance/connect/api/LanguageService$LdbInfo;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_10

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "updateWithInfo null"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v3

    if-eq v2, v3, :cond_32

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    :goto_24
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    goto :goto_f

    :cond_32
    move v0, v1

    goto :goto_24
.end method
