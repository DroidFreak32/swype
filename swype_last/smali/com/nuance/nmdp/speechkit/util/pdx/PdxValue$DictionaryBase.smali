.class public abstract Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.source "PdxValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DictionaryBase"
.end annotation


# instance fields
.field private final _values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;I)V
    .registers 4
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    invoke-direct {p0, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    .line 125
    if-eqz p1, :cond_11

    .line 126
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    :cond_11
    return-void
.end method

.method private canPut(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 221
    if-eqz p1, :cond_4

    if-nez p2, :cond_2b

    .line 223
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ignore this put action since either the key or the value is null: key["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] value["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    .line 227
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x1

    goto :goto_2a
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    return-object v0
.end method

.method public getEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-direct {v0, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->canPut(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 153
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_15
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->canPut(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_b
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->canPut(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 144
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_10
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->canPut(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 162
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;-><init>([B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_10
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "itemIndent":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->_values:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 190
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string/jumbo v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v4, ",\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 200
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    :cond_6f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
