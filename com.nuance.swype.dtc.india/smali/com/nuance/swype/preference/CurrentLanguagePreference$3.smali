.class final Lcom/nuance/swype/preference/CurrentLanguagePreference$3;
.super Ljava/lang/Object;
.source "CurrentLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/preference/CurrentLanguagePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/preference/CurrentLanguagePreference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/preference/CurrentLanguagePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/preference/CurrentLanguagePreference;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference$3;->this$0:Lcom/nuance/swype/preference/CurrentLanguagePreference;

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
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference$3;->this$0:Lcom/nuance/swype/preference/CurrentLanguagePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->onKeyForFocusChanging(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
