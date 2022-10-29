.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;
.super Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArcQueueItem"
.end annotation


# instance fields
.field public final mArc1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public final mArc2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public final mStartWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 6
    .param p3, "startWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "arc1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "arc2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 212
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    .line 213
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mArc2:Ljava/util/List;

    .line 214
    iput-object p3, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mStartWord:Ljava/lang/CharSequence;

    .line 215
    return-void
.end method
