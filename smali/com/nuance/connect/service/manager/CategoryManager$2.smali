.class Lcom/nuance/connect/service/manager/CategoryManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I[I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "CategoryManager.onLanguageUpdate("

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ")"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v0, p1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_3

    move v0, v6

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    new-instance v2, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-eqz p2, :cond_7

    array-length v1, p2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    move v0, v6

    :cond_1
    array-length v3, p2

    move v1, v7

    :goto_1
    if-ge v1, v3, :cond_8

    aget v4, p2, v1

    if-nez v0, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v6

    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v0, p1

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v0, v0

    if-ne v0, v6, :cond_4

    aget v0, p1, v7

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    aget v1, v1, v7

    if-eq v0, v1, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v3, v1

    move v0, v7

    :goto_2
    if-ge v0, v3, :cond_5

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    array-length v3, p1

    move v1, v7

    move v0, v7

    :goto_3
    if-ge v1, v3, :cond_0

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_8

    move v0, v6

    :cond_8
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v0, p1, v2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->languageUpdated([ILjava/util/Set;)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "CategoryManager.onLocaleUpdate("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p1, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->localeUpdated(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    return-void
.end method
