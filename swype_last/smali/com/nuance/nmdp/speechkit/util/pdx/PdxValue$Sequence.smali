.class public final Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.source "PdxValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sequence"
.end annotation


# instance fields
.field private final _values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>(Ljava/util/List;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    .line 250
    if-eqz p1, :cond_12

    .line 251
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_12
    return-void
.end method

.method private canAdd(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 347
    if-nez p1, :cond_1e

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ignore this add action since the value is null: value["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    .line 353
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public final add(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-direct {v1, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public final add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .registers 3
    .param p1, "value"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->canAdd(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 260
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_b
    return-void
.end method

.method public final add(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->canAdd(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 269
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    invoke-direct {v1, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_10
    return-void
.end method

.method public final add([B)V
    .registers 4
    .param p1, "value"    # [B

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->canAdd(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 286
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;

    invoke-direct {v1, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_10
    return-void
.end method

.method public final get(I)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    return-object v0
.end method

.method public final getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "[\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "itemIndent":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->_values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    .line 322
    .local v3, "val":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v3, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v4, ",\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 327
    .end local v3    # "val":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :cond_42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
