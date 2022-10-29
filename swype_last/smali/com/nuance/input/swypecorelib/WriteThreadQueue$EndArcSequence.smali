.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$EndArcSequence;
.super Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndArcSequence"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 276
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 277
    return-void
.end method
