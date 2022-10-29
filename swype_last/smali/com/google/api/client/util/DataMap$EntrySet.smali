.class final Lcom/google/api/client/util/DataMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "DataMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/DataMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/util/DataMap;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/DataMap;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 6

    .prologue
    .line 100
    iget-object v2, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v2, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v2, v2, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v2, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v2, v1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v3, v3, Lcom/google/api/client/util/DataMap;->object:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 103
    .end local v1    # "name":Ljava/lang/String;
    :cond_27
    return-void
.end method

.method public final isEmpty()Z
    .registers 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v2, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v2, v2, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v2, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v2, v1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v3, v3, Lcom/google/api/client/util/DataMap;->object:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 109
    const/4 v2, 0x0

    .line 112
    .end local v1    # "name":Ljava/lang/String;
    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x1

    goto :goto_29
.end method

.method public final iterator()Lcom/google/api/client/util/DataMap$EntryIterator;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lcom/google/api/client/util/DataMap$EntryIterator;

    iget-object v1, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    invoke-direct {v0, v1}, Lcom/google/api/client/util/DataMap$EntryIterator;-><init>(Lcom/google/api/client/util/DataMap;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/api/client/util/DataMap$EntrySet;->iterator()Lcom/google/api/client/util/DataMap$EntryIterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 6

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "result":I
    iget-object v3, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v3, v3, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v3, v3, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v3, v3, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v3, v1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/util/DataMap$EntrySet;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v4, v4, Lcom/google/api/client/util/DataMap;->object:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 95
    .end local v1    # "name":Ljava/lang/String;
    :cond_2c
    return v2
.end method
