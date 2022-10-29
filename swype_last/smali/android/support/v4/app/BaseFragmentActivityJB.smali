.class abstract Landroid/support/v4/app/BaseFragmentActivityJB;
.super Landroid/support/v4/app/BaseFragmentActivityHoneycomb;
.source "BaseFragmentActivityJB.java"


# instance fields
.field mStartedActivityFromFragment:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/support/v4/app/BaseFragmentActivityJB;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_a

    .line 44
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 45
    invoke-static {p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->checkForValidRequestCode(I)V

    .line 48
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/support/v4/app/BaseFragmentActivityJB;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_a

    .line 58
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 59
    invoke-static {p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->checkForValidRequestCode(I)V

    .line 62
    :cond_a
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 64
    return-void
.end method
