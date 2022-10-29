.class final Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
.super Ljava/lang/Object;
.source "ArrayValueMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/ArrayValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayValue"
.end annotation


# instance fields
.field final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->values:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->componentType:Ljava/lang/Class;

    .line 62
    return-void
.end method


# virtual methods
.method final toArray()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->componentType:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/api/client/util/Types;->toArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
