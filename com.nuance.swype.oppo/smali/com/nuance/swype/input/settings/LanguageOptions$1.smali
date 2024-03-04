.class Lcom/nuance/swype/input/settings/LanguageOptions$1;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "LanguageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$1;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showConnectDialog()V

    .line 77
    return-void
.end method
