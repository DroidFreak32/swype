.class public final Lcom/nuance/swype/util/CollectionUtils$FiniteSet;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final list:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/nuance/swype/util/CollectionUtils$FiniteSet;, "Lcom/nuance/swype/util/CollectionUtils$FiniteSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    .line 109
    return-void
.end method
