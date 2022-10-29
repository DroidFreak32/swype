.class final Landroid/support/v4/app/ActivityCompat21;
.super Ljava/lang/Object;
.source "ActivityCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;,
        Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    }
.end annotation


# direct methods
.method static createCallback(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "newListener":Landroid/app/SharedElementCallback;
    if-eqz p0, :cond_8

    .line 80
    new-instance v0, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;

    .end local v0    # "newListener":Landroid/app/SharedElementCallback;
    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    .line 82
    .restart local v0    # "newListener":Landroid/app/SharedElementCallback;
    :cond_8
    return-object v0
.end method
