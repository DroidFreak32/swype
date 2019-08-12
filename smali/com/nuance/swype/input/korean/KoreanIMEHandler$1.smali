.class Lcom/nuance/swype/input/korean/KoreanIMEHandler$1;
.super Ljava/lang/Object;
.source "KoreanIMEHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/korean/KoreanIMEHandler;->showInputModeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$1;->this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
