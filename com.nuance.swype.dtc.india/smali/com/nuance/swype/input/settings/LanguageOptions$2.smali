.class Lcom/nuance/swype/input/settings/LanguageOptions$2;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "LanguageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->onStart()V
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
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptions;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 98
    return-void
.end method
