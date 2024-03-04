.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;
.super Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyQueueItem"
.end annotation


# instance fields
.field public final mKey:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 243
    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 244
    iput p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;->mKey:I

    .line 245
    return-void
.end method
