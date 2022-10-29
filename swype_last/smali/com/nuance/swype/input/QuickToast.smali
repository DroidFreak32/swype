.class public Lcom/nuance/swype/input/QuickToast;
.super Ljava/lang/Object;
.source "QuickToast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 42
    sget-object v0, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    .line 47
    :cond_c
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .param p3, "offsetY"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 38
    :goto_6
    return-void

    .line 24
    :cond_7
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getToastContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    .local v0, "toastContext":Landroid/content/Context;
    sget-object v2, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_1a

    .line 26
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    .line 29
    :cond_1a
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$layout;->toast:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/nuance/swype/input/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 31
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget-object v2, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 34
    sget-object v2, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 35
    sget-object v2, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 37
    sget-object v2, Lcom/nuance/swype/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6
.end method
