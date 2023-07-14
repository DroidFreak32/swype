.class final Lcom/google/api/client/util/ArrayMap$Entry;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/google/api/client/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/ArrayMap;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 401
    .local p0, "this":Lcom/google/api/client/util/ArrayMap$Entry;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    iput-object p1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput p2, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    .line 403
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/api/client/util/ArrayMap$Entry;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    if-ne p0, p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v1

    .line 427
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    move v1, v2

    .line 428
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 430
    check-cast v0, Ljava/util/Map$Entry;

    .line 431
    .local v0, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/api/client/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/api/client/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/google/api/client/util/ArrayMap$Entry;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    .line 1101
    if-ltz v1, :cond_0

    iget v2, v0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt v1, v2, :cond_1

    .line 1102
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1105
    :cond_1
    iget-object v0, v0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lcom/google/api/client/util/ArrayMap$Entry;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 419
    .local p0, "this":Lcom/google/api/client/util/ArrayMap$Entry;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcom/google/api/client/util/ArrayMap$Entry;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
