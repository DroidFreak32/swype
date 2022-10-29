.class Lcom/localytics/android/JavaScriptClient$1;
.super Ljava/lang/Object;
.source "JavaScriptClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/JavaScriptClient;->nativeClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/JavaScriptClient;


# direct methods
.method constructor <init>(Lcom/localytics/android/JavaScriptClient;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/localytics/android/JavaScriptClient$1;->this$0:Lcom/localytics/android/JavaScriptClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/localytics/android/JavaScriptClient$1;->this$0:Lcom/localytics/android/JavaScriptClient;

    const/4 v1, 0x3

    const/4 v2, 0x0

    # invokes: Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/localytics/android/JavaScriptClient;->access$000(Lcom/localytics/android/JavaScriptClient;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method
