.class final Lcom/nuance/swype/util/LruWordCache$1;
.super Ljava/util/LinkedHashMap;
.source "LruWordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/util/LruWordCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/util/LruWordCache;

.field final synthetic val$maxWords:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/util/LruWordCache;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/util/LruWordCache;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/util/LruWordCache$1;->this$0:Lcom/nuance/swype/util/LruWordCache;

    iput p2, p0, Lcom/nuance/swype/util/LruWordCache$1;->val$maxWords:I

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/util/LruWordCache$1;->size()I

    move-result v0

    iget v1, p0, Lcom/nuance/swype/util/LruWordCache$1;->val$maxWords:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
