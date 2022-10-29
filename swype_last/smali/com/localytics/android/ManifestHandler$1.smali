.class Lcom/localytics/android/ManifestHandler$1;
.super Ljava/lang/Object;
.source "ManifestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/ManifestHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/ManifestHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/ManifestHandler;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/localytics/android/ManifestHandler$1;->this$0:Lcom/localytics/android/ManifestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler$1;->this$0:Lcom/localytics/android/ManifestHandler;

    invoke-virtual {v0}, Lcom/localytics/android/ManifestHandler;->_locationUpdated()V

    .line 134
    return-void
.end method
