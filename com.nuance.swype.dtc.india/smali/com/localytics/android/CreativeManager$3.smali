.class Lcom/localytics/android/CreativeManager$3;
.super Ljava/lang/Object;
.source "CreativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/CreativeManager;->onError(Lcom/localytics/android/ICreativeDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/CreativeManager;

.field final synthetic val$task:Lcom/localytics/android/ICreativeDownloadTask;


# direct methods
.method constructor <init>(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/localytics/android/CreativeManager$3;->this$0:Lcom/localytics/android/CreativeManager;

    iput-object p2, p0, Lcom/localytics/android/CreativeManager$3;->val$task:Lcom/localytics/android/ICreativeDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/localytics/android/CreativeManager$3;->this$0:Lcom/localytics/android/CreativeManager;

    iget-object v1, p0, Lcom/localytics/android/CreativeManager$3;->val$task:Lcom/localytics/android/ICreativeDownloadTask;

    invoke-static {v0, v1}, Lcom/localytics/android/CreativeManager;->access$000(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V

    .line 196
    return-void
.end method
