.class Lcom/nuance/connect/service/manager/CategoryManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I)V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "CategoryManager.onLanguageUpdate("

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    array-length v2, p1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v2, v2

    if-ne v2, v1, :cond_2

    aget v2, p1, v0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    aget v4, v4, v0

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    aget v0, p1, v0

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p1, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_0
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$200(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v0, p1, v2}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->languageUpdated([ILjava/util/Set;)V

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v5, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v6, v5

    move v2, v0

    :goto_2
    if-ge v2, v6, :cond_3

    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    array-length v5, p1

    move v2, v0

    :goto_3
    if-ge v2, v5, :cond_1

    aget v6, p1, v2

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v7, v7, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7, v6}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v7

    if-ltz v7, :cond_4

    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v8, v8, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    move v1, v0

    goto :goto_0
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CategoryManager.onLocaleUpdate("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p1, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$200(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

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
