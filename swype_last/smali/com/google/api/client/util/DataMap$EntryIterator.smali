.class final Lcom/google/api/client/util/DataMap$EntryIterator;
.super Ljava/lang/Object;
.source "DataMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/DataMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private currentFieldInfo:Lcom/google/api/client/util/FieldInfo;

.field private isComputed:Z

.field private isRemoved:Z

.field private nextFieldInfo:Lcom/google/api/client/util/FieldInfo;

.field private nextFieldValue:Ljava/lang/Object;

.field private nextKeyIndex:I

.field final synthetic this$0:Lcom/google/api/client/util/DataMap;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/DataMap;)V
    .registers 3

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->this$0:Lcom/google/api/client/util/DataMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextKeyIndex:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-boolean v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->isComputed:Z

    if-nez v0, :cond_45

    .line 151
    iput-boolean v1, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->isComputed:Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldValue:Ljava/lang/Object;

    .line 153
    :goto_a
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldValue:Ljava/lang/Object;

    if-nez v0, :cond_45

    iget v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextKeyIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextKeyIndex:I

    iget-object v2, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v2, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v2, v2, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 154
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v0, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v0, v0, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v0, v0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    iget v3, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextKeyIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldInfo:Lcom/google/api/client/util/FieldInfo;

    .line 155
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldInfo:Lcom/google/api/client/util/FieldInfo;

    iget-object v2, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v2, Lcom/google/api/client/util/DataMap;->object:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldValue:Ljava/lang/Object;

    goto :goto_a

    .line 158
    :cond_45
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldValue:Ljava/lang/Object;

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_4a
    return v0

    :cond_4b
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    .line 1162
    invoke-virtual {p0}, Lcom/google/api/client/util/DataMap$EntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1163
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1165
    :cond_e
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldInfo:Lcom/google/api/client/util/FieldInfo;

    iput-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->currentFieldInfo:Lcom/google/api/client/util/FieldInfo;

    .line 1166
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldValue:Ljava/lang/Object;

    .line 1167
    iput-boolean v1, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->isComputed:Z

    .line 1168
    iput-boolean v1, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->isRemoved:Z

    .line 1169
    iput-object v2, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldInfo:Lcom/google/api/client/util/FieldInfo;

    .line 1170
    iput-object v2, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->nextFieldValue:Ljava/lang/Object;

    .line 1171
    new-instance v1, Lcom/google/api/client/util/DataMap$Entry;

    iget-object v2, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v3, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->currentFieldInfo:Lcom/google/api/client/util/FieldInfo;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/client/util/DataMap$Entry;-><init>(Lcom/google/api/client/util/DataMap;Lcom/google/api/client/util/FieldInfo;Ljava/lang/Object;)V

    .line 117
    return-object v1
.end method

.method public final remove()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->currentFieldInfo:Lcom/google/api/client/util/FieldInfo;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->isRemoved:Z

    if-nez v0, :cond_1a

    move v0, v1

    .line 1081
    :goto_a
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkState(Z)V

    .line 176
    iput-boolean v1, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->isRemoved:Z

    .line 177
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->currentFieldInfo:Lcom/google/api/client/util/FieldInfo;

    iget-object v1, p0, Lcom/google/api/client/util/DataMap$EntryIterator;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v1, v1, Lcom/google/api/client/util/DataMap;->object:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    return-void

    .line 175
    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method
