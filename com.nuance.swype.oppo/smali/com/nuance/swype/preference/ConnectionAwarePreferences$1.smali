.class final Lcom/nuance/swype/preference/ConnectionAwarePreferences$1;
.super Ljava/lang/Object;
.source "ConnectionAwarePreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences;


# direct methods
.method constructor <init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$1;->this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$1;->this$0:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-static {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->access$000(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 48
    return-void
.end method
