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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->collator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2
    return v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->collator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_6
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_7
    const-string/jumbo v1, ""

    goto :goto_4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    check-cast p2, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->compare(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;)I

    move-result v0

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->category:Ljava/lang/String;

    return-void
.end method
