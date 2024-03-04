.class public final Lcom/nuance/swype/util/LruWordCache;
.super Ljava/lang/Object;
.source "LruWordCache.java"


# instance fields
.field public words:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxWords"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/nuance/swype/util/LruWordCache$1;

    invoke-direct {v0, p1}, Lcom/nuance/swype/util/LruWordCache$1;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    .line 22
    return-void
.end method
