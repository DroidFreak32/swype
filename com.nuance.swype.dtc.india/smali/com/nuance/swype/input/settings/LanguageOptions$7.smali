.class Lcom/nuance/swype/input/settings/LanguageOptions$7;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$7;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$7;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptions;->onKeyForFocusChanging(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
