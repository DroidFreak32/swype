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
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    if-nez p1, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->getFlavorNameForType(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFlavorNameForType(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    if-eq p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedLanguageModels()Ljava/util/List;
    .locals 8
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

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v3

    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v6

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getFlavors()[Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    sget-object v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v5

    if-le v0, v5, :cond_4

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .locals 5

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ordinal()I

    move-result v0

    if-le v1, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->values:[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v0

    return v0
.end method

.method public getXt9LanguageId()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v0

    return v0
.end method

.method public getXt9LanguageIds()[I
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageIds()[I

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [I

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public installedFlavor()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$700(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public installedType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$600(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$600(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewerVersionAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreinstalled()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$500(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

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

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "updateWithInfo null"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    :goto_1
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->infos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getFlavor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->defaultInfo:Lcom/nuance/connect/api/LanguageService$LdbInfo;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
