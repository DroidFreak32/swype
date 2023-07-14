.class Lcom/nuance/swype/input/settings/LanguageUpdate$3;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$3;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method
