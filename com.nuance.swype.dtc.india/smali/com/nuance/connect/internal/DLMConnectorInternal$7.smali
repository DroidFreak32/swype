.class Lcom/nuance/connect/internal/DLMConnectorInternal$7;
.super Lcom/nuance/connect/util/FileUtils$CountingIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/connect/util/FileUtils$CountingIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final items:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

.field final synthetic val$wrapped:Lcom/nuance/connect/util/FileUtils$CountingIterator;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/util/FileUtils$CountingIterator;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    iput-object p2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->val$wrapped:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    invoke-direct {p0}, Lcom/nuance/connect/util/FileUtils$CountingIterator;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->items:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->items:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->next:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->val$wrapped:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    invoke-virtual {v0}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->val$wrapped:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    invoke-virtual {v0}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->items:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->val$wrapped:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    invoke-virtual {v2}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->items:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$7;->items:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
