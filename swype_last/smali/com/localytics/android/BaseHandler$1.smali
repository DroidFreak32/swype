.class Lcom/localytics/android/BaseHandler$1;
.super Ljava/lang/Object;
.source "BaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/BaseHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/BaseHandler;

.field final synthetic val$fTask:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/util/concurrent/FutureTask;)V
    .registers 3

    .prologue
    .line 92
    iput-object p1, p0, Lcom/localytics/android/BaseHandler$1;->this$0:Lcom/localytics/android/BaseHandler;

    iput-object p2, p0, Lcom/localytics/android/BaseHandler$1;->val$fTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/localytics/android/BaseHandler$1;->val$fTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 97
    return-void
.end method
