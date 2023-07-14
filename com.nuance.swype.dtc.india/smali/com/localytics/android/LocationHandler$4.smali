.class Lcom/localytics/android/LocationHandler$4;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationHandler;

.field final synthetic val$config:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$4;->this$0:Lcom/localytics/android/LocationHandler;

    iput-object p2, p0, Lcom/localytics/android/LocationHandler$4;->val$config:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$4;->this$0:Lcom/localytics/android/LocationHandler;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler$4;->val$config:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/localytics/android/LocationHandler;->access$100(Lcom/localytics/android/LocationHandler;Ljava/util/Map;)V

    .line 182
    return-void
.end method
