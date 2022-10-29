.class Lcom/localytics/android/ProfileHandler$1;
.super Ljava/lang/Object;
.source "ProfileHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/ProfileHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/ProfileHandler;

.field final synthetic val$attribute:Ljava/lang/String;

.field final synthetic val$customerID:Ljava/lang/String;

.field final synthetic val$database:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/ProfileHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 54
    iput-object p1, p0, Lcom/localytics/android/ProfileHandler$1;->this$0:Lcom/localytics/android/ProfileHandler;

    iput-object p2, p0, Lcom/localytics/android/ProfileHandler$1;->val$attribute:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/ProfileHandler$1;->val$database:Ljava/lang/String;

    iput-object p4, p0, Lcom/localytics/android/ProfileHandler$1;->val$customerID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler$1;->this$0:Lcom/localytics/android/ProfileHandler;

    iget-object v1, p0, Lcom/localytics/android/ProfileHandler$1;->val$attribute:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/ProfileHandler$1;->val$database:Ljava/lang/String;

    iget-object v3, p0, Lcom/localytics/android/ProfileHandler$1;->val$customerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/ProfileHandler;->_setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
