.class public final Lcom/google/api/client/util/ArrayValueMap;
.super Ljava/lang/Object;
.source "ArrayValueMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    }
.end annotation


# instance fields
.field private final destination:Ljava/lang/Object;

.field private final fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/api/client/util/ArrayValueMap$ArrayValue;",
            ">;"
        }
    .end annotation
.end field

.field private final keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/ArrayValueMap$ArrayValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "destination"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    .line 83
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    .line 93
    iput-object p1, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    .line 121
    .local v0, "arrayValue":Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    .end local v0    # "arrayValue":Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    invoke-direct {v0, p2}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;-><init>(Ljava/lang/Class;)V

    .line 123
    .restart local v0    # "arrayValue":Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    iget-object v1, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    :cond_0
    iget-object v1, v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->componentType:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    .line 2037
    :goto_0
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1075
    iget-object v1, v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 1074
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final setValues()V
    .locals 6

    .prologue
    .line 101
    iget-object v3, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    iget-object v3, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-virtual {v4}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->toArray()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    iget-object v5, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-virtual {v4}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->toArray()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    :cond_1
    return-void
.end method
