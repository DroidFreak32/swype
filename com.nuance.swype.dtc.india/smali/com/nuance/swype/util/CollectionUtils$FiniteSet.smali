.class public final Lcom/nuance/swype/util/CollectionUtils$FiniteSet;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiniteSet"
.end annotation

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

.field public final max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/nuance/swype/util/CollectionUtils$FiniteSet;, "Lcom/nuance/swype/util/CollectionUtils$FiniteSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->max:I

    .line 61
    return-void
.end method
