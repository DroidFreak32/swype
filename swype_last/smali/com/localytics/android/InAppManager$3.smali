.class Lcom/localytics/android/InAppManager$3;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager;->_inAppMessageTrigger(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppManager;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/localytics/android/InAppManager$3;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$3;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/InAppManager$3;->val$attributes:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstDownloaded()V
    .registers 4

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/localytics/android/InAppManager$3;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v1, p0, Lcom/localytics/android/InAppManager$3;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/InAppManager$3;->val$attributes:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InAppManager;->_inAppMessageTrigger(Ljava/lang/String;Ljava/util/Map;)V

    .line 1044
    return-void
.end method
