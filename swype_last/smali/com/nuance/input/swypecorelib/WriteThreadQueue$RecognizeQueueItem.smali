.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;
.super Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizeQueueItem"
.end annotation


# instance fields
.field public final mStartWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "startWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 224
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;->mStartWord:Ljava/lang/CharSequence;

    .line 225
    return-void
.end method
