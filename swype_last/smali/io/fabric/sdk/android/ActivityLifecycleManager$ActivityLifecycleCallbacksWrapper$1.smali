.class final Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

.field final synthetic val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)V
    .registers 3

    .prologue
    .line 85
    iput-object p1, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->this$0:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    iput-object p2, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityCreated$9bb446d(Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    return-void
.end method
