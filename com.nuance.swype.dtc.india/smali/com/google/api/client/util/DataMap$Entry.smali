.class final Lcom/google/api/client/util/DataMap$Entry;
.super Ljava/lang/Object;
.source "DataMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/DataMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final fieldInfo:Lcom/google/api/client/util/FieldInfo;

.field private fieldValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/api/client/util/DataMap;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/DataMap;Lcom/google/api/client/util/FieldInfo;Ljava/lang/Object;)V
    .locals 1
    .param p2, "fieldInfo"    # Lcom/google/api/client/util/FieldInfo;
    .param p3, "fieldValue"    # Ljava/lang/Object;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/api/client/util/DataMap$Entry;->this$0:Lcom/google/api/client/util/DataMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/google/api/client/util/DataMap$Entry;->fieldInfo:Lcom/google/api/client/util/FieldInfo;

    .line 1127
    invoke-static {p3}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/google/api/client/util/DataMap$Entry;->fieldValue:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/google/api/client/util/DataMap$Entry;->fieldInfo:Lcom/google/api/client/util/FieldInfo;

    .line 1153
    iget-object v0, v1, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 206
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/util/DataMap$Entry;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v1, v1, Lcom/google/api/client/util/DataMap;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 2112
    iget-boolean v1, v1, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-ne p0, p1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    move v1, v2

    .line 234
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 236
    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    .local v0, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-direct {p0}, Lcom/google/api/client/util/DataMap$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/api/client/util/DataMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/api/client/util/DataMap$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$Entry;->fieldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/api/client/util/DataMap$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/util/DataMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/api/client/util/DataMap$Entry;->fieldValue:Ljava/lang/Object;

    .line 2127
    .local v0, "oldValue":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    iput-object v1, p0, Lcom/google/api/client/util/DataMap$Entry;->fieldValue:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/google/api/client/util/DataMap$Entry;->fieldInfo:Lcom/google/api/client/util/FieldInfo;

    iget-object v2, p0, Lcom/google/api/client/util/DataMap$Entry;->this$0:Lcom/google/api/client/util/DataMap;

    iget-object v2, v2, Lcom/google/api/client/util/DataMap;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    return-object v0
.end method
