.class public final Lcom/google/api/client/util/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;-><init>(B)V

    iput-object v0, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->holderHead:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    .line 92
    iget-object v0, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->holderHead:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->holderTail:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    .line 99
    iput-object p1, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->className:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/Objects$ToStringHelper;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 118
    .line 2144
    new-instance v1, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;-><init>(B)V

    .line 2145
    iget-object v0, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->holderTail:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    iput-object v1, v0, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    iput-object v1, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->holderTail:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    .line 1151
    iput-object p2, v1, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 3127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1152
    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 124
    iget-boolean v2, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->omitNullValues:Z

    .line 125
    .local v2, "omitNullValuesSnapshot":Z
    const-string/jumbo v1, ""

    .line 126
    .local v1, "nextSeparator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/api/client/util/Objects$ToStringHelper;->holderHead:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    iget-object v3, v4, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    .line 128
    .local v3, "valueHolder":Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;
    :goto_1c
    if-eqz v3, :cond_41

    .line 130
    if-eqz v2, :cond_24

    iget-object v4, v3, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_3e

    .line 131
    :cond_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, ", "

    .line 134
    iget-object v4, v3, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 135
    iget-object v4, v3, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_39
    iget-object v4, v3, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    :cond_3e
    iget-object v3, v3, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

    goto :goto_1c

    .line 140
    :cond_41
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
