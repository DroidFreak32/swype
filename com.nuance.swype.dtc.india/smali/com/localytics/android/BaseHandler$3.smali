.class Lcom/localytics/android/BaseHandler$3;
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

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$rowsToDelete:I

.field final synthetic val$successful:Z


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/localytics/android/BaseHandler$3;->this$0:Lcom/localytics/android/BaseHandler;

    iput p2, p0, Lcom/localytics/android/BaseHandler$3;->val$rowsToDelete:I

    iput-object p3, p0, Lcom/localytics/android/BaseHandler$3;->val$responseString:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/localytics/android/BaseHandler$3;->val$successful:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/localytics/android/BaseHandler$3;->this$0:Lcom/localytics/android/BaseHandler;

    iget v1, p0, Lcom/localytics/android/BaseHandler$3;->val$rowsToDelete:I

    iget-object v2, p0, Lcom/localytics/android/BaseHandler$3;->val$responseString:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/localytics/android/BaseHandler$3;->val$successful:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseHandler;->_uploadCallback(ILjava/lang/String;Z)V

    .line 148
    return-void
.end method
