.class Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ACCatalogItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;)I
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_37

    :cond_c
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->collator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2e
    return v0

    :cond_2f
    const-string/jumbo v0, ""

    goto :goto_1c

    :cond_33
    const-string/jumbo v1, ""

    goto :goto_2a

    :cond_37
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_47

    const/4 v0, 0x1

    goto :goto_2e

    :cond_47
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_57

    const/4 v0, -0x1

    goto :goto_2e

    :cond_57
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->collator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_67
    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_75
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2e

    :cond_7a
    const-string/jumbo v0, ""

    goto :goto_67

    :cond_7e
    const-string/jumbo v1, ""

    goto :goto_75
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    check-cast p2, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->compare(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;)I

    move-result v0

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    return-void
.end method
