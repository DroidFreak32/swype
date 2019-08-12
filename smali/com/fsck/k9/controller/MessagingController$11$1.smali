.class final Lcom/fsck/k9/controller/MessagingController$11$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$11;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/fsck/k9/controller/MessagingController$11;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$11;)V
    .locals 0

    .prologue
    .line 1843
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$11$1;->this$1:Lcom/fsck/k9/controller/MessagingController$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$11$1;->this$1:Lcom/fsck/k9/controller/MessagingController$11;

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1848
    return-void
.end method
