.class Lcom/localytics/android/InAppManager$10$2$2;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$10$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/localytics/android/InAppManager$10$2;

.field final synthetic val$displayRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$10$2;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/localytics/android/InAppManager$10$2$2;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$10$2$2;->val$displayRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstDownloaded()V
    .locals 2

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/localytics/android/InAppManager$10$2$2;->this$2:Lcom/localytics/android/InAppManager$10$2;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$10$2;->val$mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/localytics/android/InAppManager$10$2$2;->val$displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2296
    return-void
.end method
