.class Lcom/facebook/rebound/AnimationQueue$1;
.super Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;
.source "AnimationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/AnimationQueue;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/AnimationQueue;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/AnimationQueue;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/rebound/AnimationQueue$1;->this$0:Lcom/facebook/rebound/AnimationQueue;

    invoke-direct {p0}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 4
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue$1;->this$0:Lcom/facebook/rebound/AnimationQueue;

    # invokes: Lcom/facebook/rebound/AnimationQueue;->onFrame(J)V
    invoke-static {v0, p1, p2}, Lcom/facebook/rebound/AnimationQueue;->access$000(Lcom/facebook/rebound/AnimationQueue;J)V

    .line 51
    return-void
.end method
