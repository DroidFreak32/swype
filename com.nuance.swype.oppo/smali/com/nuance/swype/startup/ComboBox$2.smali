.class final Lcom/nuance/swype/startup/ComboBox$2;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ComboBox;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ComboBox;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/nuance/swype/startup/ComboBox$2;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 244
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$2;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ComboBox;->onCommitEditText()V

    .line 247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
