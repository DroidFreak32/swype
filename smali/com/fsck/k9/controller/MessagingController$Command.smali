.class final Lcom/fsck/k9/controller/MessagingController$Command;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fsck/k9/controller/MessagingController$Command;",
        ">;"
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field isForeground:Z

.field public listener:Lcom/fsck/k9/controller/MessagingListener;

.field public runnable:Ljava/lang/Runnable;

.field sequence:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4881
    sget-object v0, Lcom/fsck/k9/controller/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4871
    check-cast p1, Lcom/fsck/k9/controller/MessagingController$Command;

    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    iget v1, p1, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    sub-int/2addr v0, v1

    return v0
.end method
