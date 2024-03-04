.class public Lcom/nuance/swype/input/InputMethodToast;
.super Ljava/lang/Object;
.source "InputMethodToast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 37
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 17
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getToastContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, "toastContext":Landroid/content/Context;
    sget-object v2, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 19
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    .line 22
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$layout;->toast:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 23
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/nuance/swype/input/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 24
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    sget-object v2, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 27
    sget-object v2, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 28
    sget-object v2, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 30
    sget-object v2, Lcom/nuance/swype/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method
