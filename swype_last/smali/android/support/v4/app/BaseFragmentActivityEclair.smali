.class abstract Landroid/support/v4/app/BaseFragmentActivityEclair;
.super Landroid/support/v4/app/BaseFragmentActivityDonut;
.source "BaseFragmentActivityEclair.java"


# instance fields
.field mStartedIntentSenderFromFragment:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;-><init>()V

    return-void
.end method

.method static checkForValidRequestCode(I)V
    .registers 3
    .param p0, "requestCode"    # I

    .prologue
    .line 63
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_e

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_e
    return-void
.end method


# virtual methods
.method onBackPressedNotHandled()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;->onBackPressed()V

    .line 56
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/support/v4/app/BaseFragmentActivityEclair;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_a

    .line 44
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 45
    invoke-static {p2}, Landroid/support/v4/app/BaseFragmentActivityEclair;->checkForValidRequestCode(I)V

    .line 48
    :cond_a
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/BaseFragmentActivityDonut;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 50
    return-void
.end method
