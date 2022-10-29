.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;
.super Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextQueueItem"
.end annotation


# instance fields
.field public final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 253
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 254
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    .line 255
    return-void
.end method
