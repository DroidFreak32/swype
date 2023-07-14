.class final Lcom/nuance/swype/preference/LanguagePreference$2;
.super Ljava/lang/Object;
.source "LanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/preference/LanguagePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/preference/LanguagePreference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/preference/LanguagePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/preference/LanguagePreference;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nuance/swype/preference/LanguagePreference$2;->this$0:Lcom/nuance/swype/preference/LanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference$2;->this$0:Lcom/nuance/swype/preference/LanguagePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/preference/LanguagePreference;->onKeyForFocusChanging(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
