.class final Lcom/nuance/swype/startup/ComboBox$ComboBoxEditText;
.super Landroid/widget/EditText;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComboBoxEditText"
.end annotation


# instance fields
.field private parent:Lcom/nuance/swype/startup/ComboBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/startup/ComboBox;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/nuance/swype/startup/ComboBox;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 510
    iput-object p2, p0, Lcom/nuance/swype/startup/ComboBox$ComboBoxEditText;->parent:Lcom/nuance/swype/startup/ComboBox;

    .line 511
    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 515
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboBoxEditText;->parent:Lcom/nuance/swype/startup/ComboBox;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ComboBox;->onCommitEditText()V

    .line 517
    const/4 v0, 0x0

    .line 519
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
