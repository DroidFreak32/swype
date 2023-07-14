.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;
.super Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharQueueItem"
.end annotation


# instance fields
.field public final mChar:C


# direct methods
.method public constructor <init>(C)V
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 233
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 234
    iput-char p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 235
    return-void
.end method
